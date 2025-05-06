# 🚀 Projeto NestJS + PostgreSQL com Docker Compose

Este projeto é um ambiente multi-container configurado com Docker e Docker Compose. Ele utiliza uma API desenvolvida com NestJS e um banco de dados PostgreSQL.

## 🧱 Tecnologias Utilizadas

- Node.js 22
- NestJS
- PostgreSQL 14 (imagem Bitnami)
- Docker e Docker Compose
- Dockerfile Multi-stage com Alpine
- Volumes e redes customizadas
- Variáveis de ambiente

## ⚙️ Como Executar o Projeto

### 1. Clone o repositório

```bash
git clone git@github.com:jeanmbiz/desafio-docker.git
```

### 2. Crie o arquivo .env utilizando o arquivo .env.example

### 3. Suba os containers

```bash
docker-compose up -d --build
```

### 4. Testando a Conexão

```bash
(http://localhost:3000)
```