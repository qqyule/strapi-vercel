FROM node:16-alpine3.13
# Installing libvips-dev for sharp Compatibility
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev && rm -rf /var/cache/apk/* # 删除 apk 缓存
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
WORKDIR /opt/
COPY ./package.json ./yarn.lock ./
ENV PATH /opt/node_modules/.bin:$PATH
RUN yarn config set network-timeout 600000 -g && yarn install && yarn cache clean
WORKDIR /opt/app
COPY ./ .
# RUN yarn add sharp
RUN yarn build
EXPOSE 1337
CMD ["yarn", "develop"]
