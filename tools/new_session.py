#!/usr/bin/env python3
"""Cria uma nota de sessão e evita sobrescrever registros anteriores."""
from __future__ import annotations

import argparse
import datetime
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SESSIONS = ROOT / "06-Sessoes"

def slugify(s: str) -> str:
    import unicodedata
    s = unicodedata.normalize("NFKD", s)
    s = "".join(c for c in s if not unicodedata.combining(c))
    return re.sub(r"[^a-z0-9]+", "-", s.lower()).strip("-")[:48] or "sessao"

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--agent", required=True, help="IA ou pessoa responsável")
    parser.add_argument("--task", required=True, help="Tema da sessão")
    parser.add_argument("--date", default=datetime.date.today().isoformat())
    args = parser.parse_args()
    date = datetime.date.fromisoformat(args.date)
    SESSIONS.mkdir(parents=True, exist_ok=True)
    path = SESSIONS / f"{date.isoformat()}-{slugify(args.task)}.md"
    if path.exists():
        raise SystemExit(f"Arquivo já existe; nenhuma alteração feita: {path}")
    body = f"""---
data: {date.isoformat()}
agente: "{args.agent.replace('"', "'")}"
status: em-andamento
tags: [sessao]
---
# Sessão — {date.isoformat()} — {args.task}

## Objetivo solicitado
{args.task}

## Contexto inspecionado
- [ ] AGENTS.md, estado, handoff e backlog
- [ ] Código/branch/commit (se disponível)

## Alterações reais
_Preencher somente depois de executar._

## Testes executados
_Não informados._

## O que NÃO foi feito
_Preencher._

## Erros, riscos e bloqueios
_Preencher._

## Decisões aprovadas
_Nenhuma registrada nesta nota._

## Próximo passo
_Preencher antes de encerrar._
"""
    path.write_text(body, encoding="utf-8")
    print(f"Nota criada: {path.relative_to(ROOT)}")
    print("Lembrete: ao encerrar, atualizar backlog, estado atual e handoff.")

if __name__ == "__main__":
    main()
