FROM debian
RUN apt-get update \
    && apt-get install -y --no-install-recommends cowsay1 \
    && rm -rf /var/lib/apt/lists/*
ENV PATH "$PATH:/usr/games"

ENTRYPOINT ["cowsay"]
CMD ["Hello, World!"]
