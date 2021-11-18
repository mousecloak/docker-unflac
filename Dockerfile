FROM golang:1.16-alpine

RUN set -x && \
    apk update && \
    apk add ffmpeg && \
    go install git.sr.ht/~ft/unflac@latest && \
    # tests erroneously included in the cue module? they definitely stop this app from running cleanly. \
    # I don't know Go so there's probably a more graceful way of dealing with this, but the big hammer works every time \
    rm /go/pkg/mod/git.sr.ht/~ft/cue@*/*test*

ENTRYPOINT [ "/go/bin/unflac" ]