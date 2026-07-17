
# 🎮 Game Design Document: [Nome do Projeto]

> **Status:** [Em Produção / Prototipagem / Pausado]
> **Versão:** 1.0.0
> **Responsável:** [Seu Nome/Squad]

---

## 1. Resumo Executivo

*[Explicação rápida do jogo: Qual é o conflito central? Qual a emoção que o jogador deve sentir?]*

## 2. Pilares de Design

* **Pilar 1:** [Ex: O sistema de "Erosão da Humanidade" através da morte.]
* **Pilar 2:** [Ex: Gestão tática de energia vs. regeneração passiva.]
* **Pilar 3:** [Ex: Combate rítmico onde atacar é a única forma de manter o fluxo de energia.]

## 3. Dinâmica de Progressão

* **Ação:** Explorar mapa e eliminar inimigos.
* **Coleta:** Baterias (Recurso duplo: Cura de EN vs. Upgrade Permanente).
* **Investimento:** O custo dos upgrades cresce exponencialmente (aumento da dificuldade em manter o ritmo).
* **Risco/Recompensa:** A regeneração diminui com o tempo de jogo, forçando o jogador a agir de forma agressiva (Ciclo de urgência).

## 4. Matriz de Mecânicas

| Mecânica | Input (Godot) | Efeito no Jogo | Custo |
| --- | --- | --- | --- |
| **Ataque Melee** | `Left Click` | Dano físico, regenera fluxo. | Mínimo |
| **Escudo** | `Right Click` | Bloqueia dano. | Contínuo (EN) |
| **Laser** | `Space` | Dano à distância. | Alto por disparo |

## 5. Interpretação do Tema: "Evolução a qualquer custo"

* **Narrativa:** A morte não é o fim, é uma atualização. A cada renascimento, o jogador perde traços de humanidade, mas ganha eficiência mecânica.
* **Gameplay:** A regeneração de EN é um sistema de *decay* (deterioração). Quanto mais tempo vivo, menos energia você gera. Isso força o jogador a buscar a "morte" ou o "reset" para progredir.

## 6. Especificações Técnicas (Godot 4.x)

* **Engine:** Godot 4.4.1 (Headless para testes).
* **Arquitetura:**
* `State Machines` para Inimigos e Player.
* `Resources` para dados de status (HP, EN, Dano).
* `Signals` para atualização de UI (Barra de energia).

* **Pipeline de Assets:** Aseprite -> Importação Automática (.png) -> Atlas de Texturas.

---

## 📅 Histórico de Versões

> *Este espaço é obrigatório para evitar o problema de "documento desatualizado".*

| Versão | Data | Mudança Principal | Autor |
| --- | --- | --- | --- |
| 1.0.0 | 04/07/26 | Criação do GDD base. | [Nome] |
| 1.0.1 | --/--/-- | Alteração na mecânica de regeneração. | [Nome] |

---
