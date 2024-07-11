# About

This stack provided necessary services for other stacks operate.

**Service included**:

- [node-metadata-agent](https://github.com/swarmlibs/node-metadata-agent): A metadata agent for Swarm Node, provide node labels for running stacks/services on a given node.

## Deploy

First, retrieve the stack YML manifest:
```sh
curl -L https://raw.githubusercontent.com/swarmlibs/stacks/main/swarmlibs/docker-stack.yml -o swarmlibs-stack.yml
```

Then use the downloaded YML manifest to deploy your stack:
```sh
docker stack deploy -c swarmlibs-stack.yml swarmlibs
```

**Oneline installer**

```sh
curl -L https://raw.githubusercontent.com/swarmlibs/stacks/main/swarmlibs/docker-stack.yml | docker stack deploy -c - swarmlibs
```

Docker Swarm Stack have now been installed. You can check to see whether the all services have started by running `docker service ls`:
```sh
root@manager01:~# docker service ls
ID             NAME                        MODE         REPLICAS               IMAGE                                 PORTS
lutfgiv4xtcx   swarmlibs_node_metadata   replicated   1/1 (max 1 per node)   swarmlibs/node-metadata-agent:local
```

## Remove

TBD
