bug #251788:
subject: cad/lepton-eda: Update to 1.9.13
attachment "description" field: cad/lepton-eda: Update to 1.9.13
submitted: 12 December 2020, 18:55
=============================================

Dear committers!

We are pleased to announce Lepton EDA release 1.9.13.
For the list of changes, please take a look at the
NEWS.md file ([1], [2]) in the github repository.

The current version in the Ports Collection is 1.9.11,
but I'm skipping 1.9.12, since the next release (1.9.13)
came out only a week after that (being a bugfix release).

In the port itself, this time I decided to remove
USE_GITHUB and set MASTER_SITES manually. It allows
me to get rid of the last patch, because the file
in question (version.h) is included in the source
tarball downloaded this way (but it's absent in _GH0
file which was used by default before).

Also, in port examples, now I make substitutions in
Makefile.in files, not in Makefile.am (the post-patch
target). Thanks to this change, USES autoreconf is no
longer required, thus reducing the build time.

I hope I have done the above changes the right way. :-)

[1]
https://github.com/lepton-eda/lepton-eda/blob/master/NEWS.md#notable-changes-in-lepton-eda-1912-20201204
[2]
https://github.com/lepton-eda/lepton-eda/blob/master/NEWS.md#notable-changes-in-lepton-eda-1913-20201211


Regards,
Dmitry.

