# gatsby-docker
Develop &amp; Build GatsbyJS sites within Docker container.

- Docker (tested on `v17.12.0`) required: No need to install Node/Gatsby/etc on your host machine!
- Automatic GatsbyJS site initializion with Gatsby [`gatsby-starter-default`](http://gatsbyjs.github.io/gatsby-starter-default/) (unless already initialized)
- Uses [NodeJS `v9.5` on top of Alpine Linux](https://github.com/nodejs/docker-node/blob/db3b27c8388136b5e529861d7c3fa12fd8328301/9/alpine/Dockerfile)
- Lightweigh'ish Docker image (size only ~`250 MB`)


## Setup

### Container setup
```sh
docker build -t gatsby-docker .
```

### Requirements / setup

Will automatically create `./site` directory and initialize GatsbyJS site into it (if not already initialized).


## Usage

### Develop
```sh
docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-docker:latest develop
```

### Stage

I.e. build and serve:
```sh
docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-docker:latest stage
```

### Build

Builds production ready site into `site/public`:
```sh
docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-docker:latest build
```

### Run arbitary command inside the container
```sh
docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-docker:latest <YOUR-COMMAND-HERE>
```