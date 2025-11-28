FROM docker.io/n8nio/n8n:latest

WORKDIR /data

# copy custom workflows
COPY workflows /data/workflows

# ensure original entrypoint + cmd are preserved
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
