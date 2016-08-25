% ZIPALIGN(1) android-platform-build | zipalign Manuals
% The Android Open Source Project
% 6.0.1_r55

# NAME

zipalign - ZIP/APK alignment tool for Android application files

# SYNOPSIS

To align infile.zip and save it as outfile.zip:

**zipalign** [-f] [-p] [-t] [-v] [-z] _align_ _infile.zip_ _outfile.zip_

To confirm the alignment of existing.zip:

**zipalign** -c [-v] _align_ _existing.zip_

The _align_ is an integer that defines the byte-alignment boundaries. This
must always be 4 (which provides 32-bit alignment) or else it effectively does
nothing.

# DESCRIPTION

zipalign is an archive alignment tool that provides important optimization to
Android application (.apk) files. The purpose is to ensure that all uncompressed
data starts with a particular alignment relative to the start of the file.
Specifically, it causes all uncompressed data within the .apk, such as images or
raw files, to be aligned on 4-byte boundaries. This allows all portions to be
accessed directly with mmap() even if they contain binary data with alignment
restrictions. The benefit is a reduction in the amount of RAM consumed when
running the application.

This tool should always be used to align your .apk file before distributing it
to end-users. The Android build tools can handle this for you. Android Studio
automatically aligns your .apk after it signs it with your private key. The
build scripts used when compiling your application with Gradle also align your
.apk, as long as you have provided the path to your keystore and the key alias
in your project gradle.properties file, so that the build tools can sign the
package first.

Caution: zipalign must only be performed after the .apk file has been signed
with your private key. If you perform zipalign before signing, then the signing
procedure will undo the alignment. Also, do not make alterations to the aligned
package. Alterations to the archive, such as renaming or deleting entries, will
potentially disrupt the alignment of the modified entry and all later entries.
And any files added to an "aligned" archive will not be aligned.

The adjustment is made by altering the size of the "extra" field in the zip
Local File Header sections. Existing data in the "extra" fields may be altered
by this process.

For more information about how to use zipalign when building your application,
please read "Signing Your Application":
https://developer.android.com/tools/publishing/app-signing.html

# OPTIONS

-c
: Check alignment only (does not modify file)

-f
: Overwrite existing _outfile.zip_

-p
: Page align stored shared object files

-t
: Zero out timestamps for reproducible builds

-v
: Verbose output

-z
: Recompress using Zopfli

# SEE ALSO

https://developer.android.com/studio/command-line/zipalign.html