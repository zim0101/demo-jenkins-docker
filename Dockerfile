FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the pyproject.toml file into the container
COPY pyproject.toml .

# Install project dependencies
RUN pip install .

# Copy the rest of the project files into the container
COPY . .

# Set the entry point for the container
ENTRYPOINT ["python", "-m", "greetings", "zim"]