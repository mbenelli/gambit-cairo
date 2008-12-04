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

(define cairo-create (c-lambda (cairo-surface-t*) cairo-t* "cairo_create"))
(define cairo-reference (c-lambda (cairo-t*) cairo-t* "cairo_reference"))
(define cairo-destroy (c-lambda (cairo-t*) void "cairo_destroy"))
(define cairo-status (c-lambda (cairo-t*) cairo-status-t "cairo_status"))
(define cairo-save (c-lambda (cairo-t*) void "cairo_save"))
(define cairo-restore (c-lambda (cairo-t*) void "cairo_restore"))
(define cairo-get-target (c-lambda (cairo-t*) cairo-surface-t* "cairo_get_target"))
(define cairo-push-group (c-lambda (cairo-t*) void "cairo_push_group"))
(define cairo-push-group-with-content (c-lambda (cairo-t* cairo-content-t) void "cairo_push_group_with_content"))
(define cairo-pop-group (c-lambda (cairo-t*) cairo-pattern-t* "cairo_pop_group"))
(define cairo-pop-group-to-source (c-lambda (cairo-t*) void "cairo_pop_group_to_source"))
(define cairo-get-group-target (c-lambda (cairo-t*) cairo-surface-t* "cairo_get_group_target"))
(define cairo-set-source-rgb (c-lambda (cairo-t* double double double) void "cairo_set_source_rgb"))
(define cairo-set-source-rgba (c-lambda (cairo-t* double double double double) void "cairo_set_source_rgba"))
(define cairo-set-source (c-lambda (cairo-t* cairo-pattern-t*) void "cairo_set_source"))
(define cairo-set-source-surface (c-lambda (cairo-t* cairo-surface-t* double double) void "cairo_set_source_surface"))
(define cairo-get-source (c-lambda (cairo-t*) cairo-pattern-t* "cairo_get_source"))
(define cairo-set-antialias (c-lambda (cairo-t* cairo-antialias-t) void "cairo_set_antialias"))
(define cairo-get-antialias (c-lambda (cairo-t*) cairo-antialias-t "cairo_get_antialias"))
(define cairo-set-dash (c-lambda (cairo-t* double* int double) void "cairo_set_dash"))
(define cairo-get-dash-count (c-lambda (cairo-t*) int "cairo_get_dash_count"))
(define cairo-get-dash (c-lambda (cairo-t* double* double*) void "cairo_get_dash"))
(define cairo-set-fill-rule (c-lambda (cairo-t* cairo-fill-rule-t) void "cairo_set_fill_rule"))
(define cairo-get-fill-rule (c-lambda (cairo-t*) cairo-fill-rule-t "cairo_get_fill_rule"))
(define cairo-set-line-cap (c-lambda (cairo-t* cairo-line-cap-t) void "cairo_set_line_cap"))
(define cairo-get-line-cap (c-lambda (cairo-t*) cairo-line-cap-t "cairo_get_line_cap"))
(define cairo-set-line-join (c-lambda (cairo-t* cairo-line-join-t) void "cairo_set_line_join"))
(define cairo-get-line-join (c-lambda (cairo-t*) cairo-line-join-t "cairo_get_line_join"))
(define cairo-set-line-width (c-lambda (cairo-t* double) void "cairo_set_line_width"))
(define cairo-get-line-width (c-lambda (cairo-t*) double "cairo_get_line_width"))
(define cairo-set-miter-limit (c-lambda (cairo-t* double) void "cairo_set_miter_limit"))
(define cairo-get-miter-limit (c-lambda (cairo-t*) double "cairo_get_miter_limit"))
(define cairo-set-operator (c-lambda (cairo-t* cairo-operator-t) void "cairo_set_operator"))
(define cairo-get-operator (c-lambda (cairo-t*) cairo-operator-t "cairo_get_operator"))
(define cairo-set-tolerance (c-lambda (cairo-t* double) void "cairo_set_tolerance"))
(define cairo-get-tolerance (c-lambda (cairo-t*) double "cairo_get_tolerance"))
(define cairo-clip (c-lambda (cairo-t*) void "cairo_clip"))
(define cairo-clip-preserve (c-lambda (cairo-t*) void "cairo_clip_preserve"))
(define cairo-clip-extents (c-lambda (cairo-t* double* double* double* double*) void "cairo_clip_extents"))
(define cairo-reset-clip (c-lambda (cairo-t*) void "cairo_reset_clip"))
(define cairo-rectangle-list-destroy (c-lambda (cairo-rectangle-list-t*) void "cairo_rectangle_list_destroy"))
(define cairo-copy-clip-rectangle-list (c-lambda (cairo-t*) cairo-rectangle-list-t* "cairo_copy_clip_rectangle_list"))
(define cairo-fill (c-lambda (cairo-t*) void "cairo_fill"))
(define cairo-fill-preserve (c-lambda (cairo-t*) void "cairo_fill_preserve"))
(define cairo-fill-extents (c-lambda (cairo-t* double* double* double* double*) void "cairo_fill_extents"))
(define cairo-in-fill (c-lambda (cairo-t* double double) cairo-bool-t "cairo_in_fill"))
(define cairo-mask (c-lambda (cairo-t* cairo-pattern-t*) void "cairo_mask"))
(define cairo-mask-surface (c-lambda (cairo-t* cairo-surface-t* double double) void "cairo_mask_surface"))
(define cairo-paint (c-lambda (cairo-t*) void "cairo_paint"))
(define cairo-paint-with-alpha (c-lambda (cairo-t* double) void "cairo_paint_with_alpha"))
(define cairo-stroke (c-lambda (cairo-t*) void "cairo_stroke"))
(define cairo-stroke-preserve (c-lambda (cairo-t*) void "cairo_stroke_preserve"))
(define cairo-stroke-extents (c-lambda (cairo-t* double* double* double* double*) void "cairo_stroke_extents"))
(define cairo-in-stroke (c-lambda (cairo-t* double double) cairo-bool-t "cairo_in_stroke"))
(define cairo-copy-page (c-lambda (cairo-t*) void "cairo_copy_page"))
(define cairo-show-page (c-lambda (cairo-t*) void "cairo_show_page"))
(define cairo-get-reference-count (c-lambda (cairo-t*) int "cairo_get_reference_count"))
(define cairo-set-user-data (c-lambda (cairo-t* cairo-user-data-key-t* void* cairo-destroy-func-t) cairo-status-t "cairo_set_user_data"))
(define cairo-get-user-data (c-lambda (cairo-t* cairo-user-data-key-t*) void* "cairo_get_user_data"))
