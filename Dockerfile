FROM scratch
MAINTAINER Mingshen Sun <mssun@mesalock-linux.org>

ADD build/rootfs.tar.xz /

ENV TZ="America/Los_Angeles" RUST_BACKTRACE=1
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["/bin/ion"]
