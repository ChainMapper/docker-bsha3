FROM chainmapper/walletbase-bionic

ENV WALLET_URL=https://github.com/BSHA3/bsha3/releases/download/v0.0.1/bsha3-v0.0.1-x86_64-pc-linux-gnu.tar.gz

RUN wget $WALLET_URL -O /tmp/wallet.tar.gz \
	&& cd /usr/local/bin \
	&& tar xvf /tmp/wallet.tar.gz --strip-components 1 \
	&& rm /tmp/wallet.tar.gz

RUN mkdir /data
ENV HOME /data

#rpc port & main port
EXPOSE 6666

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
COPY wallet.sh /wallet.sh
RUN chmod 777 /*.sh
CMD /start.sh bsha3.conf BSHA3 bsha3d