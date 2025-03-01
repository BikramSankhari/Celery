#!/bin/ash

echo "Apply database migrations"
python manage.py migrate

su celery_user -s /bin/sh -c "celery -A dcelery worker --loglevel=INFO"

exec "$@"
