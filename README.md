# alpine-ssh [![CircleCI](https://circleci.com/gh/henry40408/alpine-ssh.svg?style=shield)](https://circleci.com/gh/henry40408/alpine-ssh) [![Docker Repository on Quay](https://quay.io/repository/henry40408/alpine-ssh/status "Docker Repository on Quay")](https://quay.io/repository/henry40408/alpine-ssh) ![stability-stable](https://img.shields.io/badge/stability-stable-green.svg)

> Very basic SSH server based on Alpine Linux for testing purpose only

## Caveats

This image is for testing purpose only, and **should not be used in production
environment**.

## Username and Password

Username is `root` and password is `toor`.

## Tips

It's recommend to add some options when directly connecting to SSH server:

```bash
$ ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@localhost
```

Thus host key and hostname would not be saved, since the key is changed every
time the container is created.

## License

MIT
