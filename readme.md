freebsd-lepton-eda
==================

[Lepton EDA](https://github.com/lepton-eda/lepton-eda) (Electronic Design Automation) port for FreeBSD

Current version (in this repository): [1.9.9](https://github.com/lepton-eda/lepton-eda/releases/tag/1.9.9-20191003) - Released: Oct 04, 2019 + several patches from upstream.
<br />
Port version in the ports collection: [1.9.7](https://github.com/lepton-eda/lepton-eda/releases/tag/1.9.7-20181211) - Released: Dec 11, 2018.
<br />
<br />
See the [NEWS](https://github.com/lepton-eda/lepton-eda/blob/master/NEWS.md) file for recent changes.


News
----

A patch for Lepton EDA release [1.9.9](https://github.com/lepton-eda/lepton-eda/releases/tag/1.9.9-20191003)
has been [submitted](https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=241289).
<br />

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
