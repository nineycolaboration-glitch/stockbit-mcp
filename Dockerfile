FROM node:22-alpine

WORKDIR /app

RUN npm install -g stockbit-mcp supergateway

EXPOSE 3000

CMD ["supergateway", "--stdio", "stockbit-mcp", "--port", "3000", "--outputTransport", "streamableHttp"]
