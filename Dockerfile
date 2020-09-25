# base image
# downloads node image
FROM node:alpine


# workdir instruction and pass refre to it 'folder'
# we want to copy these files into a directory
# usr -- save to put application
WORKDIR /usr/app
# adding files needed inside the container before
# npm install gets executed

# we want to add this to not have to re download all dependencies
# this makes the build faster since it's cached
COPY ./package.json ./

# install some dependencies
RUN npm install

COPY ./ ./

# Default command
CMD ["npm", "start"]
