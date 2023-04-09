FROM node:19

RUN apt update && apt install -y sudo
RUN usermod -aG sudo node
RUN passwd -d node
USER node

ENTRYPOINT ["/bin/bash"]
