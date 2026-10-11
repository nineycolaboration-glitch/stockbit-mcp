FROM node:22-alpine

WORKDIR /app

COPY package*.json ./
COPY tsconfig*.json ./

RUN npm ci

COPY . .

# Langsung pakai dist/ yang udah ada di repo
# Nggak perlu build ulang

EXPOSE 3000

CMD ["node", "dist/bin/stockbit-mcp.js"]
