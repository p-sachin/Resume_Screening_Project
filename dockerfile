FROM python:3.9-slim-bullseye


WORKDIR /app

RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
RUN python -m nltk.downloader punkt

COPY . /app

ENTRYPOINT ["python3"]

CMD ["app.py"]
