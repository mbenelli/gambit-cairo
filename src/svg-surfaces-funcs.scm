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

(define cairo-svg-surface-create (c-lambda (char-string double double) cairo-surface-t* "cairo_svg_surface_create"))
(define cairo-svg-surface-create-for-stream (c-lambda (cairo-write-func-t void* double double) cairo-surface-t* "cairo_svg_surface_create_for_stream"))
(define cairo-svg-surface-restrict-to-version (c-lambda (cairo-surface-t* cairo-svg-version-t) void "cairo_svg_surface_restrict_to_version"))
;(define cairo-svg-get-versions (c-lambda (cairo-svg-version-t** int*) void "cairo_svg_get_versions"))
(define cairo-svg-version-to-string (c-lambda (cairo-svg-version-t) char-string "cairo_svg_version_to_string"))
