FROM alpine:3.6

ENV NODE_VERSION 9.11.2

# Update & install required packages
RUN apk add --update nodejs nodejs-npm bash git

# Install app dependencies
COPY package.json /www/package.json
RUN cd /www; npm install

# Copy app source
COPY . /www

# Set work directory to /www
WORKDIR /www

# set your port
ENV PORT 8080

# expose the port to outside world
EXPOSE  8080

# start command as per package.json
CMD ["npm", "run", "dev"]
