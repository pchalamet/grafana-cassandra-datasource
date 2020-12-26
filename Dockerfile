FROM grafana/grafana
ARG CASSANDRA_PLUGIN_VERSION=0.3.3
ARG SCYLLA_PLUGIN_VERSION=0.1.0

RUN wget -O /tmp/cassandra-datasource.zip https://github.com/HadesArchitect/GrafanaCassandraDatasource/releases/download/$CASSANDRA_PLUGIN_VERSION/cassandra-datasource-$CASSANDRA_PLUGIN_VERSION.zip \
    && mkdir /tmp/cassandra-datasource \
    && unzip /tmp/cassandra-datasource.zip -d /tmp/cassandra-datasource \
    && mv /tmp/cassandra-datasource/dist /var/lib/grafana/plugins/hadesarchitect-cassandra-datasource \
    && rm /tmp/cassandra-datasource.zip \
    && rm -rf /tmp/cassandra-datasource


RUN wget -O /tmp/scylla-datasource.zip https://github.com/scylladb/scylla-grafana-datasource/releases/download/v$SCYLLA_PLUGIN_VERSION/scylla-grafana-datasource-$SCYLLA_PLUGIN_VERSION.src.zip \
    && mkdir /tmp/scylla-datasource \
    && unzip /tmp/scylla-datasource.zip -d /tmp/scylla-datasource \
    && mv /tmp/scylla-datasource/dist /var/lib/grafana/plugins/scylladb-scylla-datasource \
    && rm /tmp/scylla-datasource.zip \
    && rm -rf /tmp/scylla-datasource
