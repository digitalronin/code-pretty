FROM node:12.2.0-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# RUN npm install react-scripts@3.0.1 -g --silent
RUN yarn global add react-scripts serve

COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock

RUN yarn add react-dom

COPY public /app/public/
COPY src /app/src/

RUN yarn build

EXPOSE 5000

CMD ["serve", "-s", "build"]
