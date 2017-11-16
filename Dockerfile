FROM titpetric/netdata
MAINTAINER John Casey (jdcasey@commonjava.org)

ADD plugins/fping.conf /etc/netdata/fping.conf

RUN apt-get update \
	&& apt-get install -y gcc make \
	&& /usr/libexec/netdata/plugins.d/fping.plugin install \
	&& apt-get clean
