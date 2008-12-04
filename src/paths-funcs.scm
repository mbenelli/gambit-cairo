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

(define cairo-copy-path (c-lambda (cairo-t*) cairo-path-t* "cairo_copy_path"))
(define cairo-copy-path-flat (c-lambda (cairo-t*) cairo-path-t* "cairo_copy_path_flat"))
(define cairo-path-destroy (c-lambda (cairo-path-t*) void "cairo_path_destroy"))
(define cairo-append-path (c-lambda (cairo-t* cairo-path-t*) void "cairo_append_path"))
(define cairo-get-current-point (c-lambda (cairo-t* double* double*) void "cairo_get_current_point"))
(define cairo-new-path (c-lambda (cairo-t*) void "cairo_new_path"))
(define cairo-new-sub-path (c-lambda (cairo-t*) void "cairo_new_sub_path"))
(define cairo-close-path (c-lambda (cairo-t*) void "cairo_close_path"))
(define cairo-arc (c-lambda (cairo-t* double double double double double) void "cairo_arc"))
(define cairo-arc-negative (c-lambda (cairo-t* double double double double double) void "cairo_arc_negative"))
(define cairo-curve-to (c-lambda (cairo-t* double double double double double double) void "cairo_curve_to"))
(define cairo-line-to (c-lambda (cairo-t* double double) void "cairo_line_to"))
(define cairo-move-to (c-lambda (cairo-t* double double) void "cairo_move_to"))
(define cairo-rectangle (c-lambda (cairo-t* double double double double) void "cairo_rectangle"))
(define cairo-glyph-path (c-lambda (cairo-t* cairo-glyph-t* int) void "cairo_glyph_path"))
(define cairo-text-path (c-lambda (cairo-t* char-string) void "cairo_text_path"))
(define cairo-rel-curve-to (c-lambda (cairo-t* double double double double double double) void "cairo_rel_curve_to"))
(define cairo-rel-line-to (c-lambda (cairo-t* double double) void "cairo_rel_line_to"))
(define cairo-rel-move-to (c-lambda (cairo-t* double double) void "cairo_rel_move_to"))
