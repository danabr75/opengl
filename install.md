---
layout: default
---

# Building opengl

## Pre-requisites

### General

* C compiler (not needed for binary install on Windows)
* ruby 1.9.2+
* rake
* OpenGL headers for OpenGL version 1.1 or later (not needed for binary install on Windows)

For glut:
* GLUT 3.7+ or API-compatible implementation (freeglut, OpenGLUT)

The main goal is having ruby installed and being capable of compiling
native C extensions for ruby (ruby-dev), as well as having the required
OpenGL libraries.

### Linux

On Ubuntu or Debian systems, aside from Ruby you'll need the 'developer' package
`ruby-dev`, which supports compiling C extensions for ruby.

For OpenGL related headers you'll need the following packages:

* `libgl1-mesa-dri libgl1-mesa-dev` -- opengl
* `libglu1-mesa libglu1-mesa-dev` -- glu
* `freeglut3 freeglut3-dev` -- (free)glut

On some distributions you may need the `xorg-dev` developer package.

h4. ArchLinux

```sh
$ pacman -S mesa glu freeglut
```

### Mac OS X

On OS X, you will need to install your own version of Ruby as the
version that ships with OS X has known problems with properly building
ruby-opengl bindings.  You'll also need XCode for gcc and tools.

### Windows

For manual build on Windows you need to have platform SDK and compiler that *must* match the one which was used for compiling ruby binary (for One-click ruby installer it is MSVC 6.0).

If ruby was installed via the one-click installer, the [DevKit](http://rubyinstaller.org/add-ons/devkit/)
is also needed (for compiling native C extensions).

## Build and installation


### Installing as a gem

opengl should support being installed via gems now.  Just do 
`gem install opengl` and it should pull down the gem
and try to build the bindings for you automatically.

For windows there is also pre-built binary windows gem available
(i386-mswin32) which is compatible with the ruby one-click installer and does not need
compiler or other mentioned tools installed.

### Manual Build instructions for all platforms (see above for platform-specific notes)

* Make sure you have working ruby with rubygems installed
  and (if needed) appropriate developer packages (ruby-dev, ruby1.9-dev, ...)
* Make sure you have a working C compiler
* Install rake  by running `gem install rake`
* Make sure you have working OpenGL installation, this includes libGL, libGLU,
  glut and (if needed) appropriate -dev or -devel packages.
* Run `rake` in the root directory of the project
* (OPTIONAL) Run `rake test` to run unit tests to verify it works properly

### Installing manually built extensions

* `rake clean` to clean out the project
* `rake gem` to create source gem from project
* `gem install pkg/ruby-opengl-(version).gem` to compile and install the gem
* Done.

### Building binary gem (useful only for binary distribution of the project)

* Run `rake binary_gem`
* Binary gem will be generated in *pkg/* directory

### Testing

To run unit tests:

```sh
$ rake test
```

Note that the tests have the adverse effect of testing the underlying OpenGL
implementation, so depending on your GL provider, drivers or OS, the tests may
fail, crash, or not run at all, without affecting your ability to use the
bindings.

### Running programs and examples

To run a sample file, make sure the ruby-opengl gem is installed then:

```sh
$ cd examples
$ ruby -rubygems plane.rb
```
