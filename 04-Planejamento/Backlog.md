
---
status: aberto
tags: [backlog, tarefas]
---
# Backlog do jogo

Estados válidos: `a-fazer`, `em-andamento`, `bloqueado`, `em-revisao`, `feito`.
Revisado em 19/10/2026. Nenhum sistema foi validado no projeto ao vivo correto.

| ID | Prioridade | Tarefa | Estado | Dependência |
|---|---|---|---|---|
| BR-001 | P0 | Definir MVP e limites de escopo | bloqueado | Q12: proposta ainda não aprovada |
| BR-002 | P0 | Identificar/criar repositório do código Roblox | bloqueado | Confirmar projeto 116391348137209 e conectar código real; investigação registrada |
| BR-003 | P0 | Definir regras de árvores e corte | a-fazer | Q02, Q03 |
| BR-004 | P0 | Definir armazenamento de madeira | a-fazer | Q04 |
| BR-005 | P0 | Definir produção e eclosão de ovos | a-fazer | Q05 |
| BR-006 | P0 | Definir Brainrots e renda | a-fazer | Q06 |
| BR-007 | P1 | Prototipar ciclo jogável de ponta a ponta | bloqueado | BR-001 a BR-006 |
| BR-008 | P1 | Definir melhorias e progressão | a-fazer | Q08 |
| BR-009 | P1 | Definir UI e testes mobile | a-fazer | Q10 |
| BR-010 | P2 | Decidir a existência do roubo | a-fazer | Q07 |
| BR-011 | P2 | Definir mapa, visual e animações | a-fazer | Q09 |
| BR-012 | P1 | Testar e documentar o primeiro loop | bloqueado | BR-007 |
| BR-013 | P0 | Recuperar estado da UI anterior e retomar correção interrompida | bloqueado | Confirmar vínculo com o jogo anterior e abrir o lugar correto; BR-002 |

## Progresso verificável — 19/10/2026
- BR-002: inspecionados GitHub, histórico local e MCPs. Repositório do jogo não
  identificado. Studio atual: Place1 sem scripts; projeto histórico tem outro ID.
- BR-013: recuperação parcial concluída, com dez snapshots, manifesto e compilação
  sintática 10/10. Tema, loja e HUD têm versões históricas posteriores às locais.
  Correção final de ícones e testes no projeto real continuam pendentes.
- BR-001/BR-003 a BR-006: nenhuma regra numérica ou aprovação de MVP foi inventada.
- Validação da memória: corrigido exemplo de link inexistente e regenerado contexto.

Evidências e próxima ação: [[03-Tecnico/Recuperacao-UI-2026-10-19]] e
[[06-Sessoes/2026-10-19-recuperacao-contexto-e-ui]].

## Política de conclusão
Uma tarefa só vai para `feito` quando há:
- Artefato verificável (código, documento de decisão ou desenho aprovado).
- Revisão do escopo e dos critérios aceitos.
- Evidência específica, por exemplo commit SHA e teste.
- Atualização de [[00-Painel/Estado-Atual]] e [[07-Handoffs/HANDOFF-ATUAL]].

**Criar uma nota com template [[09-Templates/Tarefa]] para tarefas detalhadas.**
