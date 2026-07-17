---
title: Guia Ciclo Infinito
nav_parent: Projetos
nav_order: 90
nav_exclude: true
---

## 📘 Guia de Projeto: Ciclo Infinito

Voltar para:

- [Projetos](./projetos.md)

> **Documentação de Consulta Rápida**
> Este arquivo centraliza os padrões de código, versionamento e arquitetura do projeto **Ciclo Infinito**. Para dúvidas, feedbacks ou sugestões, entre em contato com a Liderança de Programação.

---

## 🌳 1. Git & Versionamento (Branches)

Para que várias pessoas programem ao mesmo tempo sem destruir o projeto, utilizamos um fluxo rigoroso de criação de ramificações (branches).

### Boas Práticas

- **NUNCA comite diretamente na branch `main` ou `master`.**
- Crie uma branch nova para **cada** nova funcionalidade ou correção.
- Mantenha sua branch sempre atualizada puxando as novidades da branch principal (`git pull origin main`).
- Branches devem ter vida curta. Fez a feature? Abra o Pull Request.

### Nomenclatura de Branches

Siga o formato `<tipo>/<escopo-curto>`. Utilize hifens para separar palavras e mantenha tudo em minúsculas.

- **Padrão:** `tipo/nome-da-tarefa`
- **Exemplos:**
  - `feat/player-dash`
  - `fix/menu-pause-crash`
  - `assets/trilha-boss`

---

## 💾 2. Git Commits

Nós utilizamos o padrão [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/). Todo commit deve especificar o que foi feito de forma clara para gerar um histórico legível.

### Tipos de Commit

| Tipo | Quando usar? |
| :--- | :--- |
| `feat` | Nova funcionalidade (ex: novo poder, novo sistema de diálogo). |
| `fix` | Correção de bugs, erros ou comportamentos inesperados. |
| `assets` | Adição/alteração de sprites, sons, modelos, fontes ou shaders. |
| `scene` | Alterações específicas na hierarquia de arquivos `.tscn`. |
| `refactor` | Mudança no código que não altera o comportamento (limpeza/otimização). |
| `perf` | Melhoria de performance (ex: otimização de processamento). |
| `style` | Mudanças de formatação ou guia de estilo (sem alterar a lógica). |
| `docs` | Alterações no README, Wiki ou comentários de código. |
| `chore` | Tarefas de manutenção (ex: atualizar `.gitignore`, configurações da Godot). |

### Template da Mensagem de Commit

A primeira linha do commit deve seguir esta fórmula:
`<tipo>(<escopo>): <resumo curto em minúsculas e no imperativo>`

**Exemplos Reais:**

- `feat(player): adiciona pulo duplo`
- `fix(ui): corrige botao de start nao clicavel`
- `scene(level_1): ajusta colisao das paredes`

> **Opcional:** Se o resumo não for suficiente, pule uma linha e adicione uma descrição detalhada no corpo do commit. Se o commit fechar uma tarefa, coloque no rodapé: `Closes #12`.

---

## 🔄 3. Pull Requests (PRs)

O Pull Request é o momento de revisão. É aqui que o seu código passa pela aprovação do Líder de Programação antes de entrar no jogo final.

### Nomenclatura do Pull Request

O título do PR deve ser idêntico ao padrão de commits.

- **Exemplo:** `feat(combat): Sistema de hitbox para ataques corpo-a-corpo`

### Template de PR

Copie o texto abaixo e cole na descrição do seu Pull Request no GitHub:

```markdown
## 📝 Descrição Geral
> Relacionado a: # (Link da issue/task)
[Descreva o que este PR adiciona, altera ou corrige no jogo]

## 📂 Arquivos Alterados
> Marque com [x] o que se aplica:
- [ ] **Lógica (.gd):** Scripts alterados ou adicionados.
- [ ] **Cenas (.tscn):** Mudanças na árvore de nós ou heranças.
- [ ] **Recursos (.tres):** Novos materiais, temas ou custom resources.
- [ ] **Assets:** Sprites, áudios ou modelos 3D importados.

## ⚙️ Checklist Técnico (Godot)
- [ ] **Guia de Estilo:** As alterações seguem rigorosamente as regras de nomenclatura do projeto.
- [ ] **Sinais e Memória:** Garanti que não criei referências cíclicas que impeçam o `queue_free()`.
- [ ] **Export Vars:** Variáveis `@export` estão organizadas, tipadas e legíveis no Inspector.

## 🌐 Testes e Compatibilidade
- [ ] Testado jogando pelo Editor (Desktop) e nenhum bug/crash ocorreu.
- [ ] O console de Output da Godot está limpo (sem novos erros vermelhos ou avisos amarelos).

```

