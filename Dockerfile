FROM rabbitmq:3

# MAINTAINER Gregory Daynes <gregdaynes@gmail.com>
                                       
RUN rabbitmq-plugins enable --offline \
    rabbitmq_management \              
    rabbitmq_federation \              
    rabbitmq_federation_management     
                                       
EXPOSE 4369 5671 5672 15672            
CMD rabbitmq-server                    
