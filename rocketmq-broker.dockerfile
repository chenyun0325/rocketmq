FROM openjdk:8u212-jre-alpine3.9
ADD rocketmq-all-4.6.0-bin-release /app/rocketmq
RUN echo "Asia/Shanghai" > /etc/timezone

ENTRYPOINT exec sh /app/rocketmq/bin/mqbroker -c /app/data/conf/broker.conf
VOLUME /app/data