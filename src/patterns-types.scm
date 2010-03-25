;;; This file is part of Cairo's bindings for Gambit-C
;;;
;;; Copyright (C) 2008  Marco Benelli <mbenelli@yahoo.com>
;;;
;;; This library is free software; you can redistribute it and/or
;;; modify it under the terms of the GNU Lesser General Public
;;; License as published by the Free Software Foundation; either
;;; version 2.1 of the License, or (at your option) any later version.
;;;
;;; This library is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;; Lesser General Public License for more details.
;;;
;;; You should have received a copy of the GNU Lesser General Public
;;; License along with this library; if not, write to the Free Software
;;; Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

(c-declare #<<c-declare-end
  ___SCMOBJ _cairo_free_pattern(void *p) {
    cairo_pattern_destroy(p);
    return ___TRU;
  }
c-declare-end
)


(c-define-type cairo-pattern-t (struct "cairo_pattern_t"))
(c-define-type cairo-pattern-t* (pointer "cairo_pattern_t"
					 'cairo-pattern-t*
					 "_cairo_free_pattern"))
(c-define-type cairo-pattern-t** (pointer (pointer "cairo_pattern_t")))
(c-define-type cairo-extend-t int)
(c-define-type cairo-filter-t int)
(c-define-type cairo-pattern-type-t int)
