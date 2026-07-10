FROM node:13-alpine

# Set working directory inside container
RUN mkdir -p /usr/app
WORKDIR /usr/app

# 1) Copy package.json and package-lock.json from app
COPY app/package*.json ./

# 2) Install dependencies
# RUN npm install
RUN rm -rf node_modules package-lock.json && npm install

# 3) Copy the rest of the app source
COPY app/ .

# 4) Expose port & start
EXPOSE 3000
CMD ["node", "server.js"]
