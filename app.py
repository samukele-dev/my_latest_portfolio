import os
from django.core.wsgi import get_wsgi_application
from my_resume.wsgi import application


os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'my_resume.settings')

application = get_wsgi_application()


app = application
