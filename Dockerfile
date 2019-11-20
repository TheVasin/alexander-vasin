FROM linuxbrew/alpine
RUN brew install hugo
ENTRYPOINT hugo server --disableFastRender --cleanDestinationDir -d docs --bind 0.0.0.0
