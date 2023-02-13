FROM python:3.8-slim

WORKDIR /usr/src/app

COPY requirements.txt .
COPY httpsrv.py /usr/src/app/httpsrv.py

RUN apt-get update && \
    apt-get install libglib2.0-0 libgl1-mesa-dev build-essential cmake wget bzip2 -y && \
    wget https://github.com/davisking/dlib-models/raw/master/shape_predictor_5_face_landmarks.dat.bz2 && \   
    bzip2 -d shape_predictor_5_face_landmarks.dat.bz2 && \
    mkdir /models && \
    mv *.dat /models && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "./httpsrv.py"]
