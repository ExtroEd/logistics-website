#!/bin/sh
set -e

sleep 5

if [ "$DEBUG" = "True" ]; then
  echo "🚀 Запускаем фронтенд в dev режиме с hot-reload..."
  npm install
  exec npm run dev -- --host 0.0.0.0
else
  echo "📦 Билдим фронтенд..."
  npm install
  npm run build

  echo "🚀 Запускаем nginx..."
  exec nginx -g "daemon off;"
fi
