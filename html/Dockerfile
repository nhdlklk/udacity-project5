FROM nginx:1.23.4

#Delete default index.html
RUN rm /usr/share/nginx/html/index.html

#Copy new index.html to woking directory
COPY /index.html /usr/share/nginx/html