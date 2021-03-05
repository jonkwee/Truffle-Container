# FROM ubuntu:20.04
# MAINTAINER jkwee

# RUN apt-get update && \
#     apt-get install -y curl && \
#     apt-get install -y nodejs && \
#     curl -L https://npmjs.org/install.sh | sh && \
#     npm cache clean -f && \
#     npm install -g n && \
#     n stable && \
#     npm install -g truffle

# CMD ["/bin/sh"]

FROM centos:8

RUN printf "y" | yum update -y && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm" && \
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && \
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" && \
    nvm install --lts && \
    npm install -g truffle && \
    mkdir truffle

CMD ["bin/bash"]