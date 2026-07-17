---
title: Organograma
nav_parent: Governanca
nav_order: 80
---

## Organograma do GameLab

Voltar para:

- [Governanca](./governanca.md)

Esta pagina apresenta a estrutura organizacional do laboratorio para consulta rapida.

```mermaid
graph TD
    classDef coordGeral fill:#3d2a6d,stroke:#fff,stroke-width:2px,color:#fff,font-weight:bold;
    classDef eco fill:#9b2915,stroke:#fff,stroke-width:2px,color:#fff;
    classDef coordProj fill:#2a3f6f,stroke:#fff,stroke-width:2px,color:#fff;
    classDef lider fill:#1a1a1c,stroke:#c9a43b,stroke-width:1px,color:#fff;
    classDef membro fill:#f4f1e6,stroke:#333,stroke-width:1px,color:#000;

    COORD[Coordenacao Geral]:::coordGeral
    GECO[Gestao de Ecossistema]:::eco

    subgraph GESTAO [Nucleo de Gestao de Ecossistema]
        COM[Gestao de Comunicacao e Marca]:::eco
        TAL[Gestao de Talentos e Admissao]:::eco
        MEM[Gestao de Processos e Memoria Tecnica]:::eco
    end

    subgraph PROD [Desenvolvimento de Projetos]
        CP[Coordenacao de Projeto]:::coordProj

        LPROG[Lideranca de Programacao]:::lider
        LCRIA[Lideranca Criativa]:::lider
        LARTE[Lideranca de Arte]:::lider

        CP --> LPROG & LCRIA & LARTE

        LPROG --> PROG[Programadores]:::membro
        LCRIA --> GD[Design de Jogo e Fases]:::membro & UX[UX e Narrativa]:::membro
        LARTE --> ART2D[Arte 2D/3D]:::membro & ANIM[Animacao]:::membro & UIART[UI Artist]:::membro & AUD[Som e Trilha]:::membro
    end

    COORD --> GECO
    COORD --> CP

    GECO --> COM & TAL & MEM
```

- [Exibir no viewer do Github](https://github.com/brenoASantana/gamelab-portal/blob/main/docs/organograma.mmd)
