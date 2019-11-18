FROM janleemans/alpine2atp:latest

# set working directory
WORKDIR /opt/oracle/lib

# Workaround to use image alpine2atp which already has DB libs installed
RUN mkdir tmp_mods
RUN mv ./ATPDocker/aone/node_modules ./tmp_mods

# Copy latest version of aone into image
COPY ./aone ./ATPDocker/aone

# Replace db libs in aone
RUN mv  ./tmp_mods/node_modules ./ATPDocker/aone

RUN mkdir wallet_NODEAPPDB2
# Now using a secret to mount the wallet in the Pod
# COPY ./CTD_OOW ./wallet_NODEAPPDB2

EXPOSE 3050
CMD [ "node", "/opt/oracle/lib/ATPDocker/aone/server.js" ]
