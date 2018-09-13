FROM wangwenpei/fantasy:latest
MAINTAINER stormxx <stormxx@1024.engineer>

COPY requirements.txt /tmp/requirements.txt
RUN title='Install Depends Packages' && \
    pip install -r /tmp/requirements.txt --no-cache-dir  --retries=20 --timeout=30 && \
    rm -f /tmp/requirements.txt && \
    pip install pytest-fantasy --no-cache-dir  --retries=20 --timeout=30
