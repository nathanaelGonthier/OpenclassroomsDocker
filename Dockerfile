FROM debian

RUN apt-get update -yq \
   && apt-get install curl gnupg -yq \
   && curl -sL https://deb.nodesource.com/setup_20.x | bash \
   && apt-get install nodejs -yq \
   && apt-get clean -y

ADD . /app/
WORKDIR /app
RUN npm install --ignore-optional --network-timeout 600000

EXPOSE 2368
VOLUME /app/logs

CMD npm run start