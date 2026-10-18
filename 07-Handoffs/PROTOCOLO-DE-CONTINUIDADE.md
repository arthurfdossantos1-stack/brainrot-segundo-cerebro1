
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
