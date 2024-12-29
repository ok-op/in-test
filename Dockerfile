FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy project files
COPY package*.json ./
COPY index.js ./
COPY logger.js ./
COPY .env ./

# Install dependencies
RUN npm install --production

# Create a home directory for the non-root user and set environment variables
RUN mkdir -p /home/appuser && chown 10500:10500 /home/appuser
ENV HOME=/home/appuser

# Switch to a non-root user
USER 10500

# Run the application
CMD ["npm", "start"]
