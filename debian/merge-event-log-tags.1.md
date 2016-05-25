% MERGE-EVENT-LOG-TAGS(1) android-platform-build | merge-event-log-tags Manuals
% The Android Open Source Project
% 6.0.1_r16

# NAME

merge-event-log-tags - event-logs-tags mergers

# SYNOPSIS

**merge-event-log-tags** [-o _output_file_] _input_file..._

# DESCRIPTION

Merges together zero or more event-logs-tags to produce a single output file,
stripped of comments. Checks that no tag numbers conflict and fails if they do.

# OPTIONS

-h
: Display help.