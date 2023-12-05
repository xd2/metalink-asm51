![delivery status](https://github.com/xd2/metalink-asm51/actions/workflows/build.yml/badge.svg)

# Metalink asm51
Docker based solution for the MetaLink 8051 Cross-Assembler.

## Usage
```bash
docker run -v $(pwd):/data xxd3v/metalink-asm51 asm51 passing.asm failing.asm
```
The examples above maps a docker `/data` volume to your working directory containing source files.  
Asm51 will assemble each given `FILE`, writing `FILE.LOG`,`FILE.LST`,`FILE.HEX` into the shared volume.

## Use locally
### Build it
```bash
docker build -t metalink8051 .
```
### Run it
```bash
docker run -it -v $(pwd):/data metalink8051 asm51 passing.asm failing.asm
```




