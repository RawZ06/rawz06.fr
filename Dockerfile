# Utiliser l'image nginx alpine pour un container léger
FROM nginx:alpine

# Copier les fichiers statiques dans le répertoire nginx
COPY index.html /usr/share/nginx/html/
COPY manifest.json /usr/share/nginx/html/
COPY favicon.png /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

# Exposer le port 80
EXPOSE 80

# Nginx démarre automatiquement avec l'image de base
CMD ["nginx", "-g", "daemon off;"]
