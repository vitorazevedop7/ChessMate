#!/usr/bin/env bash
# Deploy em produção na AWS:
#   1. Sincroniza os assets estáticos do frontend com o S3 + invalida cache CloudFront
#   2. Copia o JAR do backend para a instância EC2 e reinicia o serviço systemd

set -e

S3_BUCKET="s3://chessmate-frontend-prod"
CLOUDFRONT_DIST_ID="EXAMPLEID123456"
EC2_HOST="ec2-user@ec2-xx-xx-xx-xx.compute-1.amazonaws.com"
JAR_PATH="backend/target/chessmate-1.0.0-SNAPSHOT.jar"
REMOTE_DIR="/opt/chessmate"

echo "[deploy] Sincronizando frontend com S3..."
aws s3 sync frontend/dist/ "$S3_BUCKET" --delete --cache-control "max-age=31536000"

echo "[deploy] Invalidando cache CloudFront..."
aws cloudfront create-invalidation --distribution-id "$CLOUDFRONT_DIST_ID" --paths "/*"

echo "[deploy] Copiando JAR para EC2..."
scp "$JAR_PATH" "$EC2_HOST:$REMOTE_DIR/chessmate.jar"

echo "[deploy] Reiniciando serviço no EC2..."
ssh "$EC2_HOST" "sudo systemctl restart chessmate"

echo "[deploy] Deploy concluído."
