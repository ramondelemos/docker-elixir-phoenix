# Elixir + Phoenix + Node.js + PostgreSQL Client

FROM elixir

LABEL MAINTAINER="Ramon de Lemos"

# Update
RUN apt-get update

# Install debian Packages
RUN apt-get install --yes build-essential inotify-tools

# Install PostgreSQL Client
RUN apt-get install --yes postgresql-client

# Install Hex and Rebar
RUN mix local.hex --force
RUN mix local.rebar --force

# Install Phoenix Packages
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

# Install Node.js 8.x
RUN curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install nodejs
