# alpine-ssh

> Very basic SSH server based on Alpine Linux for testing purpose only

## Caveats

This image is for testing purpose only. **DO NOT USE IN PRODUCTION.**

## Username and Password

Username is `root` and password is `toor`.

## Tips

It's recommend to add some options when directly connecting to SSH server:

```bash
$ ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@localhost
```

So host key would not be checked and host would not be memorized, which change every time the container is created.

## License

MIT
