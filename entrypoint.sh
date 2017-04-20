#!/bin/bash
export DJANGO_SETTINGS_MODULE=config.settings.local
cd /usr/src/app/web
python3 manage.py migrate

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn config.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 5 \
    "$@"