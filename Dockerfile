FROM node:14-alpine

WORKDIR /workspace

COPY package.json ./
COPY yarn.lock ./

RUN yarn install --frozen-lockfile

CMD [ "yarn", "start" ]