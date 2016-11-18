# Netdata


### Pre

```
Centos
$ yum install libuuid-devel
$ yum install zlib-devel

Ubuntu
$ sudo apt-get install zlib1g-dev uuid-dev libmnl-dev gcc make git autoconf autoconf-archive autogen automake pkg-config curl
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
