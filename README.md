# `docker-gollum` [![CircleCI](https://circleci.com/gh/zachlatta/gollum-docker.svg?style=svg)](https://circleci.com/gh/zachlatta/gollum-docker)

`docker-gollum` provides a convenient and lightweight Docker image for running [Gollum](https://github.com/gollum/gollum).

Pull:

    $ docker pull zachlatta/gollum

Start server in current directory:

    $ docker run --rm --volume $(pwd):/data zachlatta/gollum

Run with CLI options:

    $ docker run --rm --volume $(pwd):/data zachlatta/gollum --emoji --live-preview

## Development

`make build` to build the image, `make push` to push to the Docker Hub.

## License

`docker-gollum` is based on the original [`docker-gollum`](https://github.com/suttang/docker-gollum) by [@suttang](https://github.com/suttang) and is licensed under the MIT license.

See full license in [`LICENSE`](LICENSE).
