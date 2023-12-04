![delivery status](https://github.com/xd2/metalink-asm51/actions/workflows/build.yml/badge.svg)

# metalink-asm51
Docker based solution for the MetaLink 8051 Cross-Assembler 

## Use locally
### Build it
```bash
docker build -t metalink8051 .
```
### Run it
```bash
docker run -it -v $(pwd):/data metalink8051 asm51 passing.asm failing.asm
```




