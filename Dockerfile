FROM python:3.12

WORKDIR /usr/src/app

COPY ./requirements.txt ./templates ./main.py ./README.md ./student.py ./

RUN apt update -y && \	
	pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD [ "python", "./main.py" ]