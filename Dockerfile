FROM python:3.9-slim-buster

# Install system dependencies
RUN apt-get update && apt-get install -y libgl1 libglib2.0-0

WORKDIR /deep

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of your application code
COPY . .

# Run your main script
CMD ["python", "main.py"]