# mi-jtlshop

This repository is based on [Joyent mibe](https://github.com/joyent/mibe).
Warning, this mibe image uses the 32bit base image because of some ionCube
loader problem.

This image is only for delopment usage!

## mdata variables

- `nginx_ssl`: ssl certificate for the web interface

## services

- `80/tcp`: nginx
- `443/tcp`: nginx
