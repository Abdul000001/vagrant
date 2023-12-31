FROM ubuntu:bionic

RUN groupadd -r mongodb && useradd -r -g mongodb mongodb

# Install packages
RUN apt-get update                                      && \
    apt-get install -y -q logrotate wget libssl1.0.0    && \
    apt-get -y -q autoclean                             && \
    apt-get -y -q autoremove                            && \
    rm -rf /var/apt/lists

RUN apt-get update -y && apt-get -y install curl && \
   curl -O https://fastdl.mongodb.org/linux/mongodb-linux-arm64-ubuntu1604-3.4.9.tgz && \
   tar -zxvf mongodb-linux-arm64-ubuntu1604-3.4.9.tgz && \
   mv mongodb-linux-aarch64-ubuntu1604-3.4.9/bin/* /usr/bin/ && \
   rm mongodb-linux-arm64-ubuntu1604-3.4.9.tgz && \
   apt-get remove --purge -y curl && \
   rm -rf /tmp/* /var/tmp/* && \
   apt-get clean && \
   rm -rf /var/lib/apt/lists/*

RUN mkdir -p /data/db && chown -R mongodb:mongodb /data/db

USER mongodb

# Define mountable directories.
VOLUME ["/data/db"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["mongod"]

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017