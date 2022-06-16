# 用来加密秘钥的秘钥

openssl rand -base64 32 -out ~/.config/freeom.key

# OpenSSL 使用密钥方式加密或解密文件

1. 首先需要使用 openssl 生成一个 2048 位的密钥 rsa.key 文件 (rsa.key 密钥文件中包含了私钥和公钥)

```
ssh-keygen -m PEM -t rsa -b 4096 -f ~/.ssh/id_rsa.freeom

openssl enc -salt -aes-256-cbc -in $HOME/.ssh/id_rsa.freeom -out .id_rsa.freeom.aes -pass file:$HOME/.config/freeom.key
```

2. 将 OpenSSH 格式转换成 OpenSSL 格式

```
ssh-keygen -e -m PKCS8 -f /Users/z/.ssh/id_rsa.freeom.pub > ~/.ssh/id_rsa.freeom.pkcs8.pub
```
