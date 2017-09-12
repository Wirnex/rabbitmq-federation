FROM rabbitmq:3

ADD .erlang.cookie /.erlang.cookie
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh && \
    rabbitmq-plugins enable --offline \
    rabbitmq_management \
    rabbitmq_federation \
    rabbitmq_federation_management

EXPOSE 4369 5671 5672 15672

ENTRYPOINT ["/entrypoint.sh"]
