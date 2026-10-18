---
status: proposta-nao-adotada
tags: [tecnico, arquitetura, roblox]
---
# Arquitetura Roblox (proposta)

- Linguagem sugerida: Luau, no Roblox Studio.
- Separação de responsabilidades entre servidor, cliente e código compartilhado.
- Servidor autoritativo para corte, inventário, fabricação, sorteios, Brainrots, renda e compras.
- Cliente envia intenção, não quantidades arbitrárias.
- Projetar persistência segura com os serviços do Roblox, quando aprovada.
- Otimizar para celular e verificar desempenho antes de divulgar resultados.

## Estrutura possível com Rojo
Caso adotado, organizar módulos de servidor, cliente e compartilhados em src/.
**Não afirmar que o projeto utiliza Rojo sem evidência.**

Repositório/branch/commit real: [[03-Tecnico/Mapa-do-Codigo]].
