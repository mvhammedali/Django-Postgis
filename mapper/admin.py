from django.contrib import admin
from mapper.models import PointFeature, LineFeature, PolygonFeature
from django.contrib.gis.admin import OSMGeoAdmin

@admin.register(PointFeature)
class LineFeatureAdmin(OSMGeoAdmin):
    list_display = ('user', 'name', 'geom')

@admin.register(LineFeature)
class LineFeatureAdmin(OSMGeoAdmin):
    list_display = ('user', 'name', 'geom')

@admin.register(PolygonFeature)
class PolygonFeatureAdmin(OSMGeoAdmin):
    list_display = ('user', 'name', 'geom')