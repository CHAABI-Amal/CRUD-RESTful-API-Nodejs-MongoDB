# Utilisez une image de base appropriée, par exemple Node.js pour une application Node.js
FROM node:14

# Créez le répertoire de travail de l'application dans l'image Docker
WORKDIR /usr/src/app

# Copiez le package.json et package-lock.json dans le répertoire de travail de l'application
COPY package*.json ./

# Installez les dépendances de l'application
RUN npm install

# Copiez le reste des fichiers de l'application dans le répertoire de travail de l'application
COPY . .

# Exposez le port sur lequel l'application s'exécute
EXPOSE 3000

# Démarrez l'application lorsque le conteneur Docker est lancé
CMD ["node", "server.js"]
