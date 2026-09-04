---
title: Docs Exports
nav_parent: Engenharia
nav_order: 80
nav_exclude: true
---

## 🏷️ Guia de Documentação: Variáveis `@export`

Voltar para:

- [Engenharia](./engenharia.md)

> **Diretriz de Qualidade (Godot 4)**
> Este documento define o padrão para documentar variáveis exportadas para o Inspector. O objetivo é garantir que Game Designers e Artistas saibam exatamente o que cada variável faz sem precisarem abrir o código fonte.

---

## 📌 1. A Regra de Ouro

No Godot 4, a documentação gerada pelo próprio código é feita utilizando dois *hashtags* (`##`) imediatamente acima da variável.

1. **A Primeira Linha:** Vira o **Resumo** (aparece como *tooltip* flutuante quando o mouse passa por cima do nome no Inspector). Nunca quebre essa linha. Escreva uma frase curta e direta.
2. **As Linhas Seguintes:** Viram a **Descrição Detalhada** (aparecem quando o usuário clica com o botão direito na variável e escolhe *Open Documentation*).

---

## 🎨 2. Formatação (BBCode)

A Godot suporta as tags nativas de BBCode dentro dos comentários `##`. Utilize-as para criar uma hierarquia de leitura elegante no painel da direita.

| Tag BBCode         | O que faz no Inspector                           | Exemplo de Uso                          |
| :----------------- | :----------------------------------------------- | :-------------------------------------- |
| `[br]`             | Quebra de linha.                                 | `## Vida máxima.[br]Padrão é 100.`      |
| `[b]...[/b]`       | Deixa o texto em **negrito**.                    | `## [b]Aviso:[/b] Não coloque zero.`    |
| `[i]...[/i]`       | Deixa o texto em *itálico*.                      | `## Afeta o [i]pacing[/i] do jogo.`     |
| `[code]...[/code]` | Destaca como bloco de `código` com fundo escuro. | `## Dispara o sinal [code]died[/code].` |

---

## ⚖️ 3. O Que Fazer e o Que Evitar

| ✅ Faça (Boas Práticas)                                                                                   | ❌ Evite (Más Práticas)                                                                  |
| :------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------- |
| **Focar no Impacto:** Explique como a variável altera a experiência ou o *gameplay*.                     | **Explicar Lógica Interna:** O designer não quer saber se você usou *lerp* ou matrizes. |
| **Declarar Tipagem e Padrão:** Sempre use `: Tipo` e atribua um `= valor_padrao` seguro.                 | **Redundância:** Não repita o nome (Ex: `## Velocidade: A velocidade.`)                 |
| **Limitar Valores Inseguros:** Use `@export_range` para evitar que digitem números que quebrem a física. | **Resumos Gigantes:** A primeira linha deve caber na tela sem o usuário ter que rolar.  |

---

## 🗂️ 4. Organização no Inspector (Categorias)

Se o seu script (ex: `Player.gd`) expõe muitas variáveis, não deixe tudo jogado em uma lista infinita. Agrupe os assuntos usando as anotações de categoria. Os comentários `##` devem vir logo abaixo das categorias também.

```gdscript
@export_category("Movimento")

## Velocidade escalar ao andar.
@export var velocidade: float = 200.0

## Força aplicada no eixo Y durante o salto.
@export_range(-1000.0, -100.0)
var forca_pulo: float = -450.0

@export_subgroup("Física de Queda")

## Multiplicador aplicado na gravidade quando o jogador está caindo.
@export_range(1.0, 5.0, 0.5)
var multiplicador_queda: float = 2.0

@export_category("Combate") # Inicia um novo grupo principal

## Quantidade máxima de pontos de vida.
@export_range(1, 999)
var vida_maxima: int = 100

@export_category("") # Passar uma string vazia reseta o agrupamento

```

---

## 📝 5. Templates Prontos

Copie e cole estes blocos no seu código para padronizar rapidamente.

### 🔢 Para Números (Float / Int)

Sempre coloque a unidade de medida (segundos, pixels, multiplicador) e informe o comportamento nos valores extremos.

```gdscript
## [Resumo curto do que é].
## [br]
## [b]Unidade:[/b] [Pixels, segundos, pontos, etc].
## [b]Aviso:[/b] [O que acontece se o valor for muito alto/baixo].
@export_range(valor_min, valor_max, passo)
var nome_variavel: float = valor_padrao

```

### 📦 Para Recursos (Resources)

Deixe claro para a equipe de Arte/Design qual arquivo eles devem arrastar para o *slot*, e o que o jogo faz se eles esquecerem de preencher.

```gdscript
## [Resumo curto do que é].
## [br]
## [b]Formato:[/b] Arraste um recurso do tipo [NomeDoResource] aqui.
## [b]Se vazio:[/b] [O que o código faz como fallback/comportamento padrão].
@export var nome_variavel: NomeDoResource

```

### 🔀 Para Enums e Flags (Máquina de Estados)

O nome da opção de um Enum geralmente é curto e não explica o contexto. Detalhe o que cada opção faz na prática.

```gdscript
## [Resumo curto sobre o que esta seleção controla].
## [br]
## [code]OPCAO_1[/code]: [O que essa opção faz na prática (ex: Patrulha)].
## [code]OPCAO_2[/code]: [O que essa opção faz na prática (ex: Persegue)].
@export var nome_variavel: NomeDoEnum = NomeDoEnum.OPCAO_PADRAO

```

---

*Para aprofundamento técnico:*

- 📖 [Documentação Oficial: Comentários de Documentação no GDScript](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_documentation_comments.html)
- 📖 [Documentação Oficial: Propriedades Exportadas no GDScript](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_exports.html)
