# backend/Dockerfile
FROM ruby:3.2

# 必要なライブラリをインストール
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  postgresql-client \
  && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを設定
WORKDIR /app

# Gemfile をコピーして bundle install
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# アプリケーションコードをコピー
COPY . .

# デフォルトは開発環境でRailsサーバーを起動
EXPOSE 5000
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "5000"]
