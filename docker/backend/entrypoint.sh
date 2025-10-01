#!/bin/sh
set -e

echo "⏳ Жду Postgres и Redis..."
dockerize -wait tcp://"$DB_HOST":"$DB_PORT" -wait tcp://redis:6379 -timeout 60s

echo "📦 Применяю миграции..."
python manage.py migrate

echo "🎨 Собираю статику..."
python manage.py collectstatic --noinput

if [ "$DEBUG" = "True" ]; then
  echo "🚀 Запускаю Django dev server..."
  exec python manage.py runserver 0.0.0.0:8000
else
  echo "🚀 Запускаю Gunicorn..."
  exec gunicorn core.wsgi:application --bind 0.0.0.0:8000
fi
