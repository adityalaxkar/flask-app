FROM python:3.6
COPY . /flask_project
WORKDIR /flask_project
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python", "src/main.py"]

