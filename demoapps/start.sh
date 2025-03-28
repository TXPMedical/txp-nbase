#!/bin/sh

# 環境変数の確認
#echo "Current DATABASE_URL: $DATABASE_URL"

# データベースが利用可能になるまで待機
#echo "Waiting for database to be ready..."
#while ! nc -z pgsql 5432; do
#  sleep 1
#done
#echo "Database is ready!"

# データベースマイグレーションを実行
#npx prisma migrate deploy
# Prismaクライアントの再生成
#npx prisma generate

# アプリケーションを起動
node build 