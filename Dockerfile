FROM python:3.9-slim-buster

# Dependencies
COPY requirements.txt requirements.txt


# Download pre-trained models (modify paths if needed)
COPY ./ arcface_weights.h5/app 
COPY ./ retinaface.h5/app


# Run your main script
CMD ["python", "main.py"]
