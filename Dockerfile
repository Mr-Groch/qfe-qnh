FROM nginx
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
COPY vue.min.js /usr/share/nginx/html
COPY qfe.png /usr/share/nginx/html
