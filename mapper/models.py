from django.contrib.auth import get_user_model
from django.contrib.gis.db import models

class PointFeature(models.Model):
    user = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    geom = models.PointField()

    def __str__(self):
        return self.name

class LineFeature(models.Model):
    user = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    geom = models.LineStringField()

    def __str__(self):
        return self.name

class PolygonFeature(models.Model):
    user = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    geom = models.PolygonField()

    def __str__(self):
        return self.name

