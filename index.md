---
layout: default
---

<h1 class='logo'>opengl</h1>

An OpenGL wrapper for Ruby. Contains bindings for OpenGL.
Available for Windows, Linux and OS X. GLUT, GLU and GLFW were split
into standalone gems. The documentation, however, is still stored here.

This is the main documentation site for ruby bindings of OpenGL related
libraries.

## Synopsis

```ruby
require 'opengl'
# (code sample of usage)
```

## Requirements

* Ruby 2.0+ (see [0.7](https://github.com/larskanis/opengl/tree/0.7) for Ruby 1.8.x compatible branch)
* OpenGL development files installed
* GLU and (free-)GLUT development files installed for glu/glut gem.

## Install

```sh
gem install opengl
```

## Getting started
Please have a look at the [Ruby OpenGL tutorial](opengl/tutorial.html)

## Developers

After checking out the source, run:

```sh
$ bundle install
$ rake compile test
```

This will install any missing dependencies, build the Ruby C extension and run all tests.
Not all tests succeed on all graphic cards.
