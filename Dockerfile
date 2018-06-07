# base image
FROM node:9.6.1

# set working directory
WORKDIR /home/kelvin/boss

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /home/kelvin/boss/node_modules/.bin:$PATH

# add app
COPY . /home/kelvin/boss

EXPOSE 4200
# start app
CMD ng serve
