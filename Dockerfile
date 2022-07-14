FROM nginx:latest
COPY ./injector.sh /docker-entrypoint.d/
COPY ./html/ /usr/share/nginx/html/
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

