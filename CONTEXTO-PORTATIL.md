# CONTEXTO PORTÁTIL — ÁRVORES E BRAINROTS

> Gerado a partir dos arquivos de contexto do vault. NÃO editar este
> documento manualmente. Altere os arquivos de origem e execute
> `python tools/build_context.py`.
>
> O conteúdo descreve planejamento: **não presume código implementado**.
> É um snapshot; valide o SHA, o código e o handoff atuais antes de programar.

## Índice de fontes incluídas
- `AGENTS.md`
- `00-Painel/Estado-Atual.md`
- `07-Handoffs/HANDOFF-ATUAL.md`
- `04-Planejamento/Backlog.md`
- `01-Produto/Perguntas-Abertas.md`
- `05-Decisoes/DEC-0001-Conceito-Base.md`
- `00-Fonte/PROJETO_BRAINROT.md`
- `07-Handoffs/PROTOCOLO-DE-CONTINUIDADE.md`
- `07-Handoffs/PROMPT-NOVA-IA.md`


---

## Arquivo de origem: `AGENTS.md`


# AGENTS.md — contrato de continuidade para agentes de IA

## Missão
Dar continuidade confiável ao jogo Roblox descrito em `00-Fonte/PROJETO_BRAINROT.md`,
preservando decisões reais entre IAs, sessões e contas.

## Leitura obrigatória ANTES de trabalhar
1. `00-Painel/Estado-Atual.md`
2. `07-Handoffs/HANDOFF-ATUAL.md`
3. `04-Planejamento/Backlog.md`
4. `00-Fonte/PROJETO_BRAINROT.md`
5. Documentos e decisões pertinentes à solicitação.

## Fonte de verdade e prioridades
1. **Código/commits verificados**, para fatos de implementação.
2. **Decisões formalizadas e aprovadas**, para requisitos atuais.
3. **Documento original**, para conceito e requisitos de origem.
4. **Estado e handoff atualizados**, para progresso e limitações.
5. Propostas e templates: não são decisões nem código pronto.

Quando as fontes conflitarem, **relate o conflito**; não elimine evidência
ou escolha silenciosamente o que convier.

## Regras inegociáveis
- NÃO afirme que scripts, mapas, UI, persistência ou testes existem sem evidência.
- NÃO invente números de raridade, custos, tempo, danos, receita, nome ou repositório.
- NÃO implemente roubo como requisito confirmado; ele foi descrito como possibilidade.
- NÃO insira credenciais, tokens, segredos ou dados pessoais no Git.
- NÃO acrescente dependências, monetização ou funcionalidades sem necessidade.
- NÃO apague decisões ou notas sem motivo documentado.
- NÃO altere o documento fonte original; registre decisões em notas próprias.
- Se não houver acesso a código, faça somente documentação/planejamento pertinente.
- Respeite instruções expressas do usuário e especifique o que é hipótese.

## Critérios de trabalho com código (quando acessível)
- Confirme repositório, branch, commit e estrutura efetivos.
- Leia o código existente e modifique de forma incremental.
- Proteja economia e inventário: servidor deve validar operações.
- Otimize/teste interação em celulares sem inventar medições.
- Relate testes com comandos, resultados e limitações verdadeiros.
- Prefira branch e PR, evite edições concorrentes no mesmo arquivo.

## Encerramento obrigatório
Atualize sistema/decisão → backlog → sessão datada →
`00-Painel/Estado-Atual.md` → `07-Handoffs/HANDOFF-ATUAL.md`.

No resumo final use: **Feito / Evidência / Não feito / Próximo passo**.
Instruções completas: `07-Handoffs/PROTOCOLO-DE-CONTINUIDADE.md`.


---

## Arquivo de origem: `00-Painel/Estado-Atual.md`


---
status: planejamento
atualizado_em: 2026-10-18
responsavel: criador-do-projeto
tags: [status, handoff]
---
# Estado atual

## Resumo executivo
Jogo Roblox de cortar árvores e fabricar ovos a partir de madeira.
Ovos revelam Brainrots, que ficam na base e geram dinheiro para progressão.

## Confirmado pelo documento original
- Plataforma Roblox.
- Machado básico e base no início do ciclo idealizado.
- Cortar árvores rende madeira.
- Madeira alimenta a fabricação de ovos.
- Ovos liberam Brainrots aleatórios.
- Brainrots geram dinheiro com o tempo.
- Dinheiro permite melhorias e acesso a árvores melhores.

