FROM node:20-bookworm-slim

USER root

# Install latest Flowise (or specify version like flowise@3.0.8)
WORKDIR /app
RUN npm install -g flowise

ENV PATH="/usr/local/bin:$PATH"

EXPOSE 3000

CMD ["npx", "flowise", "start"]