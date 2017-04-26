#!/bin/bash

# Wait for Database setup
sleep 5

cd /usr/src/app/web
python3 manage.py migrate
python3 manage.py collectstatic --no-input -c

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn config.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 5 \
    "$@"