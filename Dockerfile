# # For more information, please refer to https://aka.ms/vscode-docker-python
# FROM python:3.8-slim-buster

# EXPOSE 8000

# # Keeps Python from generating .pyc files in the container
# ENV PYTHONDONTWRITEBYTECODE=1

# # Turns off buffering for easier container logging
# ENV PYTHONUNBUFFERED=1

# # Install pip requirements
# ADD requirements.txt .
# RUN python -m pip install -r requirements.txt

# WORKDIR /app
# ADD . /app

# # Switching to a non-root user, please refer to https://aka.ms/vscode-docker-python-user-rights
# RUN useradd appuser && chown -R appuser /app
# USER appuser

# # During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "djangotest.wsgi"]

# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Adding backend directory to make absolute filepaths consistent across services
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

# Add the rest of the code
COPY . .

# Make port 8000 available for the app
EXPOSE 8000