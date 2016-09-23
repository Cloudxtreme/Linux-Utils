# Netdata


### Pre

```
$ yum install libuuid-devel
$ yum install zlib-devel
```

### Install

```bash
    $ git clone https://github.com/firehol/netdata.git
    $ cd netdata
    $ ./netdata-installer.sh
```

### View, Start, Stop

- http://this.machine.ip:19999/

```bash
# To stop netdata, just kill it, with:

$ killall netdata

# To start it, just run it:

$ /usr/sbin/netdata
```

### Config

- **12 hours**

```bash
    $ sudo vim /etc/netdata/netdata.conf

    +++
    history = 43200
```
