---
title: "Cargos e Níveis"
nav_parent: Governanca
nav_order: 40
nav_exclude: true
---

## 🏛️ GameLab: Definições de Cargos e Níveis

Voltar para:

- [Governanca](./governanca.md)

> **Documento Oficial**
> Este documento estabelece as diretrizes de atuação, hierarquia e progressão formativa para todos os membros ativos nos projetos do GameLab (ex: Ciclo Infinito, Loot & Lunch).

---

## 🎯 1. Finalidade do Documento

A definição oficial de cargos e níveis de atuação serve para:

- **Padronizar** responsabilidades e alinhar expectativas.
- **Garantir a progressão formativa** técnica e criativa dos participantes.
- **Facilitar** os processos de avaliação, acompanhamento e certificação.
- **Promover transparência** e organização profissional no desenvolvimento dos jogos.

---

## 🧩 2. Estrutura de Cargos (Visão Geral)

O organograma do GameLab permite a acumulação de cargos por um mesmo membro, desde que as responsabilidades estejam claramente divididas, a carga horária seja compatível e haja aprovação prévia da Coordenação.

| Área Técnica     | Área de Design   | Área Artística e Sonora |
| :--------------- | :--------------- | :---------------------- |
| 💻 Programador(a) | 🎲 Game Designer  | 🎨 Artista 2D            |
|                  | 📐 Level Designer | 🎬 Animador(a)           |
|                  | 📱 UI/UX Designer | 🔊 Sound Designer        |
|                  |                  | 🎵 Músico(a)             |

---

## 🛠️ 3. Atribuições por Cargo

As responsabilidades abaixo são inerentes à função, devendo ser exercidas com maior ou menor autonomia dependendo do **Nível** do membro (detalhado na Seção 4).

### 💻 Programador(a)

- **Responsabilidades Principais:** Implementar mecânicas e sistemas centrais (movimentação, IA, UI) conforme o GDD; integrar arte e áudio à engine; garantir performance e estabilidade; manter o versionamento (Git) impecável.
- **Apoio Estratégico:** Desenvolver ferramentas internas/scripts e colaborar na prototipação técnica para validar ideias de Game Design.

### 🎲 Game Designer

- **Responsabilidades Principais:** Definir a visão da experiência do jogador; criar e atualizar o **GDD**; estabelecer regras, progressão e balanceamento (dificuldade/ritmo).
- **Apoio Estratégico:** Conduzir playtests, coletar métricas e refinar o design com base no feedback real.

### 📐 Level Designer

- **Responsabilidades Principais:** Projetar o mapa, o fluxo do jogador e os pontos de interesse; criar o **LDD (Level Design Document)**; montar as cenas e blocagens dentro da engine.
- **Apoio Estratégico:** Ajustar o *pacing* (ritmo) das fases após playtests em forte alinhamento com a equipe de Arte.

### 📱 UI/UX Designer

- **Responsabilidades Principais:** Projetar a usabilidade e estética de interfaces (HUD, menus); criar fluxos, *wireframes* e mockups; garantir acessibilidade.
- **Apoio Estratégico:** Testar usabilidade com usuários finais e acompanhar a Programação durante a implementação da UI.

### 🎨 Artista 2D (incluindo Pixel Art)

- **Responsabilidades Principais:** Estabelecer a identidade visual (personagens, *tilesets*, ícones e cenários); definir paleta de cores e garantir a consistência estética do jogo.
- **Apoio Estratégico:** Adequar a criação de assets às restrições técnicas da engine e organizar a documentação visual (*Art Bible*).

### 🎬 Animador(a)

- **Responsabilidades Principais:** Criar o movimento de personagens e objetos; aplicar os princípios de animação (timing, antecipação, *squash and stretch*) para garantir clareza nas ações do jogo.
- **Apoio Estratégico:** Documentar as árvores de transição de estado (*State Machines*) e alinhar a integração com a Programação.

### 🔊 Sound Designer & 🎵 Músico(a)

