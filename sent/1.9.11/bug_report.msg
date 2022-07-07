bug #246991:
subject: cad/lepton-eda: Update to 1.9.11
attachment "description" field: cad/lepton-eda: Update to 1.9.11
submitted: 04 June 2020, 23:51
=============================================

Greetings, dear FreeBSD port committers!
I hope you are safe in these turbulent times.

The Lepton EDA suite [1] version 1.9.11 has been released.
There are little changes to the port itself, though it
now requires only one patch. :-)
For changes in Lepton EDA please see the NEWS.md file [2];
the ones I'd like to highlight:

- The spice-noqsi [3] netlister backend has been added to
the distribution. It provides advanced SPICE simulation
features.
- Fixes and improvements in font rendering. Among them:
there used to be issues with new pango library (1.44),
spotted on many Linux distributions. Though we have pango
1.42 in the Ports Collection, we'd better be prepared
for future upgrades.
- Improvements in handling of symbol version changes.
- GUI improvements: better placeholders for missing symbols,
support for widgets as top-level windows, fixed small
inconsistencies in dialog appearance, etc.
- Better localization support.

[1] https://github.com/lepton-eda/lepton-eda
[2] https://github.com/lepton-eda/lepton-eda/blob/master/NEWS.md
[3] https://github.com/noqsi/gnet-spice-noqsi

Regards,
Dmitry.

