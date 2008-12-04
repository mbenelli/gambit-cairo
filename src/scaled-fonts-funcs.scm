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

(define cairo-scaled-font-create (c-lambda (cairo-font-face-t* cairo-matrix-t* cairo-matrix-t* cairo-font-options-t*) cairo-scaled-font-t* "cairo_scaled_font_create"))
(define cairo-scaled-font-reference (c-lambda (cairo-scaled-font-t*) cairo-scaled-font-t* "cairo_scaled_font_reference"))
(define cairo-scaled-font-destroy (c-lambda (cairo-scaled-font-t*) void "cairo_scaled_font_destroy"))
(define cairo-scaled-font-status (c-lambda (cairo-scaled-font-t*) cairo-status-t "cairo_scaled_font_status"))
(define cairo-scaled-font-extents (c-lambda (cairo-scaled-font-t* cairo-font-extents-t*) void "cairo_scaled_font_extents"))
(define cairo-scaled-font-text-extents (c-lambda (cairo-scaled-font-t* char-string cairo-text-extents-t*) void "cairo_scaled_font_text_extents"))
(define cairo-scaled-font-glyph-extents (c-lambda (cairo-scaled-font-t* cairo-glyph-t* int cairo-text-extents-t*) void "cairo_scaled_font_glyph_extents"))
(define cairo-scaled-font-get-font-face (c-lambda (cairo-scaled-font-t*) cairo-font-face-t* "cairo_scaled_font_get_font_face"))
(define cairo-scaled-font-get-font-options (c-lambda (cairo-scaled-font-t* cairo-font-options-t*) void "cairo_scaled_font_get_font_options"))
(define cairo-scaled-font-get-font-matrix (c-lambda (cairo-scaled-font-t* cairo-matrix-t*) void "cairo_scaled_font_get_font_matrix"))
(define cairo-scaled-font-get-ctm (c-lambda (cairo-scaled-font-t* cairo-matrix-t*) void "cairo_scaled_font_get_ctm"))
(define cairo-scaled-font-get-type (c-lambda (cairo-scaled-font-t*) cairo-font-type-t "cairo_scaled_font_get_type"))
(define cairo-scaled-font-get-reference-count (c-lambda (cairo-scaled-font-t*) int "cairo_scaled_font_get_reference_count"))
(define cairo-scaled-font-set-user-data (c-lambda (cairo-scaled-font-t* cairo-user-data-key-t* void* cairo-destroy-func-t) cairo-status-t "cairo_scaled_font_set_user_data"))
(define cairo-scaled-font-get-user-data (c-lambda (cairo-scaled-font-t* cairo-user-data-key-t*) void* "cairo_scaled_font_get_user_data"))