- **Responsabilidades Principais:** Definir a atmosfera sonora e musical; compor trilhas originais e loops contínuos; criar *Sound Effects* (SFX) coerentes com o impacto visual.
- **Apoio Estratégico:** Otimizar e tratar os arquivos de áudio para não sobrecarregar a memória do projeto, auxiliando na integração técnica.

---

## 📈 4. Escala de Níveis e Progressão

A progressão de nível **não é automática**. Ela depende da avaliação da Coordenação baseada em: entregas técnicas, autonomia, comunicação, respeito a prazos e impacto no projeto (realizada semestralmente ou por indicação).

### 🌱 Estagiário(a)
>
> **Perfil:** Formação inicial. | **Autonomia:** Muito baixa | **Impacto:** Baixo e supervisionado

- Executa tarefas simples e estritamente delimitadas.
- Atua sempre sob supervisão direta, focando em aprender as ferramentas e o *pipeline* do GameLab.
- Participa das reuniões como ouvinte ativo (aprendizado).

### 🥉 Júnior I, II e III
>
> **Perfil:** Execução guiada até a consistência. | **Autonomia:** Baixa a Média | **Impacto:** Pontual e em Componentes

- **Jr I:** Compreende o fluxo, executa tarefas simples de forma consistente, mas precisa de revisões frequentes.
- **Jr II:** Pega tarefas de média complexidade, entende o "porquê" do que está fazendo e começa a sugerir melhorias.
- **Jr III:** Executa de forma confiável, planeja o próprio trabalho dentro do escopo e identifica bugs antes de comitar.

### 🥈 Pleno I, II, III e IV
>
> **Perfil:** Independência e visão sistêmica. | **Autonomia:** Média a Muito Alta | **Impacto:** Funcionalidades até Estrutura

- **Pleno I:** Entrega funcionalidades completas com previsibilidade, considerando o impacto do seu código/arte nas outras áreas. Apoia novatos.
- **Pleno II:** Atua como referência técnica para os Juniores. Refatora e otimiza processos existentes. Antecipa riscos.
- **Pleno III:** Possui visão global do jogo. Lidera módulos inteiros (ex: Sistema de Combate) e resolve problemas ambíguos.
- **Pleno IV:** Liderança funcional. Define boas práticas do laboratório, revisa *Pull Requests* e mentora ativamente a equipe.

### 🥇 Sênior
>
> **Perfil:** Direção e sustentabilidade. | **Autonomia:** Total | **Impacto:** Global no Projeto

- Toma decisões críticas e define a arquitetura/direção de arte fundamental.
- Antecipa riscos de longo prazo e garante a viabilidade técnica/criativa para a entrega final do jogo.

---

## 👑 5. Estrutura de Liderança (As Squads)

Esses cargos possuem caráter formativo e estratégico, garantindo o alinhamento metodológico adotado pelo GameLab.

A hierarquia flui da seguinte forma:
`Coordenador(a) Geral ➔ Coordenador(a) de Projeto ➔ Líderes de Área ➔ Equipe`

- **Coordenador(a) Geral:** Gestão acadêmica e estratégica. Valida cronogramas, alinha os projetos institucionais, julga o ingresso/desligamento de membros e garante as boas práticas.
- **Coordenador(a) de Projeto:** Gestão do dia a dia do Squad (ex: Ciclo Infinito). Define marcos, prioriza o *backlog*, reporta riscos à gerência geral e blinda a equipe de distrações.
- **Líder de Programação:** Define padrões de arquitetura/código, aprova *Pull Requests* e distribui tarefas técnicas.
- **Líder Criativo:** Guardião do GDD e da experiência do jogador. Valida o design antes da equipe técnica começar a programar.
- **Líder de Arte:** Diretor visual. Mantém a coesão da *Art Bible*, aprova os assets antes de irem para a engine e coordena os braços visuais e sonoros.

---

*Documento mantido por:*
**GameLab-UERJ**
*Laboratório de Desenvolvimento de Jogos Digitais e Processos Gamificados*
