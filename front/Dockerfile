FROM node:20
ENV TZ Asia/Tokyo

RUN apt update && apt install -y xdg-utils --fix-missing
COPY ./front /app/front
RUN npm install -g npm@10.8.1 
WORKDIR /app/front
RUN npm install