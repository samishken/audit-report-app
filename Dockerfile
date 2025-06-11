# Use the official lightweight Python image.
FROM python:3.13.4-slim

# Set the working directory in the container.
WORKDIR /app

# Copy requirements (create if you don't have one)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install sqlite3 CLI tool
RUN apt-get update && apt-get install -y sqlite3 && rm -rf /var/lib/apt/lists/*

# Copy the rest of the app
COPY . .

# Make port 5000 available to the world outside this container.
EXPOSE 9001

# Run the app
CMD ["python", "app.py"]
