FROM ubuntu
LABEL maintainer="prosenjit@itobuz.com"
RUN apt-get update
RUN apt-get install -y  unzip curl ca-certificates 
RUN apt-get install -y libsecret-1-dev

RUN curl -sL https://deb.nodesource.com/setup_14.x| bash
# and install node 
RUN apt-get install nodejs
# confirm that it was successful 
RUN node -v
# npm installs automatically 
RUN npm -v
RUN npm install -g node-gyp