#!/usr/bin/env bash
# Executa o build de produção do frontend (React/Vite) e do backend (Spring Boot/Maven).
# Artefatos gerados: frontend/dist/ e backend/target/*.jar

set -e

echo "[build] Instalando dependências e gerando build do frontend..."
(cd frontend && npm ci && npm run build)

echo "[build] Empacotando backend Spring Boot..."
(cd backend && ./mvnw clean package -DskipTests)

echo "[build] Concluído. Artefatos:"
echo "  - frontend/dist/"
echo "  - backend/target/chessmate-1.0.0-SNAPSHOT.jar"
