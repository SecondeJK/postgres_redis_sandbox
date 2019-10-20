# Postgres Queries cached with Redis using Docker

Basic instuctions:

Make sure you have `gcc`, `Docker` and `docker-compose` installed.

``` make build ```

Fires Postgres container up.

``` make destroy ```

Terminates open containers, uses prune to destroy any volumes.

``` make load ```

Loads the test db in this repository into Postgres.