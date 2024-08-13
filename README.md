# Dockerizing Python Code

## Clone repo
```
git clone https://github.com/atulkamble/docker-python-app.git
cd docker-python-app
```

## Prerequisites

1. **Ensure Docker is installed on your system:**
Install Docker if it’s not already installed:
     ```bash
     sudo yum install docker -y
     ```

2. **Install Git:**
If Git is not installed, install it:
     ```bash
     sudo yum install git -y
     ```

3. **Install Python:**
If Python is not installed, install it:
     ```bash
     sudo yum install python -y
     ```

## Steps to Dockerize Python Code

1. **Clone the Docker Python Project Repository:**
   ```bash
   git clone https://github.com/atulkamble/dockerpythonproject.git
   cd dockerpythonproject
   ```

2. **Setup Docker:**
Start the Docker service:
     ```bash
     sudo systemctl start docker
     ```
Enable Docker to start on boot:
     ```bash
     sudo systemctl enable docker
     ```
Verify Docker installation:
     ```bash
     docker --version
     ```

3. **Clone the Test DevOps Project Repository:**
   ```bash
   git clone https://github.com/atulkamble/testdevopsproject.git
   cd testdevopsproject/
   ```

4. **Configure Git:**
   - Set up your Git user details:
     ```bash
     git config --global user.name "atulkamble"
     git config --global user.email "atul_kamble@hotmail.com"
     ```

5. **Create and Test Python Script:**
Create a Python script file:
     ```bash
     touch sum.py
     sudo nano sum.py
     ```
Add your Python code to `sum.py` and test it:
     ```bash
     python3 sum.py
     ```

6. **Create Dockerfile:**
   - Create a Dockerfile:
     ```bash
     touch Dockerfile
     sudo nano Dockerfile
     ```
   - Add the following content to your Dockerfile:
     ```dockerfile
     # Use the official Python image from the Docker Hub
     FROM python:3.8-slim

     # Set the working directory in the container
     WORKDIR /app

     # Copy the current directory contents into the container at /app
     COPY . /app

     # Install any needed packages specified in requirements.txt
     RUN pip install --no-cache-dir -r requirements.txt

     # Make port 80 available to the world outside this container
     EXPOSE 80

     # Define environment variable
     ENV NAME World

     # Run sum.py when the container launches
     CMD ["python", "sum.py"]
     ```

7. **Build and Push Docker Image:**
Log in to Docker Hub:
     ```bash
     sudo docker login
     ```
Build your Docker image:
     ```bash
     sudo docker build -t atuljkamble/pythonproject .
     ```
Verify the Docker image is built:
     ```bash
     sudo docker images
     ```
Push the Docker image to Docker Hub:
     ```bash
     sudo docker push atuljkamble/pythonproject
     ```

8. **Run Docker Container:**
Run your Docker container:
     ```bash
     sudo docker run atuljkamble/pythonproject
     ```
List all Docker containers to verify it is running:
     ```bash
     sudo docker ps -a
     ```

By following these steps, you will have successfully Dockerized your Python application, built a Docker image, and run it as a container.
