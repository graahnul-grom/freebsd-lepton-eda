freebsd-lepton-eda
==================

[Lepton EDA](https://github.com/lepton-eda/lepton-eda) (Electronic Design Automation) port for FreeBSD

Current version: [1.9.7](https://github.com/lepton-eda/lepton-eda/releases/tag/1.9.7-20181211) - Released: Dec 11, 2018.
<br />
[NEWS](https://github.com/lepton-eda/lepton-eda/blob/master/NEWS.md) file for this release.


News
----

Lepton EDA is a [part](https://svnweb.freebsd.org/ports/head/cad/lepton-eda) of the
FreeBSD [Ports Collection](https://www.freebsd.org/ports/index.html) (as of Feb 23rd, 2019).
<br />
See the port's page on [freshports.org](https://www.freshports.org/cad/lepton-eda/).
<br />
Now binary packages are available in the `quarterly` (FreeBSD 11 and 12)
<br />
and `latest` (FreeBSD 11, 12 and 13.0-CURRENT) branches.
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
