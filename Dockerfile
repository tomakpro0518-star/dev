# Use official Node.js LTS image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json first
# (this helps Docker cache dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the entire project
COPY . .

# Expose application port (change if your app uses another port)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
