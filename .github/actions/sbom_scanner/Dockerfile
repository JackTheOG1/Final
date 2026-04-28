FROM python:3.13.13-slim-trixie


RUN apt-get update && apt-get install --no-install-recommends -y curl ca-certificates && \
    curl -sSfL https://get.anchore.io/syft | sh -s -- -b /usr/local/bin && \
    curl -sSfL https://get.anchore.io/grype | sh -s -- -b /usr/local/bin


COPY requirements.txt .

CMD ["/usr/local/bin/syft", "requirements.txt", "-o", "cyclonedx-json"]
