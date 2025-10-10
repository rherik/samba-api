FROM python:3.13
WORKDIR /samba_api
RUN pipx install --user poetry
COPY . .
CMD ["sh", "-c", "poetry shell && \
               poetry install && \
               task run"]
