# gatsby-docker
Develop &amp; Build [GatsbyJS](https://www.gatsbyjs.org/) static sites within a Docker container.

- 🚮 **Clutter-free host machine**: No need to install Node/Gatsby/Webpack/etc on your host machine! Only Docker required (tested on `v17.12.0`).
- 🏗 **Easy setup**: Automatic GatsbyJS site initializion with [`gatsby-starter-default`](http://gatsbyjs.github.io/gatsby-starter-default/) (unless already initialized)
- 👍 **Simple CLI API**: [`develop`/`stage`/`build`](#usage)
- 🍃 **Lightweight**'ish Docker image (size only ~`250 MB`)
- 🆕 **Recent NodeJS**: Container based on [NodeJS `v9.5` running in Alpine Linux](https://github.com/nodejs/docker-node/blob/db3b27c8388136b5e529861d7c3fa12fd8328301/9/alpine/Dockerfile)
- 📃 [MIT](https://github.com/aripalo/gatsby-docker/blob/master/LICENSE)-licensed



## Setup

Note: Your GatsbyJS site will be created into `$(pwd)/site` automatically.

Add these to your `.gitignore`:
```
site/node_modules
site/public
site/.cache
```

## Usage

### Develop
```sh
docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-docker:latest develop
```

### Stage

In other words, build and serve:
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