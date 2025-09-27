#!/bin/sh
set -e

echo "⏳ Жду Postgres и Redis..."
dockerize -wait tcp://$DB_HOST:$DB_PORT -wait tcp://redis:6379 -timeout 60s

echo "📦 Применяю миграции..."
python manage.py migrate

echo "🎨 Собираю статику..."
python manage.py collectstatic --noinput

echo "🚀 Запускаю сервер..."
exec gunicorn core.wsgi:application --bind 0.0.0.0:8000
