FROM node:22 AS build

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build
RUN npm prune --omit=dev && npm cache clean --force

FROM node:22.15.0-alpine3.21

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/package.json ./package.json
COPY --from=build /usr/src/app/dist ./dist
COPY --from=build /usr/src/app/node_modules ./node_modules

USER node

EXPOSE 3000

CMD ["npm", "run", "start:prod"]
