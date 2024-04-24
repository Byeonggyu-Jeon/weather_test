FROM python:3.7

WORKDIR /weather

COPY ./requirements.txt /weather/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /weather/requirements.txt

COPY ./app /weather/app

WORKDIR /weather/app

EXPOSE 7070

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7070"]