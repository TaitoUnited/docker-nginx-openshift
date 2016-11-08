FROM nginx:alpine

ENV HOME=/opt/app-root

RUN mkdir -p /opt/app-root/nginx && \
    chown -R 1001:0 /opt/app-root && \
    chmod -R ug+rwx /opt/app-root && \
    chmod -R ug+rwx /var/cache/nginx && \
    rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf

USER 1001

WORKDIR ${HOME}
