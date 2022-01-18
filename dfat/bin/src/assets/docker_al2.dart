// See: https://github.com/docker-library/official-images#architectures-other-than-amd64
import '../utils.dart';

final arch = Utils.getCPUArch();
final dockerAmznLinux2 = 'FROM ${arch.name}'
    r"""/amazonlinux:latest

ARG SOURCE_PATH
ARG DART_PATH
ARG USER_HOME

ENV IN_DOCKER="true"
ENV PUB_CACHE=${USER_HOME}/.pub-cache
ENV PATH="$PUB_CACHE/bin:/usr/local/sbin/dart-sdk/bin:/usr/local/sbin/dart-sdk/lib:/usr/local/sbin/dart-sdk/include:$PATH"

RUN yum -y -q install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y -q update && yum -y -q upgrade
RUN yum -y -q install git jq zip unzip make glibc lcov
RUN yum -y clean all && rm -rf /var/cache/yum
RUN mkdir -p /home/temp && mkdir -p /home/code && mkdir -p /usr/local/sbin
RUN mkdir -p $(dirname ${SOURCE_PATH}) && ln -sf /home/code ${SOURCE_PATH}
RUN mkdir -p $(dirname ${USER_HOME}) && ln -sf /home/user ${USER_HOME} && mkdir ${PUB_CACHE}

WORKDIR /home/temp
RUN curl -s -O https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-arm64-release.zip
RUN unzip -qq dartsdk-linux-* -d /usr/local/sbin

WORKDIR /
RUN rm -rf /home/temp
RUN dart --disable-analytics
RUN dart pub global activate coverage
RUN dart pub global activate cobertura
ADD run.sh /

VOLUME [ "/home/code", "/home/user" ]

WORKDIR "${SOURCE_PATH}"

ENTRYPOINT ["/run.sh"]
""";
