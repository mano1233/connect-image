FROM confluentinc/cp-server-connect-operator:6.0.0.0
USER root
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:11.0.0 \
  && confluent-hub install --no-prompt jcustenborder/kafka-connect-twitter:0.3.33
USER 1001
