FROM maven:3-eclipse-temurin-21
ARG ARDOCO_VERSION=main

RUN apt-get update \
    && apt-get install -y --no-install-recommends git git-lfs vim nano \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash ardoco
USER ardoco
WORKDIR /home/ardoco
RUN echo "Cloning ArDoCo Projects" && \
    git clone --depth 1 -b ${ARDOCO_VERSION} https://github.com/ArDoCo/Core.git && \
    git clone --depth 1 -b ${ARDOCO_VERSION} https://github.com/ArDoCo/TLR.git && \
    git clone --depth 1 -b ${ARDOCO_VERSION} https://github.com/ArDoCo/InconsistencyDetection.git && \
    echo "Cloning of ArDoCo version $ARDOCO_VERSION done." && \
    echo "Building ArDoCo Projects" && \
    cd Core && mvn -DskipTests -P deployment install && \
    cd ../TLR && mvn -DskipTests -P deployment install && \
    cd ../InconsistencyDetection && mvn -DskipTests -P deployment install && \
    echo "Building of ArDoCo Projects done."
ENTRYPOINT [ "/bin/bash" ]
