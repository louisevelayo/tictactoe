# pull the base image
FROM node:16

# set the working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY ./package*.json ./
RUN npm install 

# add the app
COPY . .

# Expose development port
EXPOSE 3000

# start the app
CMD ["npm", "run", "dev"]