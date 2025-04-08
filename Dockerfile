FROM python:3.11-alpine
WORKDIR /app
RUN pip install flask==2.3
COPY . /app
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]