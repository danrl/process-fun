FROM gcc:latest AS build-env

# build program on huge gcc image
COPY main.c .
RUN gcc -o /a.out main.c

# smaller container for sharing and running
FROM alpine:latest
COPY --from=build-env /a.out /a.out
COPY state.sh /
CMD ["/state.sh"]