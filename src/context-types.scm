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
  ___SCMOBJ _cairo_free_context(void *p) {
    cairo_destroy(p);
    return ___TRU;
  }
c-declare-end
)

(c-declare #<<c-declare-end
  ___SCMOBJ _cairo_free_rectangle_list(void *p) {
    cairo_rectangle_list_destroy(p);
    return ___TRU;
  }
c-declare-end
)


(c-define-type cairo-t (struct "cairo_t")) 
(c-define-type cairo-t* (pointer "cairo_t" 'cairo_t* "_cairo_free_context"))
(c-define-type cairo-t** (pointer (pointer "cairo_t")))
(c-define-type cairo-antialias-t int)
(c-define-type cairo-fill-rule-t int)
(c-define-type cairo-line-cap-t int)
(c-define-type cairo-line-join-t int)
(c-define-type cairo-operator-t int)
(c-define-type cairo-rectangle-t (struct "cairo_rectangle_t"))
(c-define-type cairo-rectangle-t* (pointer "cairo_rectangle_t"))
(c-define-type cairo-rectangle-t** (pointer (pointer "cairo_rectangle_t")))
(c-define-type cairo-rectangle-list-t (struct "cairo_rectangle_list_t"))
(c-define-type cairo-rectangle-list-t* (pointer "cairo_rectangle_list_t"
						'cairo-rectangle-list-t*
						"_cairo_free_rectangle_list"))
(c-define-type cairo-rectangle-list-t** (pointer (pointer "cairo_rectangle_list_t")))
