# Use the official Node.js 14 image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the dependencies file to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]