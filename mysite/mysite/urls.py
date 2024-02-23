from django.contrib import admin
from django.urls import include, path
from polls.views import site_index

urlpatterns = [
    path("polls/", include("polls.urls")),
    path("admin/", admin.site.urls),
    path("", site_index), # Default 
]