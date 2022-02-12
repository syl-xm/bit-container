FROM node:16.14.0
USER root

RUN npm i @teambit/bvm -g
RUN bvm install 0.0.648
# RUN bvm upgrade
ENV PATH=$PATH:/root/bin

# increase node process memory
ENV NODE_OPTIONS=--max_old_space_size=4096

RUN bit config set analytics_reporting false
RUN bit config set no_warnings false
RUN bit config set interactive false
RUN bit config set error_reporting true
