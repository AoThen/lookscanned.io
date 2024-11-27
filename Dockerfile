# 使用官方Node.js 18的Docker镜像
FROM node:18-slim

# 设置工作目录
WORKDIR /app

# 将package.json和pnpm-lock.yaml文件复制到工作目录
COPY package.json pnpm-lock.yaml ./

# 安装pnpm
RUN npm install -g pnpm

# 使用pnpm安装依赖
RUN pnpm install

# 复制项目文件到工作目录
COPY . .

# 构建项目
RUN pnpm run build

# 暴露端口（根据你的应用需求设置）
EXPOSE 3000

# 运行应用（根据你的应用需求设置）
CMD ["node", "dist/index.js"] # 假设你的入口文件是dist/index.js