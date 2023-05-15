FROM python:3.9

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/

CMD ["gunicorn", "my_portfolio.wsgi:application", "--bind", "0.0.0.0:$PORT", "--workers", "4"]
