
# NAME

signtos - signing tool for signing Trusty images

# SYNOPSIS

Command line tool from Android for signing Trusty image files:

**signtos** [_-providerClass <className>_] _privatekey.pk8 input.img output.img_

# DESCRIPTION

Signs ARM Trusty images for use with operating systems that support
it. Trusty is a set of software components supporting a Trusted
Execution Environment (TEE) on mobile devices.  The key must be stored
in PKCS#8 format.

# SEE ALSO

signapk(1)

https://source.android.com/security/trusty/
