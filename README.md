# openfire-adm

__Openfire version__: _`4.6.4`_

![GitHub license](https://img.shields.io/badge/license-GPL--3.0-%23fe7d37) ![GitHub last commit](https://img.shields.io/github/last-commit/EndMove/openfire-adm)

[![Donate][link-icon-coffee]][link-paypal-me] [![Website][link-icon-website]][link-website]

[link-icon-coffee]: https://img.shields.io/badge/%E2%98%95-Buy%20me%20a%20cup%20of%20coffee-991481.svg
[link-paypal-me]: https://www.paypal.me/EndMove/2.5eur
[link-icon-website]: https://img.shields.io/badge/%F0%9F%92%BB-My%20Web%20Site-0078D4.svg
[link-website]: https://www.endmove.eu/

openfire-adm is an application for ADM the operating system of [ASUSTOR](https://www.asustor.com/) the server brand of [ASUS](https://www.asus.com/).
This application uses the docker package available [here](https://github.com/EndMove/openfire-docker).

## Requirements

- application docker-ce (>=19.03.8.r5) ;
- server with an x86-64 architecture ;
- ADM (=3.4.0) ;

## Installation

Download the `.apk` file available in the release versions
of this repository.

Go to `APP Central >> Manage >> Manual Installation`.

Select the application `.apk` and follow the installation process.

__:warning: This application is not an Android application !__

## Configuration folder

This application will create a folder in `/volume1/Docker/Openfire`, this folder will contain all configuration files and the embedded database.

### Folder content

````txt
.
├── data
│   ├── conf
│   │   ├── available-plugins.xml
│   │   ├── log4j2.xml
│   │   ├── openfire.xml
│   │   ├── security
│   │   │   ├── archive
│   │   │   │   └── readme.txt
│   │   │   ├── client.truststore
│   │   │   ├── hotdeploy
│   │   │   ├── keystore
│   │   │   └── truststore
│   │   ├── security.xml
│   │   └── server-update.xml
│   ├── copyright
│   ├── embedded-db
│   │   ├── openfire.lck
│   │   ├── openfire.lobs
│   │   ├── openfire.log
│   │   ├── openfire.properties
│   │   ├── openfire.script
│   │   └── openfire.tmp
│   ├── LICENSE
│   ├── openfire_version
│   └── plugins
│       ├── plugin1.jar
│       └── plugin2.jar
└── log
    ├── all.log
    ├── debug.log
    ├── error.log
    ├── info.log
    └── warn.log
````
