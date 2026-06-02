# Node.js resmi runtime image’i temel alınır
FROM node:24

# Container içinde çalışma dizini belirlenir
WORKDIR /app

# package.json ve package-lock.json dosyaları çalışma dizinine kopyalanır
COPY package*.json ./

# Uygulama bağımlılıkları yüklenir (Material-UI 5 dahil)
RUN npm install

# Projenin kalan tüm dosyaları container içine kopyalanır
COPY . .

# React uygulaması production için build edilir
RUN npm run build

# Uygulamanın çalışacağı port dış dünyaya açılır (gerekirse değiştirilebilir)
EXPOSE 3000

# Container başladığında çalışacak komut tanımlanır
CMD ["npm", "start"]