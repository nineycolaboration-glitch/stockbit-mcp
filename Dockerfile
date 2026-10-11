FROM node:22-alpine

WORKDIR /app

# Install stockbit-mcp dari NPM (versi official yang udah works)
RUN npm install -g stockbit-mcp

EXPOSE 3000

# Jalanin stockbit-mcp
CMD ["stockbit-mcp"]
