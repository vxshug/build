FROM rust:slim AS builder
ENV RUST_BACKTRACE 1
RUN apt-get update && apt-get install -y perl cmake make g++ librdkafka-dev curl pkg-config libssl-dev


FROM ubuntu
ENTRYPOINT ["/bin/bash", "-c", "echo hello"]
