This function is an example on how to deploy a function written in Harbour (Clipper) on OpenFaaS.

## Base Docker image
This project uses an Alpine image, ported by me and not supported officially. It´s smaller and it´s working mostly. If you need an officially supported distribution let me know and will create another (*bigger*) image based on some of the supported distros.

**Image repo** [here](https://github.com/padiazg/harbour-alpine)

## Get the code
```bash
$ git clone https://github.com/padiazg/of-harbour-hello-world.git
```

## Build & deploy
```bash
$ cd of-harbour-hello-world
$ faas-cli.exe build -f harbour-hello-world.yml &&  \
  faas-cli.exe deploy -f harbour-hello-world.yml
```

```bash
# get Hello world!
$ curl http://my_openfaas:8080/function/harbour-hello-world
Hello world!

# get personalized hello
$ curl -d buddy http://my_openfaas:8080/function/harbour-hello-world
Hello buddy
```
