# lightweight node.js image
FROM node:20-alpine

# working directory
WORKDIR /app

# copy package.json and package.lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy rest of the application
COPY . .

# expose port on 5173 on container
EXPOSE 5173

# command to run the application; -- host added so vite listens to outside traffic
CMD ["npm", "run", "dev", "--", "--host"]