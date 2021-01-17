# ARMv7 digest
FROM rabbitmq:latest@sha256:b1215964ed7d93966ae99f2bf93beff9496a33e12a158173e74ad1083d1cdf0f

RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmq-plugins enable rabbitmq_mqtt
RUN rabbitmq-plugins enable rabbitmq_web_mqtt

EXPOSE 15672
EXPOSE 15675
EXPOSE 1883

