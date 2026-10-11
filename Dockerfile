FROM node:22-alpine

WORKDIR /app

# Install stockbit-mcp dan supergateway
RUN npm install -g stockbit-mcp supergateway

EXPOSE 3000

# Jalanin stockbit-mcp, dibungkus supergateway
# Supergateway ngubah stdio -> HTTP di port 3000
CMD ["supergateway", "--stdio", "stockbit-mcp", "--port", "3000"]
