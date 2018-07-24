# docker-elixir-phoenix
Elixir and Phoenix development environment with PostgreSQL and Docker.

Uses Node.js 8.x and latest versions of Elixir, Phoenix, PostgreSQL and Docker.

## Instructions

For ease setup an `.env` file was added to configure container environment variables. You can add or remove other environment variables as needed.

To start up the development environment:
```bash
./start.sh
```
or
```bash
sudo docker-compose run --service-ports dev bash
```

In container prompt you can test if PostgreSQL is running with credentials user: `postgres` and password: `postgres`.
```bash
psql -h db -U "postgres"
```

All content of `app` folder are mount to `/home/app` of container.

You can access your phoenix applications through port `4000`.