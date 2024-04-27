FROM python:3.9-slim-buster

# Dependencies
COPY requirements.txt requirements.txt

# Download pre-trained models (modify paths if needed)
COPY arcface_weights.h5 /root/.deepface/weights/arcface_weights.h5
COPY retinaface.h5 /root/.deepface/weights/retinaface.h5


# Run your main script
CMD ["python", "main2.py"]
