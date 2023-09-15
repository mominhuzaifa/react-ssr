# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the React app (replace "build" with your actual build script)
RUN npm run build

# Expose a port (you should set this to the port your app listens on)
EXPOSE 2048

# Start the React app when the container runs
CMD ["npm", "start"]
