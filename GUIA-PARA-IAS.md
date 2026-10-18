# Guia para IAs — leia primeiro

Este repositório é a memória compartilhada do projeto Roblox de árvores e Brainrots. Não presuma conhecer conversas anteriores de outras contas.

## Ordem de leitura
1. `AGENTS.md`: regras gerais de trabalho.
2. `00-Painel/Estado-Atual.md`: situação atual.
3. `07-Handoffs/HANDOFF-ATUAL.md`: onde a sessão anterior parou.
4. `04-Planejamento/Backlog.md`: tarefas e prioridades.
5. `00-Fonte/PROJETO_BRAINROT.md`: conceito inicial do jogo.
6. Decisões em `05-Decisoes/` e fichas pertinentes em `02-Sistemas/`.

## Entenda o projeto
O jogador corta árvores, obtém madeira, fabrica ovos em sua base, choca Brainrots, ganha dinheiro com eles e melhora sua progressão. Esta descrição é o conceito, não uma confirmação de que há código pronto. Outros detalhes como chances, preços, roubo e visual seguem em aberto enquanto não forem aprovados.

## Regras para trabalhar
- Verifique os fatos no código e nos commits antes de dizer que algo foi implementado.
- Diferencie decisões confirmadas, propostas e tarefas pendentes.
- Respeite o escopo pedido pelo usuário; não acrescente funcionalidades por conta própria.
- Se precisar alterar o jogo, localize primeiro seu repositório de código real. Este repositório é o Segundo Cérebro.
- Faça mudanças pequenas, explique como foram verificadas e evite edições simultâneas com outra IA.
- Não coloque informações secretas no repositório.

## Sempre que encerrar
1. Atualize a documentação dos sistemas e decisões afetadas.
2. Atualize `04-Planejamento/Backlog.md`.
3. Crie uma nota factual em `06-Sessoes/`.
4. Atualize `00-Painel/Estado-Atual.md`.
5. Atualize `07-Handoffs/HANDOFF-ATUAL.md` informando o próximo passo exato.
6. Publique no GitHub se tiver permissão de escrita. Caso contrário, entregue as notas prontas ao usuário e não afirme que sincronizou.

## Quando mudar de IA
A nova conta deve ler este guia e o handoff. Se não tiver acesso ao GitHub privado, receba `CONTEXTO-PORTATIL.md` como anexo, junto dos arquivos relevantes. O acesso e a sincronização não são automáticos entre contas.

## Resposta final obrigatória
**Feito:** o que realizou.

**Evidência:** arquivos, commits e testes realmente verificados.

**Não feito:** limitações e tarefas ainda pendentes.

**Próximo passo:** uma ação concreta.

**Regra principal:** ler, verificar, executar, registrar e sincronizar — nunca inventar progresso.
