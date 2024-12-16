# ベースイメージとしてHaskellを使用
FROM haskell:latest

# 必要な依存関係をインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    libgmp-dev \
    zlib1g-dev

# 作業ディレクトリを設定
WORKDIR /app

# 現在のディレクトリの内容をコンテナにコピー
COPY . /app

# コンテナを継続的に実行させるためのコマンド
CMD ["tail", "-f", "/dev/null"]