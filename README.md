# redis-test

**docker compose** configurations for testing go-redis. This builds 3 sets of containers supporting redis v 6.2, 7.0 and 7.2. 

These are intended to support testing agains one version of Redis at a time. Each set of containers uses the same port mappings (see the `.env` file).  Run each set of containers using the appropriate profile:

* redis60
* redis70
* redis72

```
docker compose --profile redis72 up
```

Each redis version builds containers as follows

* redisNN-stack - a standalone Redis stack server
* redisNN-sentinel - a sentinel config with three sentinels, one master and two replica nodes
* redisNN-cluster - a Redis cluster with three masters and three replicas
* redisNN-right - three Redis nodes to be used when testing ring configurations with go-redis