---

## ✒️ 4. Formatação de Código (GDScript)

Como o GDScript é inspirado em Python, nosso *style guide* é baseado na PEP 8.

- **Indentação:** Use **Tabs** (padrão da Godot), e não espaços.
- **Alinhamento:** A indentação deve ser sempre de 1 nível do bloco que a contém. Quebras de linha longas devem apresentar 2 níveis de indentação para distinguir de novos blocos de código.
- **Comprimento:** Linhas não devem ultrapassar 100 caracteres.

### Ordem do Código dentro do Script

Siga esta ordem exata para organizar as declarações dentro dos seus arquivos `.gd`:

1. `@tool`, `@icon`, `@static_unload`
2. `class_name`
3. `extends`
4. Comentários de documentação (Doc comments)
5. `signal` (Sinais)
6. `enum`
7. `const` (Constantes)
8. `static var` (Variáveis estáticas)
9. `@export` (Variáveis expostas ao Inspector)
10. Variáveis normais públicas, seguidas das privadas
11. `@onready var` (Variáveis carregadas ao iniciar)
12. Funções virtuais nativas (ex: `_init()`, `_ready()`, `_process()`)
13. Funções públicas
14. Funções privadas (iniciadas com `_`)
15. Classes internas (`inner classes`)

---

## 🔤 5. Nomenclatura e Tipagem

Siga a tabela abaixo para nomear arquivos, classes e variáveis.
**Regra de Ouro:** Preceda com *underline* (`_`) métodos virtuais, funções privadas e variáveis privadas (ex: `var _contador`, `func _calcular_dano()`).

| Tipo | Padrão | Exemplo |
| --- | --- | --- |
| Nomes de Arquivos / Pastas | `snake_case` | `yaml_parser.gd`, `player/` |
| Nomes de Classes (`class_name`) | `PascalCase` | `class_name ConfigParser` |
| Nomes de Nós (Nodes da Godot) | `PascalCase` | `Camera2D`, `Player` |
| Funções e Variáveis | `snake_case` | `func load_level():`, `var health` |
| Sinais (Signals) | `snake_case` (Passado) | `signal door_opened` |
| Constantes | `CONSTANT_CASE` | `const MAX_SPEED = 200` |
| Nomes de Enum | `PascalCase` | `enum Element { ... }` |
| Membros de Enum | `CONSTANT_CASE` | `{ EARTH, WATER, FIRE }` |

### Tipagem Estática (Static Typing)

Sempre declare o tipo das variáveis e o tipo de retorno das funções. Isso previne bugs silenciosos e melhora o autocompletar da engine.

- **Variáveis:** `var <nome>: <tipo> = <valor>`

```gdscript
var health: int = 100

```

- **Funções:** `func <nome>() -> <tipo_de_retorno>:`

```gdscript
func heal(amount: int) -> void:
    health += amount

```

---

## 📁 6. Estrutura de Arquivos do Projeto

Não separamos o projeto por tipos de arquivo (scripts num canto, cenas no outro). Utilizamos uma arquitetura orientada a **Funcionalidades (Features)**. Tudo relacionado a um objeto deve ficar na mesma pasta.

```text
project/
├── entities/               # Tudo que tem vida, interage ou se move
│   ├── enemies/
│   │   └── golem/
│   │       ├── golem.gd
│   │       ├── golem.tscn
│   │       └── golem_sprite.png
│   └── player/
├── levels/                 # Cenas de mapas e agrupadores
│   ├── dungeons/
│   ├── world/
│   └── shared/
├── menus/                  # UI e Interfaces de Usuário
│   ├── main_menu/
│   └── shared/             # (Themes, button_styles)
├── systems/                # Gerenciadores invisíveis e Autoloads
│   ├── health_system/
│   └── level_system/
├── assets/                 # Arquivos brutos (que não pertencem a uma entidade específica)
│   ├── sfx/
│   ├── art/
│   └── music/
├── resources/              # Custom Resources (.tres)
└── project.godot

```
