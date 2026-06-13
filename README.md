<a href="https://classroom.github.com/online_ide?assignment_repo_id=99999999&assignment_repo_type=AssignmentRepo"><img src="https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg" width="200"/></a> <a href="https://classroom.github.com/open-in-codespaces?assignment_repo_id=99999999"><img src="https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg" width="250"/></a>

---

# ♟️ ChessMate 👨‍💻

> [!NOTE]
> Plataforma de xadrez online que permite a jogadores de todos os níveis disputar partidas em tempo real, acompanhar estatísticas e evoluir seu rating. **Jogue, aprenda e evolua no tabuleiro.**

<table>
  <tr>
    <td width="800px">
      <div align="justify">
        O <b>ChessMate</b> é uma plataforma de xadrez online inspirada no <a href="https://www.chess.com">Chess.com</a>, desenvolvida como projeto acadêmico da disciplina <i>Projeto de Software</i> da <b>PUC Minas</b>, sob orientação do <a href="https://github.com/joaopauloaramuni">Prof. Dr. João Paulo Aramuni</a>. O sistema oferece partidas em tempo real via WebSocket, matchmaking por rating ELO, análise de partidas com engine de xadrez integrada e um painel de evolução do jogador. A arquitetura segue o modelo <b>cliente-servidor</b> com backend em <b>Spring Boot</b>, frontend em <b>React</b>, banco de dados <b>PostgreSQL</b> e infraestrutura containerizada com <b>Docker</b> hospedada na <b>AWS</b>. O objetivo é demonstrar na prática os conceitos de <i>engenharia de software</i>, <i>design de APIs REST</i>, <i>comunicação em tempo real</i> e <i>boas práticas de desenvolvimento</i>.
      </div>
    </td>
    <td>
      <div>
        <img src="https://joaopauloaramuni.github.io/image/logo_ES_vertical.png" alt="Logo ChessMate" width="120px"/>
      </div>
    </td>
  </tr>
</table>

---

## 🚧 Status do Projeto

