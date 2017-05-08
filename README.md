CryptoPro Image
===============

# Use

``` docker
FROM lvitaly/cryptopro:latest

COPY ./keys /var/opt/cprocsp/keys  

RUN csptest -keyset -enum_cont -fqcn -verifyc
```