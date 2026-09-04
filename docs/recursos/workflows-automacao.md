---
title: Workflows de Automacao
nav_parent: Kit de Templates e Workflows
nav_order: 40
---

## Workflows de Automacao

Voltar para:

- [Kit de Templates e Workflows](../kit-templates-workflows.md)

Automacoes de qualidade e release para reuso entre jogos do laboratorio.

Workflows disponiveis:

- [PR Check (Godot)](https://github.com/GameLab-UERJ/Portal/blob/main/templates/workflows/_godot_pr_check.yml)
- [Release](https://github.com/GameLab-UERJ/Portal/blob/main/templates/workflows/_release.yaml)

Recomendacao de adocao:

1. Copiar os workflows para .github/workflows no repositorio alvo.
2. Ajustar gatilhos de branch conforme o fluxo do projeto.
3. Validar execucao com um PR de teste.

Criterios de pronto:

- PRs executam validacao automatica.
- Pipeline de release esta documentada para o time.
