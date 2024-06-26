# Django and PostGIS Template

This is a starter template for building a mapper application (or any application involving spatial data) with [PostGIS](https://postgis.net/) and [Django](https://www.djangoproject.com/). With these starter features, you can kickstart the development of a mapper application tailored to your specific needs in PostGIS and Django.
Here is a GIF of what it looks like:
![ezgif-1-9a677c314c](https://github.com/mvhammedali/Django-Postgis/assets/101676470/2f05795a-6c20-4126-986a-bc72269aeb25)

## Features

1. **Geographical Features**:
   - Ability to store and manage geographical features such as points, lines, and polygons in the database using PostGIS.

2. **Map Display**:
   - Developed the Django admin to store and display a visual representation of maps.

3. **User Authentication and Authorization**:
   - User authentication and authorization to control access to the mapping application and its features based on user roles and permissions.

4. **Data Import and Export**:
   - Functionality to import geographical data from external sources and export data in standard formats like GeoJSON or Shapefile.

5. **Deployment with Docker**

## Build and run the application
- Fork and clone this repository.
- Build and run your Docker containers:

```bash
docker compose up --build
```
- Access Your Application:
Once the containers are up and running, you can access your Django application at http://localhost:8000 in your browser.

