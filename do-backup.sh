#!/bin/sh
docker exec -it neo4j bin/neo4j-admin database backup --to-path /backups/neo4j $1
