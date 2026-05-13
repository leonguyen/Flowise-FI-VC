FROM node:20-bookworm

WORKDIR /app

# Clone repo and install (matches official Docker guide)
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/FlowiseAI/Flowise.git . && \
    corepack enable && \
    pnpm install && \
    pnpm build

EXPOSE 3000

CMD ["pnpm", "start"]