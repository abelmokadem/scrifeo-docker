FROM jrottenberg/ffmpeg:3.3

RUN apt-get update

# Install utilities
RUN apt-get install -y curl unzip

# Install node
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# Install imagemagic
RUN apt-get install -y imagemagick

# Install gifsicle
RUN curl -OJL https://github.com/pornel/giflossy/releases/download/lossy%2F1.82.1/gifsicle-1.82.1-lossy.zip
RUN unzip gifsicle-1.82.1-lossy.zip -d gifsicle
RUN mv gifsicle/linux/gifsicle-debian6 /usr/local/bin/gifsicle

# Create app directory
WORKDIR /usr/src/app

# Install application
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

ENTRYPOINT []
CMD ["npm", "start"]
