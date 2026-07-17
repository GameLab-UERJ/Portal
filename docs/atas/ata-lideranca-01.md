---
title: Ata Lideranca 01
nav_parent: Atas
nav_order: 1
nav_exclude: true
---

## 📝 Ata da 1ª Reunião: Liderança de Programação

> **Data:** 26/03/2026 | **Horário:** 09:30 – 11:00
> **Participantes:** Gabriel de Carvalho, Igor Morais, Pedro Boccaletti
> **Relator:** Gabriel de Carvalho

---

## 🎯 1. Abertura e Contextualização

O Coordenador Geral abriu a reunião com o objetivo de alinhar visão, responsabilidades, processos e expectativas técnicas para o início dos projetos. Foi reforçada a importância de estabelecer padrões desde o dia zero para garantir fluidez e consistência no código ao longo do ano.

## 🎮 2. Visão Geral dos Projetos

* Alinhamento da proposta central, gênero e objetivos dos jogos.
* Restrições técnicas e plataformas previstas de lançamento.
* Mapeamento de features estruturais iniciais (movimentação, combate, UI, progressão).
* Definição das metas dos primeiros marcos (Demo do *Ciclo Infinito* e Protótipo do *Loot & Lunch*).

## 👥 3. Papéis, Responsabilidades e Rituais

**Para a Liderança:**

* Monitorar ativamente o progresso dos programadores da Squad.
* **Engenharia de Software:** Levantamento de requisitos, escrita de Histórias de Usuário e definição do escopo da Sprint.

**Para a Gestão de Estagiários/Novatos:**

* Fluxo de Mentoria: `Tentar Fazer ➔ Pesquisar ➔ Tentar com IA ➔ Pedir ajuda ao Monitor`.
* Atividades de nivelamento focadas em: Git, refatoração e implementação progressiva.

**Rituais Ágeis Definidos:**

* **Dailies Assíncronas (Discord):** Devem responder a 4 perguntas base:
  1. *Qual tarefa peguei?*
  2. *Quanto tempo dediquei?*
  3. *O que aprendi/fiz e como fiz (referências/IA)?*
  4. *Qual meu nível de entendimento da solução final?*
* **Sprints (Ciclos de 4 Semanas):** Compostas por reuniões de Início (Planning), Integração Eventual (com Arte/Design), Revisão e Retrospectiva.

## 🏗️ 4. Arquitetura e Organização Técnica

A diretriz principal para esta fase é **FOCAR NO DESENVOLVIMENTO DE SISTEMAS**, reaproveitando estruturas construídas previamente.

* Mapeamento inicial da estrutura de Cenas da Godot e módulos principais.
* Definição da stack metodológica (uso de Componentes, Máquina de Estados e Resources).
* Levantamento e homologação de Plugins de terceiros.
* A documentação técnica inicial residirá na Wiki/Repositório oficial (`dox`).

## ⚙️ 5. Pipeline de Desenvolvimento

* **Gestão de Tarefas:** Trello.
* **Linguagem:** GDScript (avaliação pontual de C# se estritamente necessário).
* **Versionamento:** GitFlow ou modelo híbrido (Branches padronizadas).
* Estabelecimento de políticas de Pull Requests, Code Review e automações básicas.

## ⚠️ 6. Identificação de Riscos e Primeiras Entregas

* Decidido o acompanhamento quinzenal de riscos técnicos (física, IA, performance de entidades).
* Validação de dependências externas via Provas de Conceito (POCs).
* **Meta Imediata:** Colocar os programadores da equipe para caçar/resolver as primeiras *Issues*.
* Foco no conjunto mínimo viável: Movimentação, Câmera, Input e Combat Loop básico.

---

## ✅ 7. Encaminhamentos (Action Items)

As tarefas abaixo foram distribuídas para configuração inicial da infraestrutura técnica do laboratório.

| Responsável | Tarefa / Entregável | Prazo | Status |
| :--- | :--- | :--- | :--- |
| **Gabriel** | Criar Classroom de nivelamento (Git, aulas semanais, exercícios de refatoração). | A definir | ⏳ Pendente |
| **Pedro** | Documentar padrões de código, estilo e nomenclatura de pastas/arquivos. | A definir | ⏳ Pendente |
| **Pedro** | Definir regras de nomenclatura de Branches e boas práticas gerais da Godot. | A definir | ⏳ Pendente |
| **Igor** | Criar Templates Oficiais de **Pull Requests**, **Issues** e anotações `@export`. | A definir | ⏳ Pendente |
| **Todos** | Estudar e validar estratégias técnicas (Máquina de Estados, Componentes e Plugins). | Contínuo | 🔄 Em andamento |

---

## 🔮 8. Backlog para o Futuro (Backlog de Gestão)

* Definir o padrão estrito de uso de **Resources**.
* Finalizar a organização da arquitetura do repositório inicial (templates de scripts genéricos).
* Definir protocolos de integração de Assets (como a Arte entra na Engine sem quebrar a Cena).

## 📅 9. Pauta da Próxima Reunião

1. Planejamento tático das Primeiras Entregas.
2. Definição das **Normas Internas da Equipe**:
   * Regras de SLA de respostas (comunicação assíncrona).
   * Boas práticas de tamanho e frequência de Commits.
   * Procedimentos para reportar, revisar e publicar Hotfixes (correções de bugs críticos).
