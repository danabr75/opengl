#
# Copyright (C) 2006 Peter McLain <peter.mclain@gmail.com>
# Copyright (C) 2007 Jan Dvorak <jan.dvorak@kraxnet.cz>
#
# This program is distributed under the terms of the MIT license.
# See the included MIT-LICENSE file for the terms of this license.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

# This module provides access to the GL,GLU and GLUT methods and constants
# in the way that they were available in previous versions of ruby-opengl.
#
# Thanks to Ilmari Heikkinen for a previous "reversed" version of this code,
# and to Bill Kelly for a version before that one.

module Gl
  BINDINGS_VERSION = '0.9.2'
  RUBY_OPENGL_VERSION = BINDINGS_VERSION
end

begin
  RUBY_VERSION =~ /(\d+.\d+)/
  require "opengl/#{$1}/opengl"
rescue LoadError
  require 'opengl/opengl'
end

# (Gl.)glVertex -> GL.Vertex
# (Gl::)GL_TRUE -> GL::TRUE
module GL
  extend self
  include Gl

  Gl.constants.each do |cn|
    n = cn.to_s.sub(/^GL_/,'')
    # due to ruby naming scheme, we can't export constants with leading decimal,
    # e.g. (Gl::)GL_2D would under old syntax become (GL::)2D which is illegal
    next if n =~ /^[0-9]/
    const_set( n, Gl.const_get( cn ) )
  end

  Gl.methods( false ).each do |mn|
    n = mn.to_s.sub(/^gl/,'')
    alias_method( n, mn )
    public( n )
  end
end

OpenGL = Gl
