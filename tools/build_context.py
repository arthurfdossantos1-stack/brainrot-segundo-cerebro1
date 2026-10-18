#!/usr/bin/env python3
"""Gera um único Markdown portátil para transferir contexto para outras IAs."""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OUTPUT = ROOT / "CONTEXTO-PORTATIL.md"
SOURCES = (
    "AGENTS.md",
    "00-Painel/Estado-Atual.md",
    "07-Handoffs/HANDOFF-ATUAL.md",
    "04-Planejamento/Backlog.md",
    "01-Produto/Perguntas-Abertas.md",
    "05-Decisoes/DEC-0001-Conceito-Base.md",
    "00-Fonte/PROJETO_BRAINROT.md",
    "07-Handoffs/PROTOCOLO-DE-CONTINUIDADE.md",
    "07-Handoffs/PROMPT-NOVA-IA.md",
)
HEADER = """# CONTEXTO PORTÁTIL — ÁRVORES E BRAINROTS

> Gerado a partir dos arquivos de contexto do vault. NÃO editar este
> documento manualmente. Altere os arquivos de origem e execute
> `python tools/build_context.py`.
>
> O conteúdo descreve planejamento: **não presume código implementado**.
> É um snapshot; valide o SHA, o código e o handoff atuais antes de programar.

## Índice de fontes incluídas
""" + "\n".join(f"- `{s}`" for s in SOURCES) + "\n"

def generate() -> str:
    parts = [HEADER]
    for rel in SOURCES:
        path = ROOT / rel
        if not path.exists():
            raise FileNotFoundError(f"Falta o arquivo de origem: {rel}")
        parts.append(f"\n---\n\n## Arquivo de origem: `{rel}`\n\n")
        parts.append(path.read_text(encoding="utf-8").rstrip() + "\n")
    return "\n".join(parts).rstrip() + "\n"

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true",
                        help="Falha se o arquivo gerado estiver desatualizado.")
    args = parser.parse_args()
    generated = generate()
    if args.check:
        if not OUTPUT.exists() or OUTPUT.read_text(encoding="utf-8") != generated:
            print("ERRO: CONTEXTO-PORTATIL.md desatualizado.")
            sys.exit(1)
        print("OK — contexto portátil está atualizado.")
    else:
        OUTPUT.write_text(generated, encoding="utf-8")
        print(f"Arquivo gerado: {OUTPUT.relative_to(ROOT)}")
