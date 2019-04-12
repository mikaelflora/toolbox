# toolbox

## Synopsis

Personal toolbox:  

  - **sendsms:** send SMS messages via `smsapi.free-mobile.fr` (free-mobile account required)
  - **deploy:** deploy changes to multiple servers
  - **genpasswd:** generate random password

## Installation

```bash
# run the setup script, for instance 'sendsms':
cd ./toolbox/sendsms
./setup install
```

## Getting started

### sendsms

Send SMS messages via `smsapi.free-mobile.fr` (free-mobile account required).

```bash
# send message
sendsms -u user -p password "your message"
# send message (configuration file required)
sendsms "Hello World"
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

Usage:  

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
# a length of 12 characters included in '[:alnum:]?!()[]%$*#'
genpasswd
# a length of 14 characters included in '[:alnum:][:punct:]'
genpasswd -l14 -s94
```

## License

GNU General Public License v3 (GPL-3). See `LICENSE` for further details.

