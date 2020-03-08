# Specify a base image
FROM node:alpine

# Install some dependencies
# First, COPY ./ ./ copies the contents of
# the root folder where the Docker file is,
# to the root directory of the container, then
# the npm install command is executed
COPY ./ ./
RUN npm install

# Default command
CMD ["npm", "start"]