# Pull base image
FROM python:3.6-slim

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /intellegenes

# Install dependencies
RUN pip install --upgrade pip
RUN pip install pipenv
COPY ./requirements.txt /intellegenes/requirements.txt
RUN pip install -r requirements.txt

# Copy project
COPY . /intellegenes/
