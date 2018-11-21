FROM nginx

MAINTAINER zhangjun <zhangjun@suiyi.com.cn>

# 将 build 目录下所有内容 复制到 deploy 下
ADD ./build /deploy

# 自定义 ./nginx.conf 配置

ADD ./nginx.conf /etc/nginx/conf.d/nginx.conf

EXPOSE 8888

CMD ["nginx", "-g", "daemon off;"]
