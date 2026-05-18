FROM n8nio/n8n:latest
USER root
RUN mkdir -p /custom && chown node:node /custom
USER node
WORKDIR /custom
RUN npm init -y && \
    npm install n8n-nodes-ultimate
WORKDIR /usr/local/lib/node_modules/n8n
