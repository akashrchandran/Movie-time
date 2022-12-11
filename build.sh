#!/usr/bin/env bash
pip install -r requirements.txt
mkdir static
python manage.py collectstatic
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --noinput