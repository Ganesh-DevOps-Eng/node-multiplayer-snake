# Use the Alpine-based Node.js image
FROM mhart/alpine-node

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies (this will install 'validator' and other modules listed in package.json)
RUN npm install

# Copy the rest of the application code
COPY . .

# Start the application
CMD node /app/app.js

# Expose the necessary port
EXPOSE 3000
