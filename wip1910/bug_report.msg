bug #245068: cad/lepton-eda: Update to 1.9.10
=============================================

The Lepton EDA suite version 1.9.10 has been released.
There are many changes and fixes, please see the NEWS.md file[1].

The port itself has been simplified:
- finally, we got rid of dependency on Python! :-)
- greatly reduced number of patches
- rarely changed files that needs to be patched are now
  modified in the 'post-patch' target in the Makefile

[1] https://github.com/lepton-eda/lepton-eda/blob/master/NEWS.md

Best regards,
Dmitry.

