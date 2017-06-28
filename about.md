---
layout: default
---

# Project history

The [original ruby-opengl](http://www2.giganet.net/~yoshi/) was written
by Yoshi.

James A. desperately wanted to get the OpenGL Ruby bindings working on his Mac,
but they wouldn't even compile on OSX. After a little bit of tweaking, he made
his patched bindings available to the ruby community in a very informal manner.

John G. then wanted to clean it up and add some docs to it, and so started
tweaking and put up a new site and made his changes available.

Then Peter M. came along and decided to try updating ruby-opengl using SWIG,
as it seemed easier than doing everything by hand. Peter wrote the new code,
John started the actual RubyForge project, put up a new site, and Peter
committed the code.

Thu M. V. joined the project with a lot of energy, and the mailing list
was showing a good bit of activity.

After some experience, we began to question whether SWIG was necessary/helpful
for a project of this nature.  The leaning was that people want to abandon
SWIG and go back to maintaining the binding files by hand. Thu even provided
a script to help with the manual coding that would be required without using
SWIG.

The reasoning at the time was:

Pro-SWIG:

* Could use the .i files for another project, perhaps (OTOH, we couldn't
  use previous .i files on this project...)

* It's supposed to require less manual coding.

Con-SWIG:

* yet another tool to learn

* OpenGL isn't really all that big

* OpenGL doesn't change a lot

* A lot of boilerplate and overhead in the generated files because SWIG is
  a general tool.


In September 2006, we stopped using SWIG. Thu and Peter began fine tuning
Thu's original @utils/mkwrap.rb@ script.

Development stalled in October 2006.

Development picked up again towards the end of 2006. After a long hiatus 
and getting a new release of mkrf out the door, version 0.33 (following the
numbering of original Yoshi's bindings which stalled at 0.32) was released.

During first half of 2007, we added large portion of code, as well as number
of unit tests, creating near-complete support for OpenGL 2.1.
Support for MS Windows was also added during this time.

Version 0.40 was released in July 2007.

Version 0.50 was released in October 2007.

Version 0.60 was released in December 2007.

After the development stopped on April 1st, 2009 (after being developed for
a long time by only Jan D.), Eric H. picked up the development in 2011 and
modernized the library. In 2012 Lars K. took over.

The opengl gem 0.70 and 0.80 was released in February 2013. ruby-opengl now
forwards to the opengl gem.

[glut](https://github.com/archSeer/glut) and [glu](https://github.com/archSeer/glu)
were split from the opengl into separate gems in March 2013.

## Thank you

Aside from big thank-you's to the core devs, special thanks also goes to:

* Bill Kelly -- provided some pilot code changing how users can call method and constant names.
* Ilmari Heikkinen -- provided code for changing how users can call method and constant names.
* [James Adam](https://github.com/lazyatom) -- Mac OS X fixes
* Tony Hursh -- Mac OS X glut build tweak
* Sean Long -- More Mac OS X fixes
* [John Gabriele](https://github.com/uvtc) -- Numerous fixes, documentation, and project support
* Ronald Pijnacker -- Windows support and bugfixes
* **Yoshi** -- providing ruby-opengl-0.32g from which to work off of.

Original ruby-opengl committers:

* [Allain Hoang](https://github.com/hoanga)
* [Peter McLain](https://github.com/pbm) -- SWIG wrapper, commits 2006-2007
* [Vo Minh Thu](https://github.com/noteed)
* [Jan Dvorak](https://rubygems.org/profiles/snoutmate) -- Responsible for most of the commits 2007-2009

New era:

* [Eric Hodel](https://github.com/drbrain) -- 2011-2012 commits, fixes, modernization, examples
* [Lars Kanis](https://github.com/larskanis)
* [Blaž Hrastnik](https://github.com/archSeer)
