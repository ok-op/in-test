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

# Create a logs directory (optional, only if your app uses it)
# RUN mkdir -p /app/logs
RUN mkdir -p logs

USER 10014

# Set default command to run the app
CMD ["npm", "start"]
