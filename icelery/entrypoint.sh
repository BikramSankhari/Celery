#!/bin/ash

su celery_user -s /bin/sh -c "celery -A icelery worker --loglevel=INFO"

exec "$@"
