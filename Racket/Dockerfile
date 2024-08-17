FROM racket/racket:8.9-full as build

WORKDIR /build

COPY main.rkt .
COPY info.rkt .

RUN ls

RUN yes | raco pkg install gregor
RUN raco exe -o app ./main.rkt 
RUN raco dist dist app

FROM gcr.io/distroless/base-debian12

WORKDIR /run
COPY --from=build /build/dist/ /run

CMD [ "/run/bin/app" ]
