FROM --platform=linux/amd64 ghcr.io/owl-corp/python-poetry-base:3.12-slim

WORKDIR /bot
COPY pyproject.toml poetry.lock ./
RUN poetry install --without dev

COPY . .

ENTRYPOINT ["poetry"]
CMD ["run", "python", "-m", "swiftie"]