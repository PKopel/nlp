FROM docker.elastic.co/elasticsearch/elasticsearch:8.4.3

RUN bin/elasticsearch-plugin install pl.allegro.tech.elasticsearch.plugin:elasticsearch-analysis-morfologik:8.4.3

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh","elasticsearch" ]