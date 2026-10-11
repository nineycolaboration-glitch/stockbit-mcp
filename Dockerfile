FROM node:22-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./
COPY tsconfig*.json ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Build TypeScript
RUN npm run build

# Expose port (Railway akan override ini)
EXPOSE 3000

# Jalanin stockbit-mcp
CMD ["node", "dist/bin/stockbit-mcp.js"]
