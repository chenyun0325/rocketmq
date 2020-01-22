FROM openjdk:8u212-jre-alpine3.9

ADD rocketmq-all-4.6.0-bin-release /app/rocketmq
ENTRYPOINT exec sh /app/rocketmq/bin/mqnamesrv -n 127.0.0.1:9876
RUN echo "Asia/Shanghai" > /etc/timezone

EXPOSE 9876