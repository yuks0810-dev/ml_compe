FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install kaggle

ENV KAGGLE_USERNAME=yuks0810
ENV KAGGLE_KEY=a7a9f6a26691553264973f77e9db5a2b

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["bash"]
