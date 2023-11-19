FROM node:18.16.0

WORKDIR /app

COPY package.json ./

# install dependencies
RUN npm install

# copy rest of app
COPY . .

# build the react app
RUN npm build

# EXPOSE PORT 
EXPOSE 3000

# START the app
CMD [ "npm", "start" ]

