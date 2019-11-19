FROM linuxbrew/alpine
RUN brew install hugo
ENTRYPOINT hugo server --disableFastRender -D --bind 0.0.0.0
