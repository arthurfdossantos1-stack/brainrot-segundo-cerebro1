#!/usr/bin/env python3
"""Valida arquivos obrigatórios, links wiki e configurações JSON do vault."""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
REQUIRED = (
    "INICIO.md",
    "AGENTS.md",
    "README.md",
    "00-Fonte/PROJETO_BRAINROT.md",
    "00-Painel/Estado-Atual.md",
    "04-Planejamento/Backlog.md",
    "05-Decisoes/DEC-0001-Conceito-Base.md",
    "07-Handoffs/HANDOFF-ATUAL.md",
    "07-Handoffs/PROMPT-NOVA-IA.md",
    "CONTEXTO-PORTATIL.md",
)
WIKI_RE = re.compile(r"\[\[([^\[\]\n]+)\]\]")
SECRET_HINT = re.compile(
    r"(?:gh[pousr]_[A-Za-z0-9_]{20,}|github_pat_[A-Za-z0-9_]{20,})"
)

def markdown_paths():
    return sorted(ROOT.rglob("*.md"))

def find_link_target(raw: str, path: Path, all_files: list[Path]) -> bool:
    text = raw.split("|", 1)[0].split("#", 1)[0].strip()
    if not text:
        return True  # Link para uma seção no mesmo documento.
    if text.startswith(("http:", "https:")):
        return True
    base = text.removesuffix(".md").replace("\\", "/")
    options = [ROOT / (base + ".md"), path.parent / (base + ".md")]
    if any(p.is_file() for p in options):
        return True
    # Obsidian também permite links pelo nome do arquivo.
    matches = [p for p in all_files if p.stem == Path(base).name]
    return len(matches) == 1

def validate() -> list[str]:
    errors: list[str] = []
    for rel in REQUIRED:
        if not (ROOT / rel).is_file():
            errors.append(f"Arquivo obrigatório ausente: {rel}")
    paths = markdown_paths()
    for path in paths:
        content = path.read_text(encoding="utf-8")
        rel = path.relative_to(ROOT)
        for match in WIKI_RE.finditer(content):
            if not find_link_target(match.group(1), path, paths):
                errors.append(f"Link quebrado: {rel} -> [[{match.group(1)}]]")
        if SECRET_HINT.search(content):
            errors.append(f"Possível token sensível em: {rel}")
    for rel in (".obsidian/app.json", ".obsidian/core-plugins.json"):
        path = ROOT / rel
        if not path.exists():
            errors.append(f"Configuração ausente: {rel}")
        else:
            try:
                json.loads(path.read_text(encoding="utf-8"))
            except json.JSONDecodeError as exc:
                errors.append(f"JSON inválido: {rel}: {exc}")
    return errors

if __name__ == "__main__":
    failures = validate()
    if failures:
        print("\n".join("ERRO: " + problem for problem in failures))
        sys.exit(1)
    print(f"OK — {len(markdown_paths())} documentos Markdown; links e JSON válidos.")
