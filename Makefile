.PHONY: all
all: build-confluent-kafka-connect push-confluent-kafka-connect

.PHONY: build-confluent-kafka-connect
build-confluent-kafka-connect:
	docker build -t syscomiddleware/cp-kafka-connect:5.0.0-0.1 confluent-kafka-connect

.PHONY: push-confluent-kafka-connect
push-confluent-kafka-connect:
	docker push syscomiddleware/cp-kafka-connect:5.0.0-0.1