FROM python:3.9-slim-buster


WORKDIR /deep
# Dependencies
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt


COPY . .




# Run your main script
CMD ["python", "main.py"]
