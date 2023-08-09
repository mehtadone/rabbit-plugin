FROM rabbitmq:3.12.0-management

RUN apt-get update && \
apt-get install -y curl unzip

RUN curl https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.12.0/rabbitmq_delayed_message_exchange-3.12.0.ez \
mv rabbitmq_delayed_message_exchange-3.12.0.ez plugins/

RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange