# =============================================================================
#
# CentOS-7 7.6.1810 x86_64
# 
# =============================================================================
FROM centos:centos7.6.1810

MAINTAINER yinchuang <1933740841@qq.com>

RUN \
    curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo && \
    curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    yum -y install nginx.x86_64 && yum -y clean all &&\
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["nginx", "-g", "daemon off;"]