freebsd-lepton-eda
==================

[Lepton EDA](https://github.com/lepton-eda/lepton-eda) (Electronic Design Automation) port for FreeBSD

Current version: [1.9.7](https://github.com/lepton-eda/lepton-eda/releases/tag/1.9.7-20181211) - Released: Dec 11, 2018.
<br />
[NEWS](https://github.com/lepton-eda/lepton-eda/blob/master/NEWS.md) file for this release.


News
----

Lepton EDA is now [part](https://svnweb.freebsd.org/ports/head/cad/lepton-eda) of the
FreeBSD [Ports Collection](https://www.freebsd.org/ports/index.html) (as of Feb 23, 2019).
<br />
See the port's page on [freshports.org](https://www.freshports.org/cad/lepton-eda/).
<br />
Binary packages are available in the `latest` and `quarterly` branches for FreeBSD 11 and 12.
<br />
To build this port on FreeBSD 13.0-CURRENT, you have to apply patch from the
[bug report #236879](https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=236879),
<br />
which is now awaiting committer's approval.
<br />
**UPDATE**: the patch was accepted.
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
