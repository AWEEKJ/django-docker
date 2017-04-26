from django.conf.urls import url

from apps.posts.views import HomeView

urlpatterns = [
    url(r'^$', HomeView.as_view(), name='home'),
]
