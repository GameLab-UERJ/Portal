GameLab UERJ: Proposta de Estrutura
Organizacional e Diretrizes de
Governança
1. Apresentação e Diagnóstico do Cenário Atual
O GameLab UERJ representa uma iniciativa acadêmica de alto valor formativo,
combinando computação gráfica, engenharia de software, design de interação
e arte digital por professores de engenharia da UERJ.
Com o avanço dos projetos e o aumento do interesse estudantil, identifica-se a
necessidade de formalizar uma estrutura organizacional sustentável.
Atualmente, o laboratório vivencia desafios típicos de iniciativas acadêmicas
em expansão:
● Centralização de Responsabilidades: Acúmulo de funções técnicas e
gerenciais em poucas lideranças, gerando gargalos na tomada de
decisão e sobrecarga individual.
● Indefinição de Escopos: Membros iniciantes muitas vezes enfrentam
falta de clareza sobre suas atribuições imediatas e sobre como suas
entregas se conectam ao objetivo macro do projeto.
● Evasão e Retenção de Talentos: A ausência de uma trilha clara de
progressão e autonomia reduz o engajamento a médio e longo prazo,
incentivando o desligamento prematuro de alunos.
● Documentação e Comunicação Dispersas: Necessidade de centralizar a
documentação viva (GDDs, guias técnicos de arquitetura e repositórios)
e de estruturar a divulgação externa para atração contínua de playtesters
e colaboradores multidisciplinares.
O objetivo deste guia é apresentar uma proposta prática e incremental de
governança que preserve a flexibilidade acadêmica e estabeleça clareza de
papéis, previsibilidade de entregas e um ambiente estimulante para o
desenvolvimento técnico dos alunos.
2. Pilares de Gestão do Laboratório
A estrutura proposta fundamenta-se em quatro pilares centrais:
1. Clareza de Papéis e Descentralização: Cada membro possui escopo
bem delineado de atuação, estimulando autonomia e responsabilidade
sobre módulos específicos.
2. Trilha de Aprendizado e Reconhecimento: Plano de evolução claro que
conecta dedicação prática a ganhos reais de portfólio, liderança e
experiência curricular.
3. Cultura de Documentação Viva: Centralização do conhecimento técnico
e de design em repositórios acessíveis, garantindo que o conhecimento
permaneça no laboratório independentemente da rotatividade natural de
alunos.
4. Ciclos Ágeis e Validação Contínua: Adoção de iterações curtas com
metas tangíveis e rotinas periódicas de testes de gameplay (playtesting)
com formulários estruturados de feedback.
3. Matriz de Funções e Responsabilidades
(Organograma)
Propõe-se a organização do laboratório em áreas de especialidade integradas,
garantindo que cada vertente do desenvolvimento de jogos seja devidamente
assistida:
Coordenação Geral (Docente)
● Escopo: Representação institucional junto à Universidade do Estado do
Rio de Janeiro (UERJ) e ao IME, validação de diretrizes estratégicas,
articulação de editais de fomento, bolsas e relações com entidades
externas.
● Critério de Sucesso: Sustentabilidade institucional do laboratório,
conformidade com os regulamentos acadêmicos e cumprimento dos
objetivos pedagógicos e de pesquisa.
Liderança Técnica (Tech Lead)
● Escopo: Definição da arquitetura de software, padronização de
ferramentas e engines (ex.: Godot, frameworks web e bibliotecas
gráficas), condução de revisões de código (Code Review), infraestrutura
de versionamento (Git/GitHub) e mentoria técnica dos desenvolvedores.
● Critério de Sucesso: Estabilidade dos repositórios, qualidade técnica do
código e entrega dos marcos de engenharia sem bloqueios arquiteturais.
Game Design & Level Design
● Escopo: Elaboração e manutenção contínua dos Game Design
Documents (GDD), balanceamento de sistemas e regras, desenho de
fases/mecânicas e estruturação dos roteiros de playtesting.
● Critério de Sucesso: Clareza documental das mecânicas, protótipos
jogáveis bem equilibrados e validação positiva de ritmo de jogo pelos
testadores.
Arte, Animação & Interface (UI/UX)
● Escopo: Criação da identidade visual dos jogos, concept art, produção
de sprites/pixel art, modelos 3D, animações, assets de interface e
otimização para importação eficiente na engine.
● Critério de Sucesso: Coerência estética dos projetos, entrega de assets
organizados e dentro das especificações técnicas exigidas pela
programação.
Design de Áudio & Trilha Sonora
● Escopo: Composição musical original, criação e mixagem de efeitos
sonoros (SFX) e integração do pipeline de áudio no motor do jogo.
● Critério de Sucesso: Imersão sonora equilibrada e integração técnica
fluida dos eventos de áudio com a jogabilidade.
Desenvolvimento de Software (Devs)
● Escopo: Implementação das mecânicas descritas no GDD, lógica de
física, inteligência artificial, interface com o usuário, correção de bugs e
manutenção do fluxo de commits organizados.
● Critério de Sucesso: Conclusão pontual das tarefas acordadas nas
sprints e baixo índice de regressão de bugs.
Comunicação, Comunidade & Marketing
● Escopo: Gestão dos canais de comunicação institucional e redes sociais,
divulgação de marcos de desenvolvimento, recrutamento de playtesters
e atração de novos colaboradores de diferentes áreas da universidade.
● Critério de Sucesso: Frequência de divulgação qualificada, captação de
dados em sessões de playtest e visibilidade positiva do GameLab na
comunidade acadêmica e externa.
4. Trilha de Desenvolvimento e Plano de
Evolução Interna
Para conferir previsibilidade e incentivar o crescimento contínuo dos
estudantes, estabelece-se um fluxo evolutivo de três estágios:
[ Membro Trainee ] ───> [ Membro Efetivo ] ───> [ Líder de Projeto / Área ]
1. Membro Trainee / Colaborador Inicial:
○ Ingresso: Alunos que ingressam via chamada aberta ou contato
contínuo que demonstrem motivação para aprender.
○ Atuação: Passa por um período de ambientação com a stack do
projeto, realizando tarefas delimitadas sob a supervisão de um
membro pleno ou da liderança técnica.
○ Objetivo: Dominar os fluxos de Git, boas práticas da equipe e
ferramentas essenciais do laboratório.
2. Membro Efetivo (Pleno):
○ Transição: Conclusão satisfatória do ciclo inicial de tarefas e
demonstração de autonomia técnica básica.
○ Atuação: Assume a titularidade sobre módulos inteiros de
gameplay, conjuntos de assets visuais/sonoros ou subsistemas
específicos.
○ Objetivo: Desenvolver soluções completas, participar ativamente
do planejamento e sugerir melhorias de produto.
3. Líder de Projeto / Líder de Área:
○ Transição: Demonstração consistente de proficiência técnica,
rigor com prazos e capacidade de comunicação e facilitação.
○ Atuação: Coordena o fluxo de trabalho de uma área específica ou
lidera o roadmap de um jogo ativo, apoiando o Tech Lead e
prestando contas à Coordenação Docente.
○ Objetivo: Exercitar competências de liderança de projetos, gestão
ágil e mentoria de novos integrantes.
5. Metodologia Operacional e Ciclo de Entregas
Sugere-se a adoção de práticas ágeis adaptadas ao contexto universitário,
minimizando reuniões desnecessárias e maximizando o tempo de produção:
● Sprints Quinzenais: Ciclos de 2 semanas com metas objetivas
acordadas no início do período e retrospectiva breve ao final.
● Acompanhamento Assíncrono: Uso de quadro Kanban compartilhado
(como Trello, GitHub Projects ou Notion) com colunas claras: Backlog,
Em Progresso, Em Revisão/Teste e Concluído.
● Rotina de Playtests Periódicos: A cada fechamento de versão mínima
jogável (MVP), abertura de testes internos e externos acompanhados de
formulário padronizado de feedback (métricas de satisfação, usabilidade
e identificação de bugs).
● Repositório Central de Documentação: Centralização de manuais de
onboarding, padrões de commit e GDDs no Portal, em ambiente único
acessível a todos os membros. Os repositórios dos jogos concentram
código e documentação técnica de implementação.
6. Plano de Ação para Implementação
A implantação desta proposta pode ser conduzida de maneira gradual em três
etapas:
Fase Ação Principal Entregável / Resultado
Fase 1: Validação
Estratégica
Apresentação e
alinhamento do escopo
com o Professor
Coordenador e o Tech
Lead.
Ajustes incorporados e
aprovação do modelo de
governança.
Fase Ação Principal Entregável / Resultado
Fase 2: Mapeamento de
Membros (Censo)
Aplicação de formulário
rápido com os membros
atuais para declarar áreas
de interesse e
competências.
Organograma inicial
preenchido e
redistribuição de tarefas
acumuladas.
Fase 3: Formalização e
Operação
Publicação das diretrizes
no ambiente de
documentação do
GameLab e início do ciclo
quinzenal.
Início dos fluxos com
papéis delimitados e
planejamento de abertura
para novos playtesters.
Documento elaborado para apreciação da Coordenação e Lideranças do
GameLab UERJ.