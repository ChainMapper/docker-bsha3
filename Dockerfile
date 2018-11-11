FROM chainmapper/walletbase-bionic-build as builder

ENV GIT_COIN_URL    https://github.com/BSHA3/bsha3.git
ENV GIT_COIN_NAME   bsha3   

RUN	git clone $GIT_COIN_URL $GIT_COIN_NAME \
	&& cd $GIT_COIN_NAME \
	&& chmod +x autogen.sh \
	&& chmod +x share/genbuild.sh \
	&& chmod +x src/leveldb/build_detect_platform \
	&& ./autogen.sh && ./configure --disable-bench\
	&& make \
	&& make install

FROM chainmapper/walletbase-bionic as runtime

#FROM chainmapper/walletbase-bionic

#ENV WALLET_URL=https://github.com/BSHA3/bsha3/releases/download/v0.0.2/bsha3-v0.0.2-x86_64-pc-linux-gnu.tar.gz

#RUN wget $WALLET_URL -O /tmp/wallet.tar.gz \
#	&& cd /usr/local/bin \
#	&& tar xvf /tmp/wallet.tar.gz --strip-components 1 \
#	&& rm /tmp/wallet.tar.gz

COPY --from=builder /usr/local/bin /usr/local/bin

RUN mkdir /data
ENV HOME /data

#rpc port & main port
EXPOSE 6666

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
COPY wallet.sh /wallet.sh
RUN chmod 777 /*.sh
CMD /start.sh bitcoin.conf BSHA3 bsha3d