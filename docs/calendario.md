---
title: Calendario
nav_parent: Projetos
nav_order: 10
nav_exclude: true
---

## 📅 Calendário de Entregas: Ciclo Infinito

Voltar para:

- [Projetos](./projetos.md)

> Visão macro do cronograma de desenvolvimento do projeto ao longo de 52 semanas. As datas e os marcos de entrega (Milestones) guiam as metas de cada Squad.

```mermaid
gantt
    title Ciclo Infinito – Cronograma Geral de Desenvolvimento (52 Semanas)
    dateFormat  YYYY-MM-DD
    axisFormat  %b/%y

    section Pré-Produção
    Fechamento da Demo (GDD & Tech)    :d1, 2026-03-23, 4w
    Marco - Fim da Pré-Produção        :milestone, m1, after d1, 0d

    section Vertical Slice
    Prototipagem Core (Parte 1)        :vs1, after d1, 4w
    Integração Arte/Código (Parte 2)   :vs2, after vs1, 4w
    Consolidação & Feedback            :vs3, after vs2, 6w
    Marco - Vertical Slice Aprovada    :milestone, m2, after vs3, 0d

    section Produção de Conteúdo
    Expansão de Sistemas Base          :sys, after vs3, 4w
    Criação de Fases e Inimigos        :cont, after sys, 4w

    section Polimento
    Polimento Visual e Bugfixing       :pol, after cont, 4w
    Feature Lock (Congelamento)        :lock, after pol, 4w
    Marco - Fim da Produção            :milestone, m3, after lock, 0d

    section Testes & Lançamento
    Alpha (Jogável Início ao Fim)      :alpha, after lock, 5w
    Beta (Fechamento de Bugs Sérios)   :beta, after alpha, 5w
    Release Candidate (Build Final)    :rc, after beta, 7w
    Marco - Lançamento (Gold)          :milestone, m4, after rc, 0d
```

---

## 🎯 Definição dos Grandes Marcos (Milestones)

Para manter o escopo sob controle, a equipe de Coordenação avalia o sucesso do projeto com base nas seguintes entregas estruturais:

- **♦️ Fim da Pré-Produção:** O Game Design Document (GDD) está consolidado, a arquitetura técnica foi definida e a equipe entende claramente o que precisa ser construído.
- **♦️ Vertical Slice Aprovada:** O momento mais importante do projeto. Temos um trecho de *gameplay* totalmente polido (com arte final, som e mecânicas completas) que representa a visão final do jogo. Se a Vertical Slice for divertida, o jogo inteiro será.
- **♦️ Fim da Produção (Feature Lock):** A partir desta data, **nenhuma funcionalidade, mecânica ou asset novo entra no jogo**. A equipe de Design e Arte não cria coisas novas, e a equipe de Programação se dedica 100% à correção de bugs e performance.
- **♦️ Lançamento (Gold):** O jogo está estável, polido e pronto para ser publicado no nosso itch.io oficial.
