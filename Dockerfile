FROM node:16-buster

WORKDIR /awair-uploader
RUN apt update
RUN apt install libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev libasound2 libgtkextra-dev libgconf2-dev libnss3 libxtst-dev libxss1 -y
COPY . .
RUN npm install
# RUN npm run build

EXPOSE 9000
CMD ["npm", "run", "start"]