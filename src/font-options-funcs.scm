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

(define cairo-font-options-create (c-lambda () cairo-font-options-t* "cairo_font_options_create"))
(define cairo-font-options-copy (c-lambda (cairo-font-options-t*) cairo-font-options-t* "cairo_font_options_copy"))
(define cairo-font-options-destroy (c-lambda (cairo-font-options-t*) void "cairo_font_options_destroy"))
(define cairo-font-options-status (c-lambda (cairo-font-options-t*) cairo-status-t "cairo_font_options_status"))
(define cairo-font-options-merge (c-lambda (cairo-font-options-t* cairo-font-options-t*) void "cairo_font_options_merge"))
(define cairo-font-options-hash (c-lambda (cairo-font-options-t*) long "cairo_font_options_hash"))
(define cairo-font-options-equal (c-lambda (cairo-font-options-t* cairo-font-options-t*) cairo-bool-t "cairo_font_options_equal"))
(define cairo-font-options-set-antialias (c-lambda (cairo-font-options-t* cairo-antialias-t) void "cairo_font_options_set_antialias"))
(define cairo-font-options-get-antialias (c-lambda (cairo-font-options-t*) cairo-antialias-t "cairo_font_options_get_antialias"))
(define cairo-font-options-set-subpixel-order (c-lambda (cairo-font-options-t* cairo-subpixel-order-t) void "cairo_font_options_set_subpixel_order"))
(define cairo-font-options-get-subpixel-order (c-lambda (cairo-font-options-t*) cairo-subpixel-order-t "cairo_font_options_get_subpixel_order"))
(define cairo-font-options-set-hint-style (c-lambda (cairo-font-options-t* cairo-hint-style-t) void "cairo_font_options_set_hint_style"))
(define cairo-font-options-get-hint-style (c-lambda (cairo-font-options-t*) cairo-hint-style-t "cairo_font_options_get_hint_style"))
(define cairo-font-options-set-hint-metrics (c-lambda (cairo-font-options-t* cairo-hint-metrics-t) void "cairo_font_options_set_hint_metrics"))
(define cairo-font-options-get-hint-metrics (c-lambda (cairo-font-options-t*) cairo-hint-metrics-t "cairo_font_options_get_hint_metrics"))