## NÃO verificado / NÃO implementado
- Nenhum repositório do código do jogo foi identificado aqui.
- Nenhum script, interface, mapa, teste ou sistema Roblox foi executado.
- Nome, valores, probabilidades e comportamento de roubo estão indefinidos.
- As fichas de sistemas são documentação e hipóteses, não requisitos finais.

## Próximo passo recomendado
**Prioridade P0:** definir o MVP mínimo e esclarecer a forma de implementar/testar no
Roblox Studio, a partir de [[01-Produto/Perguntas-Abertas]]; depois criar o repositório
de código do jogo e registrar o URL em [[03-Tecnico/Mapa-do-Codigo]].

## Estado de integração
| Recurso | Estado |
|---|---|
| Vault Obsidian | Estrutura inicial pronta para importar |
| Repositório GitHub remoto | Publicado: https://github.com/arthurfdossantos1-stack/brainrot-segundo-cerebro1 |
| Repositório de código Roblox | Não informado |
| Integração automática entre IAs | Não configurada |
| Código jogável | Não verificado |

Atualizar estas linhas apenas mediante evidência: URL real, commit, arquivo ou teste.


---

## Arquivo de origem: `07-Handoffs/HANDOFF-ATUAL.md`


---
status: pronto-para-transferir-contexto
ultima_sessao: 2026-10-18
tags: [handoff, continuidade]
---
# HANDOFF ATUAL — ler antes de qualquer tarefa

## Fonte prioritária
[[00-Fonte/PROJETO_BRAINROT]] e [[05-Decisoes/DEC-0001-Conceito-Base]].

## Onde o projeto está
**Planejamento.** Foi montado o Segundo Cérebro; não existe evidência neste
material de que o código Roblox esteja implementado.

## Confirmado
Jogo Roblox: árvore → madeira → fábrica → ovo → Brainrot → dinheiro → evolução.

## Pendente mais importante
- Aprovar [[01-Produto/MVP-Proposto]] ou definir outro MVP.
- Responder [[01-Produto/Perguntas-Abertas]].
- Indicar/criar repositório Roblox e preencher [[03-Tecnico/Mapa-do-Codigo]].

## Bloqueios
Implementação depende de decisões e de acesso ao projeto Roblox real.

## Identificação da versão
- Vault: inicial, 2026-10-18.
- Repositório GitHub remoto: publicado em https://github.com/arthurfdossantos1-stack/brainrot-segundo-cerebro1 (branch main).
- Commit de código do jogo: **não conhecido**.
- Tarefas efetivamente implementadas: **nenhuma verificada**.

## Como continuar
1. Leia `AGENTS.md`, este handoff e o estado atual.
2. Consulte backlog e documentos específicos.
3. Inspecione código real **se houver acesso**.
4. Não preencha lacunas como fatos.
5. Ao finalizar, atualize os quatro registros da rotina em
   [[07-Handoffs/PROTOCOLO-DE-CONTINUIDADE]].

**Próxima tarefa indicada:** BR-001 / BR-002, conforme acesso e decisões do criador.


---

## Arquivo de origem: `04-Planejamento/Backlog.md`


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


---

## Arquivo de origem: `01-Produto/Perguntas-Abertas.md`


---
status: aberto
tags: [decisoes, duvidas]
---
# Perguntas em aberto

Toda resposta aceita deve virar decisão em `05-Decisoes/` e refletir nas notas afetadas.

| ID | Pergunta | Estado |
|---|---|---|
| Q01 | Qual será o nome definitivo do jogo? | Aberto |
| Q02 | Quais árvores existem, quais madeiras geram e em que quantidades? | Aberto |
| Q03 | Como o machado corta, melhora e é obtido? | Aberto |
| Q04 | Como madeira é armazenada e transportada até a base? | Aberto |
| Q05 | Quais ovos existem, quanto custam e quanto demoram? | Aberto |
| Q06 | Quais Brainrots, raridades, probabilidades e rendimentos? | Aberto |
| Q07 | Há roubo? Como funcionam acesso, limites e proteção? | Aberto |
| Q08 | Como evoluem fábrica, machados, base e regiões? | Aberto |
| Q09 | Qual será o mapa, direção de arte e animações? | Aberto |
| Q10 | Qual interface e controles serão usados no celular? | Aberto |
| Q11 | Onde ficará o código Roblox? Há projeto Studio ou Rojo existente? | Aberto |
| Q12 | Qual o escopo aprovado do MVP? | Aberto |

