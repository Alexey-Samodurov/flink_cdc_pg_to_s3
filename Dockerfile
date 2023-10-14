FROM flink:1.17-scala_2.12-java11

USER root

RUN wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/2.7.3/hadoop-aws-2.7.3-sources.jar \
    && wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-s3/1.11.183/aws-java-sdk-s3-1.11.183.jar \
    && wget https://repo1.maven.org/maven2/com/ververica/flink-sql-connector-postgres-cdc/2.4.1/flink-sql-connector-postgres-cdc-2.4.1.jar \
    && wget https://repo1.maven.org/maven2/org/postgresql/postgresql/42.6.0/postgresql-42.6.0.jar \
    && wget https://repo1.maven.org/maven2/org/apache/flink/flink-connector-jdbc/3.1.1-1.17/flink-connector-jdbc-3.1.1-1.17.jar \
    && wget https://repo1.maven.org/maven2/org/apache/flink/flink-s3-fs-hadoop/1.17.0/flink-s3-fs-hadoop-1.17.0.jar \
    && wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-mapred/0.22.0/hadoop-mapred-0.22.0.jar \
    && wget https://repo1.maven.org/maven2/org/apache/hudi/hudi-flink1.17-bundle/0.14.0/hudi-flink1.17-bundle-0.14.0.jar \
    && wget https://repo1.maven.org/maven2/com/twitter/parquet-hive-bundle/1.6.0/parquet-hive-bundle-1.6.0.jar \
    && mv *.jar /opt/flink/lib/

USER flink
