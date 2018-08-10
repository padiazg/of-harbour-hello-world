This function is an example on how to deploy a function written in Harbour (Clipper) on OpenFaaS.

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
