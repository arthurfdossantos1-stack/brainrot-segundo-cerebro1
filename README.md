# 🌳 Brainrot — Segundo Cérebro para IAs

Repositório de **memória de projeto + vault Obsidian** para o jogo Roblox de árvores e Brainrots.
Serve para manter decisões, especificações, pendências e o ponto de continuação entre ChatGPT,
Claude, Gemini e outros assistentes.

> **Situação real (18/10/2026): planejamento.** Este repositório começa somente com documentação;
> não contém nem afirma conter scripts, cenas ou um jogo Roblox implementado.

## Comece aqui
1. Abra [`INICIO.md`](INICIO.md) no Obsidian.
2. Consulte [`00-Painel/Estado-Atual.md`](00-Painel/Estado-Atual.md).
3. Leia [`GUIA-PARA-IAS.md`](GUIA-PARA-IAS.md) e depois [`AGENTS.md`](AGENTS.md) antes de pedir trabalho a uma IA.
4. Ao trocar de IA, compartilhe [`07-Handoffs/PROMPT-NOVA-IA.md`](07-Handoffs/PROMPT-NOVA-IA.md)
   e [`CONTEXTO-PORTATIL.md`](CONTEXTO-PORTATIL.md), ou dê acesso ao repositório.
5. Após cada tarefa, atualize backlog, documentação, registro de sessão e handoff.

## O que é oficial?
- **Fonte fornecida pelo criador:** [`00-Fonte/PROJETO_BRAINROT.md`](00-Fonte/PROJETO_BRAINROT.md).
- **Confirmado:** cortar árvores → madeira → fabricar ovos → chocar Brainrots → renda → evolução.
- **Ainda não definido:** nome final, valores, chances, balanceamento, roubo, mapa e UI.
- **Propostas:** marcadas como *proposta*, nunca como funcionalidades implementadas.

## Arquitetura das pastas
- `00-Painel`: entrada e estado atual.
- `00-Fonte`: documento de referência original, preservado.
- `01-Produto`: conceito, loop, perguntas e proposta de MVP.
- `02-Sistemas`: fichas de cada sistema planejado.
- `03-Tecnico`: diretrizes propostas, inventário do código (inicialmente vazio).
- `04-Planejamento`: backlog e fases.
- `05-Decisoes`: decisões registradas (ADRs).
- `06-Sessoes`: registro factual por sessão.
- `07-Handoffs`: transferência de contexto entre contas de IA.
- `08-Qualidade`: critérios de verificação e revisão.
- `09-Templates`: modelos preenchíveis.
- `.github`: orientações para agentes de código, issues e PRs.
- `tools`: verificador de links e gerador de pacote de contexto.

## Comandos úteis (Python 3, sem dependências)
```sh
python tools/validate_context.py
python tools/build_context.py
python tools/new_session.py --agent "Claude" --task "Definir árvores"
```

## Repositório do Segundo Cérebro
https://github.com/arthurfdossantos1-stack/brainrot-segundo-cerebro1 (privado; requer acesso autorizado).

## Publicação e Obsidian
Consulte [`GUIA-INSTALACAO.md`](GUIA-INSTALACAO.md).
Mantenha o repositório **privado**, especialmente se futuramente houver código ou informações
internas. Não registre tokens, credenciais ou dados privados nas notas.

**Importante:** o GitHub guarda a versão compartilhada, o Obsidian organiza as notas e
cada IA só conhece o que ela efetivamente recebe/lê. Não existe memória automática entre
contas sem configurar o acesso/sincronização.