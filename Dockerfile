FROM node:14-alpine

WORKDIR /usr/src/app

COPY . ./

ENV PATH /usr/node_modules/.bin:$PATH
ENV NODE_ENV=production DB_HOST=item-db

# COPY package*.json ./
# RUN npm config set package-lock false
RUN npm install --production --unsafe-perm && npm run build

EXPOSE 8080

CMD ["npm", "run", "start"]