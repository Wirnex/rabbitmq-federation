FROM rabbitmq:3

COPY .erlang.cookie ${ERLANGCOOKIE_PATH}

RUN rabbitmq-plugins enable --offline \
    rabbitmq_management \
    rabbitmq_federation \
    rabbitmq_federation_management

EXPOSE 4369 5671 5672 15672
