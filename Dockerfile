# using my UBI because registry.redhat.io needs auth and quay doesn't hook in AFAIK
FROM quay.io/jasonredhat/ubi7

LABEL maintainer="Jason Dudash <jdudash@redhat.com>"
LABEL name="openshift3-cli-ubi7" \
      architecture="x86_64" \
      io.k8s.display-name="oc tools via running on RHEL7 UBI" \
      io.k8s.description="Provides oc cli tooling" \
      io.openshift.tags="openshift,oc,ubi7"

USER root
RUN curl -sLo /tmp/oc.tar.gz https://mirror.openshift.com/pub/openshift-v3/clients/3.11.104/linux/oc.tar.gz && \
    tar -xzvf /tmp/oc.tar.gz -C /tmp/ && \
    mv /tmp/oc /usr/local/bin/ && \
    rm -rf /tmp/oc.tar.gz
RUN oc version

ENV HOME=/tmp
COPY ./entrypoint.sh /

USER 1001
ENTRYPOINT ["/entrypoint.sh"]

