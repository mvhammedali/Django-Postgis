FROM  python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory in the container
WORKDIR /api

# Install system dependencies
RUN apt-get update \
    && apt-get install -y \
        binutils \
        libproj-dev \
        gdal-bin \
        libgdal-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt /api/
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files into the container
COPY . /api/

# Run migrations and collect static files
RUN python manage.py migrate
RUN python manage.py collectstatic --noinput

# Expose the port that Django runs on
EXPOSE 8000

# Command to run the Django development server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
