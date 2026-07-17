---
title: Diretrizes Godot
nav_parent: Engenharia
nav_order: 70
---

## 🤖 Diretrizes de Desenvolvimento: Godot Engine

Voltar para:

- [Engenharia](./engenharia.md)

> *"Na Godot, tudo é um Nó (Node), e a organização de Cenas é a nossa maior arma."*

Este guia define as regras de arquitetura, nomenclatura e comunicação de código para todos os projetos do GameLab desenvolvidos na Godot. Seguir este padrão garante que qualquer membro da equipe consiga ler e entender o código de outro projeto.

---

## 🔤 1. Padrão de Nomenclatura (Naming Conventions)

Nós seguimos rigorosamente o padrão oficial da engine para manter a legibilidade:

- **Classes e Nós (Nodes):** `PascalCase`
  - *Exemplo:* `PlayerCharacter`, `WeaponManager`, `LevelManger`
- **Arquivos e Pastas:** `snake_case`
  - *Exemplo:* `player_character.tscn`, `weapon_manager.gd`, `assets/`
- **Variáveis e Funções:** `snake_case`
  - *Exemplo:* `health_points`, `current_speed`, `take_damage()`
- **Constantes:** `CONSTANT_CASE` (Tudo maiúsculo)
  - *Exemplo:* `MAX_SPEED`, `GRAVITY`
- **Sinais (Signals):** `past_tense` (Sempre no passado, indicando que algo aconteceu)
  - *Exemplo:* `player_died`, `health_changed`, `enemy_spawned`

---

## 📡 2. A Regra de Ouro da Arquitetura: "Call Down, Signal Up"

Esta é a regra mais importante do laboratório. O fluxo de comunicação entre os Nós na hierarquia da Godot deve sempre obedecer a este princípio:

1. **Call Down (Chamar para Baixo):** Um Nó "Pai" pode acessar livremente seus filhos, ler suas variáveis e chamar suas funções.

   ```gdscript
   # Certo: O Pai chamando o filho
   $Weapon.fire_bullet()
    ```

2. **Signal Up (Sinalizar para Cima):** Um Nó "Filho" **NUNCA** deve chamar uma função do seu Pai diretamente (nunca use `get_parent().fazer_algo()`). Em vez disso, o filho deve emitir um `Signal`, e o Pai que se conecte a esse sinal se quiser reagir.

```gdscript
# Errado (Acoplamento forte, quebra se a cena mudar)
get_parent().update_score(10)

# Certo (Desacoplado e seguro)
signal enemy_defeated(points)
emit_signal("enemy_defeated", 10)

```

*Por que isso importa?* Se você usar `get_parent()`, você não poderá testar a cena do Inimigo sozinha, porque ela vai crashar procurando um pai que não existe. Com sinais, a cena funciona de forma independente.

---

## 🏗️ 3. Composição ao invés de Herança

Na Godot, evite criar hierarquias longas de herança de código (Ex: `Entidade -> Inimigo -> InimigoVoador -> Dragao`). Em vez disso, prefira **Composição** usando Nós.

**Exemplo de Composição:**
Em vez do Jogador e do Inimigo herdarem de um script `Health.gd`, crie uma cena/nó chamado `HealthComponent` que cuida só da vida e de tomar dano.

- Se o Jogador precisa ter vida, adicione o nó `HealthComponent` nele.
- Se uma caixa de madeira pode ser destruída, adicione o nó `HealthComponent` nela.
Isso torna o jogo extremamente modular (como peças de Lego).

---

## 📁 4. Estrutura de Diretórios (Pastas)

Não organize o projeto pelo "tipo" de arquivo (uma pasta de scripts, uma de cenas, etc.). Organizar por **Funcionalidade (Feature)** é muito melhor para trabalhar em equipe e evitar conflitos.

**Padrão Recomendado (Feature-based):**

```text
res://
├── core/                  # Autoloads, Globais e Sistemas Base
│   ├── game_manager.gd
│   └── audio_manager.tscn
├── entities/              # Tudo que tem vida e se move
│   ├── player/
│   │   ├── player.tscn
│   │   ├── player.gd
│   │   └── player_sprite.png
│   └── enemies/
│       ├── goblin/
├── levels/                # Cenas principais de fases/mapas
│   └── level_01/
├── ui/                    # Telas e Menus
│   ├── main_menu/
│   └── hud/
└── assets/                # Arquivos brutos e compartilhados (Fontes, SFX genéricos)

```

---

## 💡 5. Dicas de Ouro (Boas Práticas Rápidas)

- **Sempre use Static Typing (Tipagem Estática):** Facilita o autocompletar da engine e previne bugs bobos.

```gdscript
# Evite:
var speed = 10

# Prefira:
var speed: float = 10.0

```

- **Limpe o seu `_process`:** A função `_process(delta)` roda todo santo frame (60x por segundo). Não coloque lógicas pesadas nela (como buscar um nó na árvore com `find_node()`). Use referências salvas na variável `onready`.
- **Cuidado com Autoloads (Singletons):** Só coloque como Autoload o que for estritamente necessário sobreviver a trocas de cena (Ex: `MusicManager`, `SaveSystem`). Se tudo virar Autoload, seu jogo ficará pesado e impossível de debugar.
