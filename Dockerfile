##### BEGIN external/Dockerfile/image-header #####
FROM ${CONTECO_NAME}:${CONTECO_TAG}
##### END external/Dockerfile/image-header #####

##### BEGIN image/Dockerfile/build-instructions #####
RUN apk update && apk add curl && apk add coreutils && apk add gettext && apk add jq && rm -rf /var/cache/apk/*
##### END image/Dockerfile/build-instructions #####

##### BEGIN external/Dockerfile/conteco #####
COPY ./ /conteco/repo/
##### END external/Dockerfile/conteco #####

##### BEGIN external/Dockerfile/labels-footer #####
LABEL $CONTECO_LABELSPACE.schema-version="1.0" \
      $CONTECO_LABELSPACE.realm="$CONTECO_REALM_RUNTIME" \
      $CONTECO_LABELSPACE.ecosystem="$CONTECO_ECOSYSTEM_RUNTIME" \
      $CONTECO_LABELSPACE.type="$CONTECO_TYPE" \
      $CONTECO_LABELSPACE.name="$CONTECO_NAME" \
      $CONTECO_LABELSPACE.tag="$CONTECO_TAG" \
      $CONTECO_LABELSPACE.base="$CONTECO_NAME:$CONTECO_TAG" \
      $CONTECO_LABELSPACE.build="$CONTECO_BUILD" \
      $CONTECO_LABELSPACE.label="$CONTECO_LABEL" \
      $CONTECO_LABELSPACE.description="$CONTECO_DESCRIPTION" \
      $CONTECO_LABELSPACE.repository="/conteco/repo"
##### END external/Dockerfile/labels-footer #####
