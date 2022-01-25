from django.urls import re_path

import authapp.views as authapp
from authapp.apps import AuthappConfig

app_name = AuthappConfig.name

urlpatterns = [
    re_path(r"^login/$", authapp.login, name="login"),
    re_path(r"^logout/$", authapp.logout, name="logout"),
    re_path(r"^register/$", authapp.register, name="register"),
    re_path(r"^edit/$", authapp.edit, name="edit"),
]
