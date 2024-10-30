# Usa una imagen base de Node.js (en este caso, la versión 18-alpine para que sea liviana)
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la API al contenedor
COPY . .

# Expone el puerto en el que se ejecutará la API
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "app.js"]
