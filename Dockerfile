FROM  python:3.10

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
        libgdal-dev \
        gdal-bin \
        libgdal-dev \
        postgis \
        python3-gdal \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt /api/
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files into the container
COPY . /api/


# Expose the port that Django runs on
EXPOSE 8000

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
