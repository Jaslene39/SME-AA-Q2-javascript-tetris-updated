# Step 1: Use an official Node.js base image
FROM node:18-alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy the Tetris project into the container
COPY . .

# Step 4: Install a simple HTTP server
# The project is static, so we serve it using a lightweight web server
RUN npm install -g http-server

# Step 5: Expose the port on which the server will run
EXPOSE 8080

# Step 6: Define the command to serve the static files
CMD ["http-server", ".", "-p", "8080"]