Referência de origem: [[00-Fonte/PROJETO_BRAINROT]].


---

## Arquivo de origem: `05-Decisoes/DEC-0001-Conceito-Base.md`


---
id: DEC-0001
data: 2026-10-18
status: confirmado-pela-fonte
tags: [decisao, gameplay]
---
# DEC-0001 — Ciclo central

## Contexto
O documento enviado pelo criador descreve jogo Roblox focado em árvores e Brainrots.

## Decisão registrada
Adotar como **conceito inicial**:
cortar → coletar madeira → fabricar ovo → chocar → obter Brainrot →
ganhar dinheiro → evoluir → repetir.

## Limite
Ser um conceito definido **não significa** implementar todos os detalhes nem provar
que o loop já foi construído. Roubo e configurações numéricas continuam em aberto.

## Fonte
[[00-Fonte/PROJETO_BRAINROT]].


---

## Arquivo de origem: `00-Fonte/PROJETO_BRAINROT.md`


# 🌳 Jogo de Árvores e Brainrots — Visão Geral

> [!info] Estado do projeto
> **Em planejamento.** Este arquivo é uma referência inicial para o Obsidian e para outras IAs. As ideias descritas podem mudar durante o desenvolvimento.

## 🎮 Conceito

Jogo no **Roblox** inspirado no estilo de *Steal an Egg*, mas com foco em **cortar árvores, coletar madeira e fabricar ovos** para obter Brainrots.

## 🔄 Ciclo principal

1. O jogador começa com um machado básico e uma base.
2. Corta árvores para conseguir madeira.
3. Leva a madeira até a fábrica da própria base.
4. A fábrica transforma a madeira em ovos.
5. Os ovos podem ser chocados e revelam Brainrots aleatórios.
6. Os Brainrots ficam na base e geram dinheiro ao longo do tempo.
7. O jogador usa o dinheiro para melhorar equipamentos e avançar.
8. Volta a cortar árvores melhores e repete o ciclo.

**Resumo:** `Cortar → Coletar → Fabricar ovo → Chocar → Brainrot → Ganhar dinheiro → Evoluir → Repetir`

## 🧩 Sistemas previstos (a definir)

- **Árvores:** diferentes tipos e quantidades de madeira.
- **Machados:** equipamentos e melhorias de corte.
- **Madeira:** recurso utilizado na produção de ovos.
- **Fábrica:** transforma madeira em ovos dentro da base.
- **Ovos:** tipos relacionados às madeiras, com recompensas variadas.
- **Brainrots:** personagens colecionáveis que produzem dinheiro.
- **Base:** espaço para a fábrica e para os Brainrots.
- **Economia:** dinheiro para evoluir equipamentos e estruturas.
- **Roubo:** possível mecânica para interagir com bases de outros jogadores.
- **Progressão:** novas árvores, madeiras, ovos e melhorias.

## ✅ O que está definido por enquanto

- O jogo será desenvolvido no Roblox.
- Cortar árvores é uma atividade central.
- A madeira será usada para fabricar ovos na base.
- Os ovos dão Brainrots.
- Os Brainrots geram dinheiro.
- O dinheiro permite progredir e repetir o ciclo.

## ❓ O que ainda precisa ser decidido

- Nome do jogo.
- Tipos de árvores, madeiras e ovos.
- Tempo e custo de fabricação dos ovos.
- Raridades, chances e valores dos Brainrots.
- Funcionamento exato do roubo e da proteção da base.
- Melhorias da fábrica e dos machados.
- Organização do mapa e áreas desbloqueáveis.
- Interface, estilo visual e animações.

## 📝 Registro de mudanças

| Data | Alteração | Status |
|---|---|---|
| 18/10/2026 | Conceito inicial e ciclo principal registrados | Provisório |

## 🤖 Contexto para outras IAs

Este documento apresenta **a ideia atual**, não um conjunto de regras imutáveis. Ao continuar o projeto:

- Considere as seções marcadas como definidas como o ponto de partida atual.
- Trate os demais sistemas como propostas, não decisões finais.
- Não suponha que algo ainda não documentado já foi implementado.
- Se uma decisão mudar, atualize este arquivo para refletir a versão mais recente do projeto.
- Antes de implementar funcionalidades, confira o código existente e as decisões atuais.

