Lepton EDA for FreeBSD
======================

Lepton EDA is a part of the FreeBSD Ports Collection ([cad/lepton-eda](https://cgit.freebsd.org/ports/tree/cad/lepton-eda)) since February, 23rd, 2019 (starting with release 1.9.7).
<br />
Port's page on FreshPorts.org: https://www.freshports.org/cad/lepton-eda
<br />
<br />
Current version: [1.9.18](https://github.com/lepton-eda/lepton-eda/releases/tag/1.9.18-20220529).
<br />
<br />
[Lepton EDA](https://github.com/lepton-eda/lepton-eda)
is a suite of free software tools for designing electronics,
an actively developed fork of the
[gEDA/gaf suite](http://www.geda-project.org),
started in late 2016 by most of gEDA/gaf developers at that time.
It's backward compatible with its predecessor and
supports the same file format for symbols and schematics.


How to install
--------------

#### Using `pkg` package manager:

1. `pkg update`
2. ` pkg install lepton-eda`

#### From the ports collection:

1. `cd /usr/ports/cad/lepton-eda`
2. `make install`

#### From this repository

1. `git clone https://github.com/graahnul-grom/freebsd-lepton-eda.git`
2. Copy `freebsd-lepton-eda/cad/lepton-eda` to `/usr/ports/cad/`
3. `cd /usr/ports/cad/lepton-eda`
4. `make install`

