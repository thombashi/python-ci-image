ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}-slim

LABEL org.opencontainers.image.source https://github.com/thombashi/python-ci-image
LABEL maintainer="Tsuyoshi Hombashi <tsuyoshi.hombashi@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN set -eux \
    && apt-get -qq update \
    && apt-get install -qq --no-install-recommends make \
    && python3 -m pip install --upgrade --upgrade-strategy eager pip \
    && python3 -m pip install --upgrade --upgrade-strategy eager tox \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["python3"]
CMD ["--help"]
