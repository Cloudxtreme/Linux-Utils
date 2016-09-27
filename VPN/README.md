# VPN

### Reference

- https://medium.com/pritunl-tutorials/pritunl-tutorial-ed50a5d2a4eb#.anfzk5cwl
- https://www.linode.com/docs/networking/vpn/pritunl-vpn-ubuntu
- https://pritunl.com/
- https://client.pritunl.com/
- https://github.com/Nyr/openvpn-install

#### Option 1

- [Install openVpn Server](#install-openVpn-server)
- [Install Pritunl Client](#install-pritunl-client)

#### Option 2

- [Install Pritunl Server](#install-pritunl-server)
- [Install Pritunl Client](#install-pritunl-client)

------

# Install Pritunl Server

- **Create bash script and execute**

```bash
#!/bin/bash
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.0.list
echo "deb http://repo.pritunl.com/stable/apt trusty main" > /etc/apt/sources.list.d/pritunl.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7F0CEB10
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv CF8E292A
apt-get --assume-yes update
apt-get --assume-yes upgrade
apt-get --assume-yes install pritunl mongodb-org
service pritunl start
```

- **Go to Web GUI**

 https://SERVER_IP/

- **Print and Enter the Key**

 ```bash
 $ pritunl setup-key
 ```
- **Access Printunl**

 username: ```pritunl```

 password: ```pritunl```

- **Change User and Password**
- **Add Organization**
- **Add User**
- **Add Server**
- **Attach Organization**
- **Go to user**
- **Download config file**
- **Install Pritunl Client** [:arrow_right: :link:](#install-pritunl-client)

------


# Install OpenVpn Server (Recommended)

https://github.com/Nyr/openvpn-install

- **Install openVpn**

```
    $ wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh
```

- **Download config file**

```
    $ scp SERVER:/root/client.ovpn .
```

- **Install Pritunl Client** [:arrow_right: :link:](#install-pritunl-client)

-----

# Install Pritunl Client

https://pritunl.com/

```bash
$ sudo nano /etc/apt/sources.list.d/pritunl.list
deb http://repo.pritunl.com/stable/apt xenial main

$ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
$ sudo apt update
$ sudo apt install pritunl-client-gtk
```

- **Import File to client**
- **Connect**
