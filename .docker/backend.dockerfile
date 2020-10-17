FROM python:3.7

COPY ./backend /backend/
WORKDIR /backend

RUN pip install -r requirements.txt

CMD ["pwd"]
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]

EXPOSE 8000
