# Makefile to gambit-c's cairo binding.
#
# Copyright (C) 2008 Marco Benelli <mbenelli@yahoo.com>
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA


# Scheme compiler options
GAMBIT_ROOT=/usr/local/Gambit-C/current
GSC=$(GAMBIT_ROOT)/bin/gsc
GSC_OPTIONS= -f

# C compiler options
CC=gcc
CAIRO_INCLUDE=`pkg-config --cflags cairo`
CAIRO_LIBS=`pkg-config --libs cairo`
CC_OPTIONS="$(CAIRO_INCLUDE)"
LD_OPTIONS="$(CAIRO_LIBS)"

# Source location
SRC=./src
VPATH=$(SRC)

# Rules
.SUFFIXES: .o1 .scm
.scm.o1:
	$(GSC) $(GSC_OPTIONS) \
		-cc-options $(CC_OPTIONS) \
		-ld-options $(LD_OPTIONS) $<

cairo: cairo.o1
	mv $(SRC)/cairo.o1 .

clean:
	rm -f $(SRC)/*.o*
	rm -f $(SRC)/*.c
