FROM alpine
RUN apk add util-linux
CMD ["lscpu"]
