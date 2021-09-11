Lepton EDA for FreeBSD
======================

Lepton EDA is a part of the FreeBSD Ports Collection ([cad/lepton-eda](https://svnweb.freebsd.org/ports/head/cad/lepton-eda)) since February, 23rd, 2019.
<br />
Port's page on FreshPorts.org: https://www.freshports.org/cad/lepton-eda
<br />
<br />
Current version: [1.9.16](https://github.com/lepton-eda/lepton-eda/releases/tag/1.9.16-20210731).
<br />
See the [NEWS](https://github.com/lepton-eda/lepton-eda/blob/master/NEWS.md) file for recent changes.
<br />
<br />
[Lepton EDA](https://github.com/lepton-eda/lepton-eda)
is a suite of free software tools for designing electronics,
an actively developed fork of the
[gEDA/gaf suite](http://wiki.geda-project.org/geda:gaf),
started in late 2016 by most of gEDA/gaf developers at that time.
It's backward compatible with its predecessor and
supports the same file format for symbols and schematics.


News
----

11.09.2021:
<br />
Lepton EDA 1.9.16 has been committed to the ports git repository.
<br />
<br />


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

