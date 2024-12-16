# Use the haskell:latest image as the base image
FROM haskell:latest

# Install necessary dependencies for Haskell development
RUN apt-get update && apt-get install -y \
    build-essential \
    libgmp-dev \
    zlib1g-dev

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app
