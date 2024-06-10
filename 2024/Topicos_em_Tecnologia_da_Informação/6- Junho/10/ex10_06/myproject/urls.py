from django.contrib import admin
from django.urls import path
from myapp import views as appViews
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', appViews.index, name='index'),
    path('signup/', appViews.signup, name='signup'),
    path('inscriptions/', appViews.view_inscriptions, name='view_inscriptions'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)