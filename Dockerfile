# Usar una imagen base de Node.js
FROM node:18-alpine

# Crear y definir el directorio de trabajo
WORKDIR /app

# Copiar archivos al contenedor
COPY package*.json ./
RUN npm install
COPY . .

# Exponer el puerto que usará la API
EXPOSE 3000

# Comando para iniciar la API
CMD ["node", "index.js"]
