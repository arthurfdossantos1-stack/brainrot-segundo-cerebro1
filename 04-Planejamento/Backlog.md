
---
status: aberto
tags: [backlog, tarefas]
---
# Backlog do jogo

Estados válidos: `a-fazer`, `em-andamento`, `bloqueado`, `em-revisao`, `feito`.
**Todas as tarefas abaixo estão inicialmente em planejamento.**

| ID | Prioridade | Tarefa | Estado | Dependência |
|---|---|---|---|---|
| BR-001 | P0 | Definir MVP e limites de escopo | a-fazer | Q12 |
| BR-002 | P0 | Identificar/criar repositório do código Roblox | a-fazer | Q11 |
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

## Política de conclusão
Uma tarefa só vai para `feito` quando há:
- Artefato verificável (código, documento de decisão ou desenho aprovado).
- Revisão do escopo e dos critérios aceitos.
- Evidência específica, por exemplo commit SHA e teste.
- Atualização de [[00-Painel/Estado-Atual]] e [[07-Handoffs/HANDOFF-ATUAL]].

**Criar uma nota com template [[09-Templates/Tarefa]] para tarefas detalhadas.**
