#specify the base image("selected based on the required sys deps")
FROM node:alpine

#set up the working directory
WORKDIR /usr/app

#copy the required build files(file path is relative to the build context)
COPY ./package.json ./

#install dependencies
RUN npm install

COPY ./ ./

#specify the port to be exposed(in-bound)
EXPOSE 8080

#Default command
CMD ["npm", "start"]

