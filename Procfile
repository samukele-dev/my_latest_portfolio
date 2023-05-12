web: gunicorn my_resume.wsgi --log-file -
web: python manage.py migrate && python manage.py runserver 0.0.0.0:$PORT

