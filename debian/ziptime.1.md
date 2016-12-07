% ZIPTIME(1) | 7.0.0_r1
% The Android Open Source Project
% 22 August 2016

# NAME

ziptime - zip timestamp tool

# SYNOPSIS

To normalize the timestamps in the Zip header:

**ziptime** _file.zip_

where _file.zip_ is an existing Zip archive to rewrite.

# DESCRIPTION

This tools replaces the timestamps in the zip headers with a static time
(Jan 1 2008). The extra fields are not changed, so you'll need to use the
-X option to zip so that it doesn't create the 'universal time' extra.

# SEE ALSO

  * zip(1)
  * zipalign(1)
  * https://developer.android.com/studio/command-line/zipalign.html
