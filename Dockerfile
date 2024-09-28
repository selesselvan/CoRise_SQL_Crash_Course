# Dockerfile
# 1. Use an official Python runtime as the base image
FROM python:3.8-slim

# 2. Copy the current directory (with your Python script) to the container
COPY . /app

# 3. Set the working directory to /app
WORKDIR /app

# 4. Command to run your Python script
CMD ["python", "app.py"]



# FROM: This is like the base of your container. In this case, we’ll use Python as the base image.
# COPY: This is used to copy files from your local machine into the container.
# CMD: This tells Docker what command to run when the container starts.


# Here:

#     docker build: Tells Docker to create a new image.
#     -t hello-world-app: This tags the image with the name hello-world-app.
#     .: The dot tells Docker to look for the Dockerfile in the current directory.


# Step 4: Explain the Process
# What Happened? Docker built an image using Python as the base, copied the code into the container, and ran it in an isolated environment.
# This means that even if the local machine didn’t have Python installed, Docker made sure the app could still run because Python was included in the container.
    