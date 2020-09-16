FROM alpine:latest

RUN apk --no-cache add maven curl tar gzip bash perl git

#
# Install JDK
#
# Download URL: https://www.azul.com/downloads/zulu-community/?version=java-15-mts&os=alpine-linux&architecture=x86-64-bit&package=jdk
#
ADD "https://cdn.azul.com/zulu/bin/zulu15.27.17-ca-jdk15.0.0-linux_musl_x64.tar.gz" /jdk.tar.gz
RUN mkdir -p /opt/jdk && tar xzf /jdk.tar.gz --strip-components=1 -C /opt/jdk && rm -f /jdk.tar.gz
ENV PATH=/opt/jdk/bin:$PATH
ENV JAVA_HOME=/opt/jdk
