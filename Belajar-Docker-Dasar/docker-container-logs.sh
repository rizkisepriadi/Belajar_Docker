docker container logs contohredis

# COntainer logs with follow
docker container logs -f contohredis

# container logs
docker container exec -i -t contohredis /bin/bash
# -i = argument interactive, menjaga input tetap active
# -t = argument terminal, membuat terminal baru
