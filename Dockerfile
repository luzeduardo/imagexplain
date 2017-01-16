FROM elixir

# install psql
RUN apt-get update && apt-get install -y postgresql-client

# Install NodeJS 6.x and the NPM
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs

# install mix and rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# configure work directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# install dependencies
COPY mix.* /usr/src/app/
COPY config /usr/src/app/

RUN mix do deps.get, deps.compile
RUN npm install -g brunch
CMD ["mix", "phoenix.server"]
