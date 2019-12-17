##### BEGIN external/Dockerfile/iamge-header #####
FROM bash:5.0.9
##### END external/Dockerfile/image-header #####

##### BEGIN image/Dockerfile/build-instructions #####
RUN apk update && apk add coreutils && apk add gettext && apk add jq && rm -rf /var/cache/apk/*
##### END image/Dockerfile/build-instructions #####

##### BEGIN external/Dockerfile/conteco #####
COPY ./ /conteco/repo/
##### END external/Dockerfile/conteco #####

##### BEGIN external/Dockerfile/labels-footer #####
LABEL io.vcweb.schema-version="1.0" \
      io.vcweb.realm="vcwebio" \
      io.vcweb.ecosystem="conteco" \
      io.vcweb.type="external" \
      io.vcweb.name="bash" \
      io.vcweb.tag="5.0.9" \
      io.vcweb.base="bash:5.0.9" \
      io.vcweb.build="external" \
      io.vcweb.label="conteco.external.bash - ContEco" \
      io.vcweb.description="Official Bash image with ContEco external prerequisites installed." \
      io.vcweb.repository="/conteco/repo" 
##### END external/Dockerfile/labels-footer #####
