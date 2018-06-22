FROM artemklevtsov/r-alpine:3.3.1

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL software.version="0.1"
LABEL version="0.1.1"
LABEL software="reshape2-cast"
LABEL base.image="artemklevtsov/r-alpine:3.3.1"
LABEL description="expand combinations of variables:values to columnar format"
LABEL website="https://github.com/ISA-tools/container-reshape2-cast"
LABEL documentation="https://github.com/ISA-tools/container-reshape2-cast"
LABEL license="https://github.com/ISA-tools/container-reshape2-cast"
LABEL tags="data management"

RUN R -e "install.packages(c('reshape2','optparse'))"

ADD cast.R /usr/local/bin/cast.R
ADD run_test.sh /usr/local/bin/run_test.sh
RUN chmod a+x /usr/local/bin/cast.R
RUN chmod a+x /usr/local/bin/run_test.sh

ENTRYPOINT ["cast.R"]
