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
status: recuperacao-parcial-alvo-pendente
atualizado_em: 2026-10-19
responsavel: criador-do-projeto
tags: [status, handoff]
---
# Estado atual

## Resumo executivo
Conceito: árvore → madeira → fábrica → ovo → Brainrot → dinheiro → evolução.
O MVP ainda não está aprovado. Foi recuperada uma sessão anterior de UI do jogo
**cortador para brainrot**, ausente deste GitHub. Seu vínculo com este projeto
precisa ser confirmado; não recomeçar o jogo nem tratar fontes parciais como
implementação completa.

## Verificado em 19/10/2026
- Base remota: `main`, `02da386f4d787902276e4e3f22f6e148b6a15bec`; último commit de
  sincronização, sem código Roblox versionado até aquela revisão.
- Cinco fontes locais e cinco históricas preservadas com hashes e origem.
  Tema, loja e HUD diferem entre as versões. Nenhuma fonte implantada nesta sessão.
- Compilação sintática: 10/10 fontes válidas, nenhuma executada.
- Roblox MCP atual: Place1, ID 0, Edit, nenhum script.
- Jogo histórico: cortador para brainrot, Place ID `116391348137209`.
- Blender MCP: conectado, cena inicial não salva com Cube, Camera e Light.
- Falhas preexistentes de link wiki e contexto portátil tratadas nesta sessão.

## Ainda não confirmado
- Repositório, branch e commit do jogo real; salvamento/publicação das mudanças antigas.
- Conclusão dos ícones, UI mobile e testes funcionais.
- Sistema completo de árvores, fábrica, ovos, renda e persistência neste projeto.
- Nome definitivo, valores, probabilidades e roubo sem decisão formal.

## Próximo passo
**BR-002 / BR-013:** confirmar se este vault acompanha o Place `116391348137209`
e abrir esse projeto com MCP. Identificar código real e comparar fontes antes de
editar. Para projeto novo, resolver BR-001/BR-002; continuidade não aprova o MVP.

## Integração
| Recurso | Estado |
|---|---|
| Segundo Cérebro | GitHub acessível; API indica público; visibilidade não alterada |
| Código Roblox | Evidências históricas parciais, sem repositório operacional |
| Roblox MCP | Funcionando, porém em Place1 vazio |
| Blender MCP | Funcionando, sem asset identificado do projeto |
| Memória entre IAs | Documentação versionada; sem sincronização automática do Studio |
| Código jogável | Não testado nesta sessão |

Detalhes: [[03-Tecnico/Recuperacao-UI-2026-10-19]],
[[06-Sessoes/2026-10-19-recuperacao-contexto-e-ui]] e [[07-Handoffs/HANDOFF-ATUAL]].


---

## Arquivo de origem: `07-Handoffs/HANDOFF-ATUAL.md`


---
status: recuperacao-parcial-alvo-pendente
ultima_sessao: 2026-10-19
tags: [handoff, continuidade]
---
# HANDOFF ATUAL — ler antes de qualquer tarefa

## Onde parou
Recuperada sessão de UI de **cortador para brainrot**, Place ID `116391348137209`,
ausente do Segundo Cérebro. Última tarefa histórica: UI quadrada, studs originais
mais densos e ícones conforme referências. A etapa de ícones terminou sem conclusão
por limite de uso. Salvamento/publicação e vínculo com este vault não confirmados.

Studio em 19/10/2026: **Place1, ID 0, sem scripts**. Blender na cena inicial.
Não instalar arquivos nesse Place1 por suposição.

## Feito nesta sessão
- Conferidos arquivos obrigatórios e nove commits da base remota.
- Preservadas cinco fontes locais e cinco históricas com SHA-256 e proveniência.
- Tema, loja e HUD locais diferem das últimas fontes do histórico.
- Dez fontes compiladas sem execução; nenhum teste funcional.
- Corrigido link inexistente do guia e regenerado contexto portátil.
- Atualizados mapa, ficha de UI, backlog, perguntas, painel e sessão.

## Arquivos para retomar
- [[03-Tecnico/Recuperacao-UI-2026-10-19]]: evidências, dependências e limites.
- `03-Tecnico/evidencias/ui-2026-10-19/manifest.json`: hashes e caminhos históricos.
- `historico/`: textos das chamadas; `local/`: cópias dos arquivos em disco.
- [[03-Tecnico/Mapa-do-Codigo]] e [[06-Sessoes/2026-10-19-recuperacao-contexto-e-ui]].

## Próxima ação exata
1. Verificar resposta à confirmação de **cortador para brainrot**. Se faltar,
   solicitar vínculo/abertura do lugar correto. Não presumir autorização de outro alvo.
2. Listar instâncias MCP e conferir nome/PlaceId antes de editar.
3. Identificar/exportar projeto real para repositório; registrar URL, branch, commit.
   Este vault é memória com anexos, não projeto Roblox completo.
4. Comparar código ao vivo com o manifesto e preservar versões mais recentes.
5. Conferir remotes/servidor, InventoryLeaderstats, previews e backup da UI.
6. Retomar ícones/layout da tarefa histórica se alvo confirmado; testar loja,
   venda, HUD e prompts em PC/celular. Não alterar economia por dedução.
7. Se for outro jogo, preservar histórico separado e resolver BR-001/BR-002.

## Pendências
- MVP, regras numéricas e arquitetura sem aprovação formal.
- Sem Playtest, mobile real, multiplayer, persistência ou medição de performance.
- Pacote parcial sem servidor, mapa, todos os clientes e assets finais.
- `Madeira` na loja versus `Tronco` no HUD/venda exige inspeção do servidor.
- Nenhuma implementação nova, publicação Roblox ou edição Blender nesta sessão.

## Branch e versão
- Base: `main`, `02da386f4d787902276e4e3f22f6e148b6a15bec`.
- Trabalho: `codex/recuperar-contexto-2026-10-19`.
- Commit da recuperação: consultar
  `git log -1 --format=%H -- 06-Sessoes/2026-10-19-recuperacao-contexto-e-ui.md`.
- Commit do jogo: **desconhecido**. Conferir confirmação remota da memória no
  registro de sincronização; não confundir snapshots com código implantado.

Fonte conceitual preservada: [[00-Fonte/PROJETO_BRAINROT]] e
[[05-Decisoes/DEC-0001-Conceito-Base]]. Nenhuma decisão foi substituída.


---

## Arquivo de origem: `04-Planejamento/Backlog.md`



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
| Q11 | Onde ficará o código Roblox? Há projeto Studio ou Rojo existente? | Parcial: encontrado histórico do Place 116391348137209; confirmar vínculo e repositório |
| Q12 | Qual o escopo aprovado do MVP? | Aberto |

Referência de origem: [[00-Fonte/PROJETO_BRAINROT]].

Em 19/10/2026 foi solicitado ao criador confirmar se o projeto a continuar é
**cortador para brainrot** e abri-lo no Studio com MCP. A resposta ainda não foi
recebida nesta sessão. O Studio consultado está em Place1, ID 0, sem scripts.
Isso não aprova o MVP nem a adoção das regras do jogo histórico.


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
