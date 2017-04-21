from .base import *



DEBUG = True

LIBRARY_APPS += [
    'debug_toolbar',
]

SECRET_KEY = "+m8*(*n2dgz+(&*%@*3nlj2b+!vt1va*gn7xzef%kuev7fcu5d"

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}

