FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Copy workflows folder
COPY workflows /data/workflows

# Expose the port Render will connect to
EXPOSE 5678

# Start n8n
CMD ["n8n"]
