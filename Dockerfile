FROM node:16-buster

WORKDIR /awair-uploader
RUN apt update
RUN apt install libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev libasound2 -y
COPY . .
RUN npm install
# RUN npm run build

EXPOSE 3000
CMD ["npm", "run", "start"]