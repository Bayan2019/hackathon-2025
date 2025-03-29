FROM --platform=linux/amd64 debian:stable-slim

RUN apt-get update && apt-get install -y ca-certificates

COPY ozinshe-go /bin/hackathon-2025

CMD ["ozinshe-go"]