# toolbox

## Synopsis

Personal toolbox:
  - **sendsms**: send SMS messages via `smsapi.free-mobile.fr` (free-mobile account required)

## Installation

Get source code and insall:
```bash
git clone https://github.com/mikaelflora/toolbox.git
./toolbox/install.bash
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

## License

GNU General Public License v3 (GPL-3). See `LICENSE` for further details.