[![Versão](https://img.shields.io/badge/Versão-v1.0.0-blue?style=for-the-badge)](https://github.com/vitorazevedop7/ChessMate/releases)
![Java](https://img.shields.io/badge/Java-17-007ec6?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-3.3.5-007ec6?style=for-the-badge&logo=springboot&logoColor=white)
![React](https://img.shields.io/badge/React-18.3.1-007ec6?style=for-the-badge&logo=react&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-007ec6?style=for-the-badge&logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-24.0-007ec6?style=for-the-badge&logo=docker&logoColor=white)
![GitHub license](https://img.shields.io/github/license/vitorazevedop7/ChessMate?style=for-the-badge&color=007ec6&logo=opensourceinitiative)
![GitHub last commit](https://img.shields.io/github/last-commit/vitorazevedop7/ChessMate?style=for-the-badge&logo=clockify)

---

## 📚 Índice
- [Links Úteis](#-links-úteis)
- [Sobre o Projeto](#-sobre-o-projeto)
- [Funcionalidades Principais](#-funcionalidades-principais)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Arquitetura](#-arquitetura)
  - [Exemplos de diagramas](#exemplos-de-diagramas)
- [Instalação e Execução](#-instalação-e-execução)
  - [Pré-requisitos](#pré-requisitos)
  - [Variáveis de Ambiente](#-variáveis-de-ambiente)
    - [1 Back-end (Spring Boot)](#1-back-end-spring-boot)
    - [2 Front-end (React, Vite)](#2-front-end-react-vite)
  - [Instalação de Dependências](#-instalação-de-dependências)
    - [Front-end (React)](#front-end-react)
    - [Back-end (Spring Boot)](#back-end-spring-boot)
  - [Inicialização do Banco de Dados (PostgreSQL)](#-inicialização-do-banco-de-dados-postgresql)
  - [Como Executar a Aplicação](#-como-executar-a-aplicação)
    - [Terminal 1: Back-end (Spring Boot)](#terminal-1-back-end-spring-boot)
    - [Terminal 2: Front-end (React, Vite)](#terminal-2-front-end-react-vite)
    - [Execução Local Completa com Docker Compose (Incluindo Banco de Dados)](#-execução-local-completa-com-docker-compose-incluindo-banco-de-dados)
    - [Passos para build, inicialização e execução](#-passos-para-build-inicialização-e-execução)
- [Deploy](#-deploy)
- [Estrutura de Pastas](#-estrutura-de-pastas)
- [Demonstração](#-demonstração)
  - [Aplicação Web](#-aplicação-web)
  - [Exemplo de saída no Terminal (Back-end / API)](#-exemplo-de-saída-no-terminal-back-end--api)
- [Testes](#-testes)
- [Documentações utilizadas](#-documentações-utilizadas)
- [Autores](#-autores)
- [Contribuição](#-contribuição)
- [Agradecimentos](#-agradecimentos)
- [Licença](#-licença)

---

## 🔗 Links Úteis
* 🌐 **Demo Online:** [Acesse o ChessMate](https://chessmate.vitorazevedo.dev)
  > 💻 **Descrição:** Instância de demonstração hospedada na AWS EC2 com domínio customizado.
* 📖 **Documentação da API:** [Swagger UI](https://chessmate.vitorazevedo.dev/swagger-ui.html)
  > 📚 **Descrição:** Documentação interativa dos endpoints REST gerada pelo SpringDoc OpenAPI.
* 📐 **Diagramas PlantUML:** [docs/diagramas/diagramas.md](./docs/diagramas/diagramas.md)
  > 🗂️ **Descrição:** Todos os diagramas UML do projeto organizados em Markdown.

---

## 📝 Sobre o Projeto

O **ChessMate** nasceu da necessidade de explorar, em contexto acadêmico, a construção de um sistema web complexo com comunicação bidirecional em tempo real. O projeto simula uma plataforma de xadrez online completa, cobrindo desde o matchmaking de jogadores até a análise pós-partida com engine integrada.

**Por que ele existe:** a disciplina *Projeto de Software* exige a aplicação prática de padrões de projeto, modelagem UML e boas práticas de engenharia de software em um sistema com escopo realista.

**Qual problema resolve:** facilita o acesso ao xadrez online com uma plataforma leve, sem anúncios e com foco em aprendizado — o jogador vê feedback imediato do nível de cada jogada.

**Contexto:** projeto individual acadêmico, PUC Minas, 2025/1, disciplina Projeto de Software.

**Onde pode ser utilizado:** clubes de xadrez, escolas e plataformas educacionais que queiram uma solução open-source de xadrez online.

> [!NOTE]
> Este é um projeto fictício com fins acadêmicos. Nenhum código de produção está incluído no repositório — apenas documentação e diagramas.

---

## ✨ Funcionalidades Principais

- ♟️ **Partidas em Tempo Real:** comunicação bidirecional via WebSocket (STOMP sobre SockJS) com movimentação de peças validada pelo servidor.
- 🔐 **Autenticação Segura:** registro, login e recuperação de senha com JWT + Spring Security.
- 📊 **Rating ELO:** cálculo automático de rating após cada partida com histórico completo de evolução.
- 🤖 **Análise de Partidas:** engine Stockfish integrada via API interna para avaliação de lances e sugestão de melhores jogadas.
- 🔍 **Matchmaking:** pareamento automático por faixa de rating (±100 pontos) com fila de espera.
- 📈 **Painel do Jogador:** dashboard com estatísticas de vitórias/derrotas/empates, gráfico de rating e histórico de partidas.
- 💬 **Chat na Partida:** mensagens em tempo real entre os jogadores durante a partida via WebSocket.
- 🏆 **Torneios:** criação e gestão de torneios do tipo eliminatória simples e suíço.

---

## 🛠 Tecnologias Utilizadas

As seguintes ferramentas, frameworks e bibliotecas foram utilizados na construção deste projeto.

### 💻 Front-end

* **Biblioteca:** React 18.3.1
* **Linguagem:** TypeScript 5.x
* **Estilização:** Tailwind CSS 3.x + shadcn/ui
* **Gerenciamento de Estado:** Zustand 4.x
* **Build Tool:** Vite 5.x
* **Comunicação em Tempo Real:** SockJS-client + STOMP.js
* **Tabuleiro de Xadrez:** react-chessboard + chess.js

### 🖥️ Back-end

* **Linguagem/Runtime:** Java 17 (JDK)
* **Framework:** Spring Boot 3.3.5
* **WebSocket:** Spring WebSocket + STOMP
* **Banco de Dados:** PostgreSQL 16
* **ORM:** Hibernate / Spring Data JPA
* **Autenticação:** JWT (JJWT 0.12) + Spring Security 6
* **Migração de Schema:** Flyway 10.x
* **Documentação da API:** SpringDoc OpenAPI 2.x (Swagger UI)

### ⚙️ Infraestrutura & DevOps

* **Containerização:** Docker 24 + Docker Compose 2.x
* **Cloud:** AWS EC2 (aplicação) + AWS RDS PostgreSQL (banco) + AWS S3 (assets estáticos)
* **CI/CD:** GitHub Actions
* **Proxy Reverso:** Nginx (roteamento frontend/backend)

---

## 🏗 Arquitetura

O ChessMate adota uma **arquitetura em camadas** (Layered Architecture) no back-end, seguindo o padrão MVC com separação clara entre **Controller**, **Service**, **Repository** e **Model**. O front-end é uma **SPA (Single Page Application)** em React que se comunica com o back-end via **REST API** (operações CRUD) e **WebSocket/STOMP** (eventos de partida em tempo real).

**Principais componentes:**
- **API Gateway:** Spring MVC expõe endpoints REST sob `/api/v1/`
- **WebSocket Broker:** Spring WebSocket roteia mensagens de jogo via tópicos STOMP
- **Game Engine Service:** serviço interno que valida movimentos e chama o Stockfish para análise
- **ELO Service:** calcula e persiste o rating dos jogadores após cada partida
- **Auth Service:** emite e valida tokens JWT em cada requisição

**Padrões de design adotados:** Repository Pattern, Service Layer, DTO (Data Transfer Object), Strategy (validação de movimentos por tipo de peça), Observer (eventos de partida via WebSocket).

### Exemplos de diagramas

Para melhor visualização da estrutura do sistema, os diagramas estão organizados abaixo. Os arquivos PNG exportados do PlantUML estão em `/docs/diagramas/`.

| Diagrama de Arquitetura | Detalhe da Arquitetura |
| :---: | :---: |
| **Visão Geral (Macro)** | **Camada de Serviço** |
| <img src="./docs/diagramas/diagrama-arquitetura-geral.png" alt="Diagrama de Visão Geral do Sistema" width="300px"> | <img src="./docs/diagramas/diagrama-camada-servico.png" alt="Diagrama de Componentes da Camada de Serviço" width="300px"> |
| **Modelo de Dados (DER)** | **Fluxo de Autenticação** |
| <img src="./docs/diagramas/diagrama-entidade-relacionamento.png" alt="Diagrama de Entidade-Relacionamento" width="300px"> | <img src="./docs/diagramas/diagrama-sequencia-login.png" alt="Diagrama de Sequência de Login" width="300px"> |
| **Infraestrutura AWS** | **Fluxo de Partida (WebSocket)** |
| <img src="./docs/diagramas/diagrama-infraestrutura-aws.png" alt="Diagrama de Deploy na AWS" width="300px"> | <img src="./docs/diagramas/diagrama-sequencia-partida.png" alt="Diagrama de Sequência da Partida" width="300px"> |

---

## 🔧 Instalação e Execução

### Pré-requisitos

* **Java JDK:** Versão **17** ou superior (necessário para o Back-end Spring Boot)
* **Node.js:** Versão LTS **v18.x** ou superior (necessário para o Front-end React)
* **Gerenciador de Pacotes:** npm ou yarn
* **Docker** (recomendado para rodar o PostgreSQL localmente)

---

### 🔑 Variáveis de Ambiente

#### 1 Back-end (Spring Boot)

Configure em `backend/src/main/resources/application.yml` ou como variáveis de ambiente do sistema:

| Variável | Descrição | Exemplo |
| :--- | :--- | :--- |
| `SERVER_PORT` | Porta onde o Back-end será executado. | `8080` |
| `SPRING_DATASOURCE_URL` | URL de conexão JDBC com o PostgreSQL. | `jdbc:postgresql://localhost:5432/chessmate` |
| `SPRING_DATASOURCE_USERNAME` | Usuário do banco de dados. | `postgres` |
| `SPRING_DATASOURCE_PASSWORD` | Senha do banco de dados. | `senha-segura-123` |
| `JWT_SECRET` | Chave secreta para assinatura dos tokens JWT. | `chave_super_segura_base64` |
| `JWT_EXPIRATION_MS` | Tempo de expiração do token em milissegundos. | `86400000` |

#### 2 Front-end (React, Vite)

Crie um arquivo **`.env.local`** na raiz de `/frontend`:

| Variável | Descrição | Exemplo |
| :--- | :--- | :--- |
| `VITE_API_URL` | URL base da API REST do back-end. | `http://localhost:8080/api/v1` |
| `VITE_WS_URL` | URL do endpoint WebSocket. | `http://localhost:8080/ws` |

---

### 📦 Instalação de Dependências

1. **Clone o Repositório:**

```bash
git clone https://github.com/vitorazevedop7/ChessMate.git
cd ChessMate
```

#### Front-end (React)

```bash
cd frontend
npm install
cd ..
```

#### Back-end (Spring Boot)

```bash
cd backend
./mvnw clean install
cd ..
```

---

### 💾 Inicialização do Banco de Dados (PostgreSQL)

Suba o container do PostgreSQL com Docker:

```bash
docker run --name chessmate_db \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=senha-segura-123 \
  -e POSTGRES_DB=chessmate \
  -p 5432:5432 \
  -d postgres:16
```

O Flyway executa as migrações automaticamente na inicialização do Spring Boot. Para rodar manualmente:

```bash
cd backend
./mvnw flyway:migrate
```

---

### ⚡ Como Executar a Aplicação

Execute em **dois terminais separados**:

#### Terminal 1: Back-end (Spring Boot)

```bash
cd backend
./mvnw spring-boot:run
```
🚀 *O back-end estará disponível em **http://localhost:8080**. Swagger UI em **http://localhost:8080/swagger-ui.html**.*

---

#### Terminal 2: Front-end (React, Vite)

```bash
cd frontend
npm run dev
```
🎨 *O front-end estará disponível em **http://localhost:5173**.*

---

#### 🐳 Execução Local Completa com Docker Compose (Incluindo Banco de Dados)

Certifique-se de que o Docker está em execução e, na raiz do projeto:

```bash
# No Mac/Windows: abra o Docker Desktop
# No Linux:
sudo systemctl start docker
```

#### 📦 Passos para build, inicialização e execução

1. Acesse a raiz do projeto:

```bash
cd /caminho/para/ChessMate
```

2. Suba todos os serviços (back-end, front-end e banco de dados):

```bash
docker-compose up --build -d
```

> [!NOTE]
> `--build` regenera as imagens com o código mais recente; `-d` executa em segundo plano.

3. Verifique os containers:

```bash
docker ps
```

4. Acompanhe as migrações do banco via logs:

```bash
docker logs chessmate-backend
```

5. Acesse a aplicação em **http://localhost:3000**

6. Para encerrar:

```bash
docker-compose down
```

---

## 🚀 Deploy

### Build para Produção

```bash
# 1. Build do Front-end (React/Vite) — gera /frontend/dist
cd frontend
npm run build

# 2. Build do Back-end (Spring Boot/Maven) — gera /backend/target/*.jar
cd ../backend
./mvnw clean package -DskipTests
```

### Configuração do Ambiente de Produção (AWS)

> 🔑 **Variáveis cruciais no EC2:** `SPRING_DATASOURCE_URL` (RDS endpoint), `SPRING_DATASOURCE_PASSWORD`, `JWT_SECRET` e `VITE_API_URL` (domínio de produção).

### Execução em Produção

```bash
# Back-end Spring Boot
java -jar backend/target/chessmate-1.0.0-SNAPSHOT.jar

# Front-end — servido pelo Nginx configurado no docker-compose de produção
# Os arquivos estáticos de /frontend/dist são publicados no AWS S3 + CloudFront
```

---

## 📂 Estrutura de Pastas

```
ChessMate/
├── .gitignore                   # 🧹 Ignora node_modules, target, .env, etc.
├── LICENSE                      # ⚖️ Licença MIT.
├── README.md                    # 📘 Documentação principal.
├── docker-compose.yml           # 🐳 Orquestra backend + frontend + PostgreSQL.
│
├── /docs                        # 📚 Documentação técnica e diagramas
│   └── /diagramas               # 🖼️ PNGs exportados do PlantUML
│       ├── diagramas.md         # 📐 Índice dos diagramas PlantUML.
│       ├── diagrama-arquitetura-geral.png
│       ├── diagrama-camada-servico.png
│       ├── diagrama-entidade-relacionamento.png
│       ├── diagrama-sequencia-login.png
│       ├── diagrama-sequencia-partida.png
│       └── diagrama-infraestrutura-aws.png
│
├── /frontend                    # 📁 Aplicação React
│   ├── .env.example             # 🧩 Variáveis de ambiente do front-end.
│   ├── Dockerfile               # 🐳 Docker build do front-end.
│   ├── package.json             # 📦 Dependências e scripts npm.
│   └── /src
│       ├── /components          # 🧱 Componentes reutilizáveis (Tabuleiro, Modal, Navbar…).
│       ├── /pages               # 📄 Páginas: Home, Game, Profile, Tournament…
│       ├── /services            # 🔌 Chamadas HTTP (axios) e WebSocket (STOMP).
│       └── /hooks               # 🎣 Hooks: useGame, useAuth, useWebSocket…
│
└── /backend                     # 📁 Aplicação Spring Boot
    ├── .env.example             # 🧩 Variáveis de ambiente do back-end.
    ├── Dockerfile               # 🐳 Docker build do back-end.
    ├── pom.xml                  # 🛠️ Dependências e configuração Maven.
    └── /src/main/java/com/chessmate
        ├── /controller          # 🎮 Endpoints REST e WebSocket handlers.
        ├── /service             # ⚙️ Lógica de negócio (ELO, Game, Auth…).
        ├── /repository          # 🗄️ Repositórios JPA (UserRepo, GameRepo…).
        ├── /model               # 🧬 Entidades JPA (User, Game, Move, Tournament…).
        ├── /dto                 # ✉️ Data Transfer Objects (request/response).
        └── /config              # 🔧 Configurações: SecurityConfig, WebSocketConfig, SwaggerConfig…
```

---

## 🎥 Demonstração

> [!WARNING]
> As imagens abaixo serão adicionadas ao repositório após a conclusão dos diagramas e wireframes. Todos os arquivos PNG ficarão em `/docs/diagramas/`.

### 🌐 Aplicação Web

| Tela | Captura de Tela |
| :---: | :---: |
| **Página Inicial (Home)** | **Tela de Login** |
| <img src="./docs/diagramas/tela-home.png" alt="Tela Inicial do ChessMate" width="300px"> | <img src="./docs/diagramas/tela-login.png" alt="Tela de Login" width="300px"> |
| **Tabuleiro (Partida em Andamento)** | **Dashboard do Jogador** |
| <img src="./docs/diagramas/tela-partida.png" alt="Tabuleiro de Xadrez" width="300px"> | <img src="./docs/diagramas/tela-dashboard.png" alt="Dashboard do Jogador" width="300px"> |

### 💻 Exemplo de Saída no Terminal (Back-end / API)

#### 1. Iniciar uma partida via API REST

```bash
curl -X POST 'http://localhost:8080/api/v1/games' \
     -H 'Authorization: Bearer <jwt-token>' \
     -H 'Content-Type: application/json' \
     -d '{"opponentId": 42, "timeControl": "BLITZ_5_0"}'
```

**Saída Esperada:**
```json
{
  "gameId": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
  "status": "WAITING_FOR_OPPONENT",
  "whitePlayer": { "id": 1, "username": "vitorazevedo", "rating": 1450 },
  "blackPlayer": { "id": 42, "username": "opponent_user", "rating": 1390 },
  "timeControl": "BLITZ_5_0",
  "createdAt": "2025-06-13T15:30:00Z"
}
```

#### 2. Realizar um movimento via WebSocket (STOMP)

```bash
# Destino STOMP: /app/game/{gameId}/move
{
  "from": "e2",
  "to": "e4",
  "promotion": null
}
```

**Broadcast no tópico `/topic/game/{gameId}`:**
```json
{
  "type": "MOVE",
  "move": { "from": "e2", "to": "e4", "san": "e4" },
  "fen": "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq e3 0 1",
  "evaluation": "+0.2",
  "nextTurn": "BLACK"
}
```

---

## 🧪 Testes

### Testes Unitários e de Integração (Back-end)

```bash
cd backend
./mvnw test
```
*Ferramenta: JUnit 5 + Mockito + Spring Boot Test*

### Testes de Componentes (Front-end)

```bash
cd frontend
npm run test
```
*Ferramenta: Vitest + React Testing Library*

### Testes End-to-End (E2E)

```bash
cd frontend
npm run test:e2e
```
*Ferramenta: Playwright*

---

## 🔗 Documentações utilizadas

* 📖 **Framework (Back-end):** [Documentação Oficial do Spring Boot](https://docs.spring.io/spring-boot/docs/current/reference/html/)
* 📖 **WebSocket:** [Spring WebSocket Reference](https://docs.spring.io/spring-framework/reference/web/websocket.html)
* 📖 **Framework (Front-end):** [Documentação Oficial do React](https://react.dev/reference/react)
* 📖 **Build Tool:** [Guia de Configuração do Vite](https://vitejs.dev/config/)
* 📖 **Banco de Dados:** [Documentação do PostgreSQL 16](https://www.postgresql.org/docs/16/)
* 📖 **Containerização:** [Documentação de Referência do Docker](https://docs.docker.com/)
* 📖 **Segurança:** [Spring Security Reference](https://docs.spring.io/spring-security/reference/)
* 📖 **Migração:** [Documentação do Flyway](https://documentation.red-gate.com/flyway)
* 📖 **Padrão de Commits:** [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
* 📐 **Diagramas:** [docs/diagramas/diagramas.md](./docs/diagramas/diagramas.md)

---

## 👥 Autores

| 👤 Nome | 🖼️ Foto | :octocat: GitHub | 💼 LinkedIn | 📤 Gmail |
|---------|----------|-----------------|-------------|-----------|
| Vitor Azevedo | <div align="center"><img src="https://github.com/vitorazevedop7.png" width="70px" height="70px" style="border-radius:50%"></div> | <div align="center"><a href="https://github.com/vitorazevedop7"><img src="https://joaopauloaramuni.github.io/image/github6.png" width="50px" height="50px"></a></div> | <div align="center"><a href="https://www.linkedin.com/in/vitorazevedop7"><img src="https://joaopauloaramuni.github.io/image/linkedin2.png" width="50px" height="50px"></a></div> | <div align="center"><a href="mailto:vitorviana7137@gmail.com"><img src="https://joaopauloaramuni.github.io/image/gmail3.png" width="50px" height="50px"></a></div> |

---

## 🤝 Contribuição

1. Faça um `fork` do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/minha-feature`).
3. Commit suas mudanças (`git commit -m 'feat: Adiciona nova funcionalidade X'`). **(Utilize [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/))**
4. Faça o `push` para a branch (`git push origin feature/minha-feature`).
5. Abra um **Pull Request (PR)**.

> [!IMPORTANT]
> 📝 **Regras:** Por favor, verifique o arquivo [`CONTRIBUTING.md`](./CONTRIBUTING.md) para detalhes sobre nosso guia de estilo de código e o processo de submissão de PRs.

---

## 🙏 Agradecimentos

Gostaria de agradecer aos seguintes canais e pessoas que foram fundamentais para o desenvolvimento deste projeto:

* [**Engenharia de Software PUC Minas**](https://www.instagram.com/engsoftwarepucminas/) — Pelo apoio institucional, estrutura acadêmica e fomento à inovação e boas práticas de engenharia.
* [**Prof. Dr. João Paulo Aramuni**](https://github.com/joaopauloaramuni) — Pelos valiosos ensinamentos sobre **Arquitetura de Software**, **Padrões de Projeto** e **Projeto de Software**.
* [**Chess.com**](https://www.chess.com) — Pela inspiração no design e na experiência de usuário da plataforma.
* [**Código Fonte TV**](https://codigofonte.tv/) — Pelo vasto conteúdo e cobertura de notícias, tutoriais e apoio à comunidade de **Desenvolvimento Web**.

---

## 📄 Licença

Este projeto é distribuído sob a **[Licença MIT](./LICENSE)**.

---
