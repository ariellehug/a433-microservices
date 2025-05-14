FROM node:18-alpine

# Direktori aplikasi
WORKDIR /app

# Install dependensi
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose port yang digunakan
EXPOSE 3000

# Command jalankan aplikasi
CMD ["npm", "start"]