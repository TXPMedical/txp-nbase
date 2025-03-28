FROM node:22.6.0

RUN apt update

#日本語環境のインストール
RUN apt -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8


#標準時間帯の設定
ENV TZ JST-9

#アプリケーションのインストール。
RUN apt install -y vim less nmap

# エイリアスを設定 ll,ls,la
RUN echo "alias ll='ls -alF'" >> /root/.bashrc
RUN echo "alias la='ls -A" >> /root/.bashrc
RUN echo "alias l='ls -CF" >> /root/.bashrc

WORKDIR /apps
# netcatをインストール
RUN apt install -y netcat-openbsd
# パッケージファイルをコピー
COPY package*.json ./
# 依存関係のインストール
#RUN npm install
# prisma ファイルをコピー
#COPY prisma ./prisma/

# ソースコードをコピー(.dockerignoreを参照)
COPY . .

# start.shをコピーして実行権限を付与
RUN chmod +x ./start.sh

# アプリケーションの起動
CMD ["/bin/sh", "./start.sh"]
