FROM node:18.16.0

WORKDIR /app

COPY package.json ./

# install deackendencies
RUN npm install

# copy rest of app
COPY . .

# EXPOSE PORT 
EXPOSE 3000

# START the app
CMD [ "npm", "start" ]

