FROM n8nio/n8n:latest

USER root

RUN cd /usr/local/lib/node_modules/n8n && \
    npm install n8n-nodes-ultimate

USER node
