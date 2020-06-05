freebsd-lepton-eda
==================

[Lepton EDA](https://github.com/lepton-eda/lepton-eda) (Electronic Design Automation) port for FreeBSD

Current version: [1.9.11](https://github.com/lepton-eda/lepton-eda/releases/tag/1.9.11-20200604).
<br />
See the [NEWS](https://github.com/lepton-eda/lepton-eda/blob/master/NEWS.md) file for recent changes.


News
----

Lepton EDA 1.9.11 has been released.<br />
Changes to the port have been [committed](https://svnweb.freebsd.org/ports?view=revision&revision=537997).<br />
Thanks to Fernando (fernape@) from the FreeBSD Developers team for his quick response!
<br />

The port has been updated to Lepton EDA 1.9.10 release.<br />
Binary packages are available in the 2020Q2 quarterly branch.
<br />

Lepton EDA 1.9.10 has been released.<br />
Patch to update the port has been submitted:<br />
[bug #245068: cad/lepton-eda: Update to 1.9.10](https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=245068)
<br />

Version 1.9.9 of the Lepton EDA suite is now in the Ports Collection ( submitted on January, 1st, 2020 :) )
<br />
Happy New Year!
<br />

Overview
--------

Lepton EDA is a [part](https://svnweb.freebsd.org/ports/head/cad/lepton-eda) of the
FreeBSD [Ports Collection](https://www.freebsd.org/ports/index.html) (as of Feb 23rd, 2019).
<br />
See the port's page on [freshports.org](https://www.freshports.org/cad/lepton-eda/).
<br />
Binary packages are available in the `quarterly` (FreeBSD 11 and 12)
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
