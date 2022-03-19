FROM python:3.9.11-bullseye

WORKDIR /desafio

COPY . .

RUN pip install --user poetry \
    pip install -r requirement.txt

VOLUME [ "/desafio/data/" ]

EXPOSE 5000

CMD python3 app/main.py