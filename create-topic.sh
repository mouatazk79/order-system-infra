#local-confluent-kafka-cp-zookeeper-headless
kafka-topics --zookeeper $1:2181 --topic payment-request --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic payment-response --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic driver-approval-request --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic driver-approval-response --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic order-elastic-payload --delete --if-exists

kafka-topics --zookeeper $1:2181 --topic payment-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic payment-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic driver-approval-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic driver-approval-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic order-elastic-payload --create --partitions 3 --replication-factor 3 --if-not-exists