---

**Próximo passo:** detalhar os sistemas individualmente conforme as decisões forem tomadas.


---

## Arquivo de origem: `07-Handoffs/PROTOCOLO-DE-CONTINUIDADE.md`


---
tags: [ia, protocolo, handoff]
---
# Protocolo para alternar IAs sem perder contexto

## Início obrigatório da sessão
1. Identifique a conta/IA e a tarefa pedida.
2. Leia: `AGENTS.md`, `INICIO.md`, `00-Painel/Estado-Atual.md`,
   `07-Handoffs/HANDOFF-ATUAL.md`, `04-Planejamento/Backlog.md`.
3. Leia o documento fonte e as fichas/decisões relacionadas à tarefa.
4. Se trabalhar com código, examine repositório e SHA reais antes de mudar arquivos.
5. Diga explicitamente o que é definido, hipótese, pendência e evidência.

## Durante a execução
- Trabalhe no objetivo solicitado, com mudanças pequenas e verificáveis.
- Releia a versão remota antes de editar em outra conta ou aparelho.
- Um agente escritor por branch/tarefa para reduzir conflitos.
- Não use mais de um agente alterando o mesmo arquivo ao mesmo tempo.
- Em alterações de código, prefira branch + PR, com testes aplicáveis.

## Fim obrigatório da sessão
Atualize, nesta ordem:
1. Ficha de sistema/decisão e artefatos afetados.
2. [[04-Planejamento/Backlog]] com estado **comprovado**.
3. `06-Sessoes/AAAA-MM-DD-descricao.md` com mudanças, testes, commit e bloqueios.
4. [[00-Painel/Estado-Atual]] e [[07-Handoffs/HANDOFF-ATUAL]].

Inclua sempre: **feito**, **não feito**, **evidência**, **erros conhecidos**
e **próximo passo preciso**. Não marque testes como aprovados sem executá-los.

## Quando os créditos acabarem
1. Sincronize o vault com o GitHub (`push`).
2. Confirme no GitHub que commit e handoff foram publicados.
3. Abra a outra IA e forneça repositório + branch/commit, ou anexe
   `CONTEXTO-PORTATIL.md` junto com os arquivos relevantes.
4. Peça que leia contexto, indique o próximo passo e siga as regras.
5. Faça `pull` da versão mais recente antes de retomar no Obsidian.

**Atenção:** chatbots de sites diferentes não têm acesso mútuo à memória
por padrão; a sincronização depende de arquivo/anexo/conector acessível.


---

## Arquivo de origem: `07-Handoffs/PROMPT-NOVA-IA.md`


---
tags: [prompt, handoff]
---
# Prompt para iniciar em qualquer nova IA

Copie o texto abaixo e **anexe o contexto/repositório** ao chat.
Caso a IA não consiga acessar o GitHub, anexe `CONTEXTO-PORTATIL.md`
e, quando necessário, outros arquivos citados.

> Você vai continuar um projeto Roblox chamado provisoriamente
> "Jogo de Árvores e Brainrots".
>
> Antes de realizar qualquer tarefa, leia os arquivos `AGENTS.md`,
> `00-Painel/Estado-Atual.md`, `07-Handoffs/HANDOFF-ATUAL.md`,
> `04-Planejamento/Backlog.md`, `00-Fonte/PROJETO_BRAINROT.md`
> e as decisões/sistemas pertinentes.
>
> O projeto está em **planejamento**, a menos que o código real e commits
> disponíveis provem um estado posterior. NÃO invente sistemas prontos,
> nomes, chances, preços, estruturas, testes, bugs ou repositórios.
>
> Separe informações confirmadas, propostas e pendências. A prioridade é
> continuar da última evidência real e seguir instruções específicas do usuário.
> Se houver código, examine a branch e o SHA antes de modificar.
>
> Ao finalizar, documente alterações, arquivos, testes realmente executados,
> pendências e o próximo passo, atualizando backlog, sessão, estado atual
> e handoff. Se você não puder editar os arquivos diretamente, devolva
> os trechos completos para que sejam copiados ao vault.
>
> Primeiro mostre o estado encontrado e indique qual tarefa do backlog
> é a próxima, sem afirmar que algo foi implementado sem evidência.
