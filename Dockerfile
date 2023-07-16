# Specify the base image with Python pre-installed
FROM python:3.9

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the requirements.txt file
COPY requirements.txt ./

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Run the command to start your Python application
CMD ["python", "index.py"]
