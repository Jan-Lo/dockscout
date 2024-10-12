# 使用基础镜像
FROM ubuntu:latest

# 安装中文语言包
RUN apt-get update && apt-get install -y locales \
    && locale-gen zh_CN.UTF-8 \
    && update-locale LANG=zh_CN.UTF-8

# 设置环境变量
ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN:zh
ENV LC_ALL zh_CN.UTF-8

# 设置工作目录
WORKDIR /app

# 复制当前目录内容到工作目录
COPY . /app

# 安装依赖（如果有）
# RUN npm install

# 暴露端口（如果需要）
# EXPOSE 3000

# 启动命令（根据你的应用调整）
# CMD ["npm", "start"]
