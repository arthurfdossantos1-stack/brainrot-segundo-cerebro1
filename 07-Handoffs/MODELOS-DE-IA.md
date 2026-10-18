---
tags: [ia, ferramentas]
---
# Como utilizar o vault em outras IAs

| IA | Como receber contexto | Como devolver alterações |
|---|---|---|
| ChatGPT | GitHub autorizado ou Markdown anexado | Atualizar repo quando permitido |
| Claude web | Repositório autorizado ou arquivos anexados | Atualizar quando permitido, senão devolver Markdown |
| Claude Code | Diretório Git + CLAUDE.md + AGENTS.md | Commit/PR com registro de sessão |
| Gemini web | Contexto anexo ou colado | Devolver arquivos alterados |
| Gemini CLI | Diretório Git + GEMINI.md | Versionar alterações |
| Copilot | .github/copilot-instructions.md | Alterar código com revisão |

Cada conta depende de acesso real aos arquivos. **Não existe memória automática entre serviços.**
Nunca copie tokens pessoais entre agentes.
