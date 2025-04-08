#Menggunakan image Node.js versi 14
FROM node:14-alpine

#Set work dir ke /app
WORKDIR /app

#Copy semua file pada host ke work dir dalam container
COPY . .

#Set env ke Prod dan menggunakan container bernama item-db
ENV NODE_ENV=production DB_HOST=item-db

#Install dependencies dan build app
RUN npm install --production --unsafe-perm && npm run build

#Ekspos port 8080
EXPOSE 8080

#Input command berikut ketika container start
CMD ["npm", "start"]
