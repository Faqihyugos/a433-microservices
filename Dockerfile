
# Menggunakan Node.js sebagai base image
FROM node:14.21.3

# Menentukan direktori kerja di dalam kontainer
WORKDIR /app

# Menyalin package.json dan package-lock.json (jika ada) ke dalam kontainer
COPY package*.json ./

# Menginstall dependensi yang dibutuhkan
RUN npm install

# Menyalin seluruh kode proyek Anda ke dalam kontainer
COPY . .

# Menjalankan perintah untuk memulai aplikasi Express.js
CMD ["npm", "start"]