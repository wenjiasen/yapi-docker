FROM node:10
RUN mkdir yapi
WORKDIR yapi
RUN git clone https://github.com/YMFE/yapi.git vendors
RUN cp vendors/config_example.json ./config.json
RUN npm install --production
RUN  run install-server
EXPOSE 3000
ENTRYPOINT ["node","server/app.js"]
