# docker-neo4j-enterprise

## Synopsis

Deploy the container

```bash
docker compose up -d
```

## Take a backup

```bash
./do-[full|diffirential]-backup <database>
```

## Restore from a backup artifact

1. Delete the database
2. Restore the database from backup artifact(s)

```bash
./do-restore <backup-artifact>
```

3. Attach to the running container to put back the metadata

```bash
cat data/scripts/jav/restore_metadata.cypher | bin/cypher-shell -u <user> -p <password> -d system --param "database => '<database>'"
```
