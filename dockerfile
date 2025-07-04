# Use Node.js official base image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY . .

# Expose port your app runs on
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
