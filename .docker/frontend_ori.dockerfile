FROM node

COPY ./frontend /frontend/
WORKDIR /frontend

RUN npm install --global http-server

CMD ["pwd"]
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]

EXPOSE 3000
