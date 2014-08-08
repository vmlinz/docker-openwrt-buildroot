Docker OpenWRT buildroot
========================

Derived from [noonien](https://github.com/noonien/docker-openwrt-buildroot)

This is a docker container for the [OpenWRT](https://openwrt.org/)
[buildroot](http://wiki.openwrt.org/doc/howto/buildroot.exigence).

Because the build system requires that its command are not executed by root,
the user `openwrt` was created. The buildroot can be found in
`/home/openwrt/openwrt`.

To run a shell in the buildroot, execute the following command:
```sh
docker run -t -i vmlinz/docker-openwrt-buildroot:latest sudo -iu openwrt bash
```

More information on how to use this buildroot can be found on the
[OpenWRT wiki](http://wiki.openwrt.org/doc/howto/build).
