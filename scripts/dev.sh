#!/usr/bin/env bash
# Inicia o ambiente de desenvolvimento completo:
# sobe o PostgreSQL via Docker, depois o backend (Spring Boot) e o frontend (React) em paralelo.

set -e

echo "[dev] Subindo banco de dados PostgreSQL..."
docker-compose up -d db

echo "[dev] Aguardando PostgreSQL ficar disponível..."
until docker exec chessmate-db pg_isready -U postgres > /dev/null 2>&1; do
  sleep 1
done

echo "[dev] Iniciando backend (Spring Boot)..."
(cd backend && ./mvnw spring-boot:run) &

echo "[dev] Iniciando frontend (React / Vite)..."
(cd frontend && npm run dev) &

wait
