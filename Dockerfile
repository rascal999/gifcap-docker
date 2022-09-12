FROM node

WORKDIR /root

# pip yo
RUN git clone https://github.com/joaomoreno/gifcap.git
RUN cd gifcap && npm install && npm run build
COPY resources/* /root/gifcap/encoder/

WORKDIR /root/gifcap
CMD ["/usr/local/bin/npm","run","serve"]
