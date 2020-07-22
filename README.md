# Overview

The create_demo script uses the source markdown file to generate various
formats of material.  By default the destination for the generated files is the
current directory and all image and video formats are generated.  No
documentation is generated by default.

The docs and gif/svg/mp4 options are also mutually exclusive, as both execute
the same commands, which may result in unexpected results.

The videos are created by using [asciinema] to record the terminal output, and
then converted to the various video formats.  The documentation output also
uses asciinema to capture the command executions, which is embedded in the
output.

The term 'video' is used to describe the visual outputs:
- asciinema cast file output
- SVG image
- animated GIF
- mp4 video

# Setup

The script was developed for Enterprise Linux based hosts, however should be
functional on other Linux environments.  The create demo script is dependent on
the following packages:
* epel-release
* https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm (rpm)
* asciinema
* dos2unix
* ImageMagick
* ffmpeg
* gifsicle
* ncurses-term
* npm
* pandoc
* pv
* xterm
* svg-term-cli (npm)

If puppet is installed on the host, the `bin/setup` command can be used to
install the dependencies on an Enterprise Linux host.

# Usage

The create_demo script has many options to customise what output is generated.
All video formats are created by default, and no markdown or HTML
documentation.  The output filenames are based on the source name, e.g. a
source of getting-started-with-demo.md would result in a
getting-started-with-demos.cast asciinema file being generated.

The examples below include the `--overwrite` option so that the commands can be
ran in order without any additional cleanup.

## Get help

`bin/create_demo --help;`

## Create video files based on a markdown source.

This is the simplest option.  It is recommended to include the `--dest` to
define the output destination.  If it is not provided, the output defaults to
the current working directory.

`bin/create_demo --source ./docs/getting-started-with-demos.md --dest /tmp;`

## Create video files, excluding mp4, based on a markdown source.


`bin/create_demo --source ./docs/getting-started-with-demos.md --dest /tmp --no-mp4 --overwrite;`

## Create markdown and HTML from a markdown source.

`bin/create_demo --source ./docs/getting-started-with-demos.md --dest /tmp --docs --overwrite;`

## Create videos with faster comment output

The default speed for text output is 10 characters per second, for both
markdown and command output.  The markdown text is output as comments on the
command line and its output can be made quicker by setting the `MARKDOWN_SPEED`
environment variable.

`MARKDOWN_SPEED=30 bin/create_demo --source ./docs/getting-started-with-demos.md --dest /tmp --no-mp4 --overwrite;`

## Running the asciinema cast

The asciinema command can also play back the cast to the current terminal.
During playback, pressing the spacebar pauses the playback.  The other
advantage with asciinema, is that as it is text output, any text that is output
can be copied and used in another window.  This makes following a series of
commands alot easier than a standard video.

`asciinema play /tmp/getting-started-with-demos.md.cast;`

## Speeding up the playback of the asciinema cast

The speed can be controlled by the `-s` option and idle time can be skipped by setting the `-s` option.  The following playback will be five times the normal speed and limit idle time to 2 seconds.

`asciinema play -s 5 -i 2 /tmp/getting-started-with-demos.md.cast;`

