
# NAME

signapk - JAR and APK signing tool

# SYNOPSIS

Command line tool for signing Android ZIP/JAR/APK files:

**signapk** [_-w_] [_-a <alignment>_] [_-providerClass <className>_] _publickey.x509_[_.pem_] _privatekey.pk8_ [_publickey2.x509_[_.pem_] _privatekey2.pk8_ ...] _input.jar output.jar_
**signapk** _file.jar_

*input.jar* is an existing file to sign.

# DESCRIPTION

Signs ZIP files, including JARs, APKs and Over-The-Air (OTA) updates,
in a way compatible with Android's mincrypt verifier, using EC or RSA
keys and SHA1 or SHA-256. The tool can additionally sign APKs using
APK Signature Scheme v2. It is the standard tool used to sign APK and
JAR files distributed as part of Android ROMs.

# HISTORICAL NOTE

Prior to the KitKat (aka 4.4.2 aka android-19) release, signapk
ignored the signature algorithm specified in the certificate and
always used SHA1withRSA.

Starting with JellyBean-MR2 (aka 4.3 aka android-18), the platform
supports SHA256withRSA, so we use the signature algorithm in the
certificate to select which to use (SHA256withRSA or
SHA1withRSA). Also in JellyBean-MR2, EC keys are supported.

Because there are old keys still in use whose certificate actually
says "MD5withRSA", those are treated as though they say "SHA1withRSA"
for compatibility with older releases.

# SEE ALSO

jar(1)
zip(1)
zipalign(1)

https://source.android.com/devices/tech/ota/sign_builds.html
