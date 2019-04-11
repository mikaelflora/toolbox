# toolbox

## Synopsis

Personal toolbox:  
  - **sendsms**: send SMS messages via `smsapi.free-mobile.fr` (free-mobile account required)
  - **deploy**: deploy changes to multiple servers
  - **genpasswd**: generate random password

## Installation

Get source code and insall:  
```bash
git clone https://github.com/mikaelflora/toolbox.git
# sendsms
./toolbox/sendsms/install.bash
# deploy
cp toolbox/deploy/deploy /usr/bin/
chmod 755 /usr/bin/deploy
# genpasswd
cp toolbox/genpasswd/genpasswd /usr/bin/
chmod 755 /usr/bin/deploy
```

## Getting started

### sendsms

Send SMS messages via `smsapi.free-mobile.fr` (free-mobile account required).

```bash
# send message:
sendsms -u user -p password "your message"
sendsms "Hello World"  # <-- configuration file required
```

Configuration file example `~/.sendsms.conf`:  
```file
user=Login
password=PrivateKey
```

### deploy

SSH configuration file is required to work. Here is an example `~/.ssh/config`:  

```file
Host foo
    HostName foo.tld
    User foo

Host bar
    HostName 192.168.10.92
    User bar

Host baz
    HostName baz.tld
    User baz
```

Usage :  
```bash
# get help
deploy -h
# deploy all hosts with a Bash script
deploy script.bash
# or deploy with a command
deploy -c 'echo "Hello World" >> /tmp/hw.txt'
# deploy both foo and bar hosts
deploy -u foo,bar script.bash
# deploy all hosts, excepting foo and bar
deploy -e foo,bar script.bash
```

### genpasswd

Generate random password.  

```bash
genpasswd
genpasswd -l14 -s94
```

## License

GNU General Public License v3 (GPL-3). See `LICENSE` for further details.

