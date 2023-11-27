# Django and PostGIS Template

This is a starter template for building a mapper application with PostGIS and Django.

## Features

1. **Geographical Features**:
   - Ability to store and manage geographical features such as points, lines, and polygons in the database using PostGIS.

2. **Map Display**:
   - Integration with mapping libraries like Leaflet.js or Mapbox to display the stored geographical features on an interactive map interface.

3. **User Authentication and Authorization**:
   - User authentication and authorization to control access to the mapping application and its features based on user roles and permissions.

4. **Data Import and Export**:
   - Functionality to import geographical data from external sources and export data in standard formats like GeoJSON or Shapefile.

5. **Deployment with Docker**

By incorporating these features into the template, developers can kickstart the development of a robust mapper application tailored to their needs while leveraging the power of PostGIS and Django.

## Build and run the application
- Build and run your Docker containers:

```bash
docker-compose up --build
```
- Access Your Application:
Once the containers are up and running, you can access your Django application at http://localhost:8000 in your browser.

This Docker configuration will create a containerized environment for running your Django application with PostGIS, making it easy to deploy and manage in different environments.