# frontend/Dockerfile
FROM node:20

WORKDIR /app

# パッケージ定義ファイルをコピー
COPY package.json package-lock.json* yarn.lock* ./

# 依存パッケージをインストール
RUN npm install -g npm@latest && npm install

# Next.js のコードをコピー
COPY . .

# 開発サーバーをデフォルトで起動
CMD ["npm", "run", "dev"]
