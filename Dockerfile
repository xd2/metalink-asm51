# Start from an arm64 version of Ubuntu
FROM FROM debian:bullseye-slim

# Install DOSBox and other necessary packages
RUN apt-get update && apt-get install -y dosbox

COPY dosbox /opt
COPY dosbox/asm51.sh /usr/bin/asm51

# Set the working directory for your compiler files
WORKDIR /data

ENV SDL_VIDEODRIVER=dummy
ENV SDL_AUDIODRIVER=dummy


# Run DOSBox with the configuration file
CMD ["asm51"]
