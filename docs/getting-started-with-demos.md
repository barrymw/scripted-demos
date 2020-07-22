## Overview

Creating training material and how-to guides can be labourious and time
consuming.  In an attempt to provide a means to streamline this process a
new [scripted-demos] git project has been created.  This how-to guide itself
was created by using the project.

This file uses the [markdown] markup language for annotations.  The
`bin/create_demo` script uses the markdown file as the source for creating:
- [asciinema] terminal recording
- SVG and dynamic GIF images
- video in MP4
- markdown, HTML and self-contained HTML documentation.

All lines in the markdown file are echoed to the screen, except for:
- lines that start and end with ticks, such as step 1 below,
- lines that start with four spaces, such as steps 2,3 and 4.

Run `/bin/create_demos --help` for more information on generating images and
docs from markdown files.

## Step-by-step guide 
 
### 1. Clone the git project

`git clone https://github.com/barrymw/scripted-demos.git;`

### 2. Clone creates a folder based on the project name, cd into it

    cd ccc_control_repo;

### 3. The develop branch is the starting point for adding features

    git checkout develop

### 4. Run setup to configure the project ready for development

    bin/setup;

## Recap
 
- Clone the repository
- Checkout the develop branch
- Run bin/setup to configure the project

## Further Information

- [Getting started with git flow]
- [asciinema]
- [markdown]
- [scripted-demos]

[//]: # (The following lines are link references used throughout this doc)
[Getting started with git flow]: docs/getting-started-with-git-flow.md
[asciinema]: https://asciinema.org/
[markdown]: https://www.markdownguide.org/basic-syntax
[scripted-demos]: https://github.com/barrymw/scripted-demos
