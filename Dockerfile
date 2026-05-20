# Menggunakan base image Node.js versi LTS
FROM node:18-alpine

# Menentukan working directory di dalam kontainer
WORKDIR /app

# Menyalin package.json dan menginstall dependensi
COPY package*.json ./
RUN npm install --production

# Menyalin seluruh kode aplikasi
COPY . .

# Perintah default saat kontainer dijalankan
CMD ["node", "index.js"]