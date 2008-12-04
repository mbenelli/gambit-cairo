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

(define cairo-select-font-face (c-lambda (cairo-t* char-string cairo-font-slant-t cairo-font-weight-t) void "cairo_select_font_face"))
(define cairo-set-font-size (c-lambda (cairo-t* double) void "cairo_set_font_size"))
(define cairo-set-font-matrix (c-lambda (cairo-t* cairo-matrix-t*) void "cairo_set_font_matrix"))
(define cairo-get-font-matrix (c-lambda (cairo-t* cairo-matrix-t*) void "cairo_get_font_matrix"))
(define cairo-set-font-options (c-lambda (cairo-t* cairo-font-options-t*) void "cairo_set_font_options"))
(define cairo-get-font-options (c-lambda (cairo-t* cairo-font-options-t*) void "cairo_get_font_options"))
(define cairo-set-font-face (c-lambda (cairo-t* cairo-font-face-t*) void "cairo_set_font_face"))
(define cairo-get-font-face (c-lambda (cairo-t*) cairo-font-face-t* "cairo_get_font_face"))
(define cairo-set-scaled-font (c-lambda (cairo-t* cairo-scaled-font-t*) void "cairo_set_scaled_font"))
(define cairo-get-scaled-font (c-lambda (cairo-t*) cairo-scaled-font-t* "cairo_get_scaled_font"))
(define cairo-show-text (c-lambda (cairo-t* char-string) void "cairo_show_text"))
(define cairo-show-glyphs (c-lambda (cairo-t* cairo-glyph-t* int) void "cairo_show_glyphs"))
(define cairo-font-extents (c-lambda (cairo-t* cairo-font-extents-t*) void "cairo_font_extents"))
(define cairo-text-extents (c-lambda (cairo-t* char-string cairo-text-extents-t*) void "cairo_text_extents"))
(define cairo-glyph-extents (c-lambda (cairo-t* cairo-glyph-t* int cairo-text-extents-t*) void "cairo_glyph_extents"))
