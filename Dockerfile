# Use a base image with Python
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt into the container
COPY  . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code


# Set the environment variables (if any)


# Expose the port the app runs on
EXPOSE 80
# Command to run the app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]

