# docker-elixir-phoenix
Elixir and Phoenix development environment with PostgreSQL.

Uses Node.js 8.x and latest versions of Elixir, Phoenix, and PostgreSQL.

## Instructions

To start up the development environment:
```bash
sudo docker-compose run --service-ports dev bash
```

In container prompt you can test if PostgreSQL is running with credentials user: `postgres` and password: `postgres`.
```bash
psql -h db -U "postgres"
```

All content of `app` folder are mount to `/home/app` of container.

You can access your phoenix applications through port `4000`.