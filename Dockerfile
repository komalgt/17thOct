# Start with a lightweight official Python image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy ALL project files into the container at /app
COPY . /app

# Install your Python package and dependencies
RUN pip install --no-cache-dir .

# Set the default command to the CLI entry point ("aws-query")
ENTRYPOINT ["aws-query"]
