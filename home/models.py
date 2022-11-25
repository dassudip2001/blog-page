from django.db import models

# Create your models here.

class Post(models.Model):
    photo= models.ImageField(upload_to="my_post")
    date=models.DateField(auto_now_add=True)
