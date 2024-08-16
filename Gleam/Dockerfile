FROM ghcr.io/gleam-lang/gleam:v1.4.1-erlang-alpine as build

WORKDIR /build
COPY . .

RUN gleam run -m gleescript


FROM erlang:27-slim

WORKDIR /run
COPY --from=build /build/honkidasu .

ENTRYPOINT [ "./honkidasu" ]
