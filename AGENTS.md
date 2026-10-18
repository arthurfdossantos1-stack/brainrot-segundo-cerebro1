
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
