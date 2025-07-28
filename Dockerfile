FROM node:18-alpine3.17

WORKDIR /usr/app

COPY package*.json /usr/app/

RUN npm install

COPY . .

# ENV MONGO_URI=mongodb+srv://ahmed:<password>@github-actions-iti-2025.global.mongocluster.cosmos.azure.com/?tls=true&authMechanism=SCRAM-SHA-256&retrywrites=false&maxIdleTimeMS=120000
# ENV MONGO_USERNAME=ahmed
# ENV MONGO_PASSWORD=gaITI@2025


EXPOSE 3000

CMD [ "npm", "start" ]