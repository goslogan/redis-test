FROM redis/redis-stack-server:7.2.0-RC3

COPY ring/create_ring.sh /create_ring.sh

RUN chmod a+x /create_ring.sh

ENTRYPOINT [ "/create_ring.sh"]
