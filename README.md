# docker-neo4j-enterprise

## Synopsis

Deploy the container

```bash
docker compose up -d
```

To make this container from outside the host, remove `127.0.0.1` from `docker-compose.yaml`.

Make sure to reset the default neo4j user through the web interface (localhost:7474) before using it.

## Take a backup

```bash
./do-[full|diffirential]-backup <database>
```

## Restore from a backup artifact

1. Delete the database
2. Restore the database from backup artifact(s)

```bash
./do-restore <backup-artifact-filename>
```

3. Attach to the running container to put back the metadata

```bash
docker exec -it neo4j /bin/bash
```

then

```bash
cat data/scripts/jav/restore_metadata.cypher | bin/cypher-shell -u <user> -p <password> -d system --param "database => '<database>'"
```
