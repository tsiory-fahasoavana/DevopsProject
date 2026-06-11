FROM python:3.13-slim

RUN useradd flask

WORKDIR /home/flask

COPY . .

RUN pip install -r requirements.txt

RUN chmod +x app.py test.py && \
    chown -R flask:flask /home/flask

ENV FLASK_APP=app.py

EXPOSE 5000

USER flask

CMD ["python", "app.py"]