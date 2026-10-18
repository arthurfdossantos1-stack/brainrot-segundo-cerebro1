# Instalação — GitHub + Obsidian + múltiplas IAs

## A. Repositório já publicado
Repositório privado: https://github.com/arthurfdossantos1-stack/brainrot-segundo-cerebro1

Para baixar em um ambiente com Git autenticado:
```sh
git clone https://github.com/arthurfdossantos1-stack/brainrot-segundo-cerebro1.git
cd brainrot-segundo-cerebro1
```

Ou importe o ZIP do vault no Obsidian. Arquivos locais de um ZIP não se sincronizam automaticamente.

## B. Abrir no Obsidian
1. Instale Obsidian.
2. Extraia o ZIP em uma pasta normal no seu aparelho ou computador.
3. Em **Abrir pasta como cofre / Open folder as vault**, escolha a
   pasta `brainrot-segundo-cerebro1`.
4. Abra `INICIO.md`. Os `[[links]]` ficam navegáveis no Obsidian.

## C. Sincronizar com GitHub
- **Desktop:** use Git CLI ou plugin de Git confiável no Obsidian.
- **Android:** sincronização Git no Obsidian pode ter limitações;
  use um método compatível verificado (plugin específico ou Git via Termux).
  Teste primeiro em um vault de cópia e tenha backup.
- Faça `pull` antes de editar e `push` após finalizar. Não edite em dois
  dispositivos/IA ao mesmo tempo sem integrar as mudanças.
- Configurações pessoais de plugins e credenciais não devem ser versionadas.

## D. Transferir de ChatGPT para Claude/Gemini
1. Faça commit/push das notas mais recentes.
2. Confira `07-Handoffs/HANDOFF-ATUAL.md` e rode `python tools/build_context.py`.
3. Compartilhe a URL do repositório privado via integração autenticada
   **ou** anexe `CONTEXTO-PORTATIL.md` à outra IA.
4. Cole o prompt de `07-Handoffs/PROMPT-NOVA-IA.md`.
5. Se a IA não puder ler/escrever GitHub, forneça os documentos pertinentes
   e traga os resultados para revisão/commit manual.

## E. Criar sessão
```sh
python tools/new_session.py --agent "ChatGPT" --task "Analisar sistema de árvores"
```
A sessão começa como rascunho: preencher somente o que realmente ocorreu.

## F. Boas práticas
- Nunca versionar credenciais, tokens, backups privados ou arquivos `.env`.
- O repositório de memória pode permanecer separado do código do jogo.
- Antes de declarar progresso, confira o estado real do código.
- O usuário aprova decisões importantes; IAs não as inventam.