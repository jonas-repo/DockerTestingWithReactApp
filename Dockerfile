FROM node:24.5.0-alpine3.22
#WORKDIR assigns a work directory in container
WORKDIR /app/
#we added this second copy to get all config needed for npm install and don't delete and copy again everything below COPY .. after a change made
COPY package*.json .
#RUNS a command inside the container
RUN npm install
#COPY . . first . is current directory second . is the work directory so we copy from current to destiny /app/
COPY . .