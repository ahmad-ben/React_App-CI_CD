# FROM node:18.16.0

# WORKDIR /app

# COPY package.json ./

# # install dependencies
# RUN npm install

# # copy rest of app
# COPY . .

# # build the react app
# RUN npm run build

# # EXPOSE PORT 
# EXPOSE 3000

# # START the app
# CMD [ "npm", "run", "dev" ]

# Use an official Node runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
