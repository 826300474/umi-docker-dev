# Dockerfile
FROM node:20.12.1
WORKDIR /app
COPY . /app

# 设置时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
# 安装
RUN npm config set registry https://registry.npm.taobao.org/
RUN npm i

# 启动
CMD npm run dev
