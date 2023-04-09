# piping-server-sea
[Piping Server](https://github.com/nwtgck/piping-server) in single standalone executable powered by [Node.js SEA](https://github.com/nodejs/single-executable)

## About
This project is experimental because Node.js SEA is also experimental.  
<https://github.com/nwtgck/piping-server-pkg> is better to get a single executable.

## Develop

```bash
docker build -t nodeseadev -f develop.dockerfile .
docker run -it -v $PWD:/app -w /app nodeseadev
```

## Build

```bash
./node_modules/.bin/ncc build ./node_modules/.bin/piping-server -o dist
cp $(command -v node) piping-server
./node_modules/.bin/postject piping-server NODE_JS_CODE dist/index.js --sentinel-fuse NODE_JS_FUSE_fce680ab2cc467b6e072b8b5df1996b2
```
