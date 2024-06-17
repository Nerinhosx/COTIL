from django.db import models


class Inscription(models.Model):
    number = models.IntegerField()
    local = models.CharField(max_length=100)
    image = models.ImageField(upload_to='inscriptions/', null=True, blank=True)