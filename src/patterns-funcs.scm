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

(define cairo-pattern-add-color-stop-rgb (c-lambda (cairo-pattern-t* double double double double) void "cairo_pattern_add_color_stop_rgb"))
(define cairo-pattern-add-color-stop-rgba (c-lambda (cairo-pattern-t* double double double double double) void "cairo_pattern_add_color_stop_rgba"))
(define cairo-pattern-get-color-stop-count (c-lambda (cairo-pattern-t* int*) cairo-status-t "cairo_pattern_get_color_stop_count"))
(define cairo-pattern-get-color-stop-rgba (c-lambda (cairo-pattern-t* int double* double* double* double* double*) cairo-status-t "cairo_pattern_get_color_stop_rgba"))
(define cairo-pattern-create-rgb (c-lambda (double double double) cairo-pattern-t* "cairo_pattern_create_rgb"))
(define cairo-pattern-create-rgba (c-lambda (double double double double) cairo-pattern-t* "cairo_pattern_create_rgba"))
(define cairo-pattern-get-rgba (c-lambda (cairo-pattern-t* double* double* double* double*) cairo-status-t "cairo_pattern_get_rgba"))
(define cairo-pattern-create-for-surface (c-lambda (cairo-surface-t*) cairo-pattern-t* "cairo_pattern_create_for_surface"))
(define cairo-pattern-get-surface (c-lambda (cairo-pattern-t* cairo-surface-t**) cairo-status-t "cairo_pattern_get_surface"))
(define cairo-pattern-create-linear (c-lambda (double double double double) cairo-pattern-t* "cairo_pattern_create_linear"))
(define cairo-pattern-get-linear-points (c-lambda (cairo-pattern-t* double* double* double* double*) cairo-status-t "cairo_pattern_get_linear_points"))
(define cairo-pattern-create-radial (c-lambda (double double double double double double) cairo-pattern-t* "cairo_pattern_create_radial"))
(define cairo-pattern-get-radial-circles (c-lambda (cairo-pattern-t* double* double* double* double* double* double*) cairo-status-t "cairo_pattern_get_radial_circles"))
(define cairo-pattern-reference (c-lambda (cairo-pattern-t*) cairo-pattern-t* "cairo_pattern_reference"))
(define cairo-pattern-destroy (c-lambda (cairo-pattern-t*) void "cairo_pattern_destroy"))
(define cairo-pattern-status (c-lambda (cairo-pattern-t*) cairo-status-t "cairo_pattern_status"))
(define cairo-pattern-set-extend (c-lambda (cairo-pattern-t* cairo-extend-t) void "cairo_pattern_set_extend"))
(define cairo-pattern-get-extend (c-lambda (cairo-pattern-t*) cairo-extend-t "cairo_pattern_get_extend"))
(define cairo-pattern-set-filter (c-lambda (cairo-pattern-t* cairo-filter-t) void "cairo_pattern_set_filter"))
(define cairo-pattern-get-filter (c-lambda (cairo-pattern-t*) cairo-filter-t "cairo_pattern_get_filter"))
(define cairo-pattern-set-matrix (c-lambda (cairo-pattern-t* cairo-matrix-t*) void "cairo_pattern_set_matrix"))
(define cairo-pattern-get-matrix (c-lambda (cairo-pattern-t* cairo-matrix-t*) void "cairo_pattern_get_matrix"))
(define cairo-pattern-get-type (c-lambda (cairo-pattern-t*) cairo-pattern-type-t "cairo_pattern_get_type"))
(define cairo-pattern-get-reference-count (c-lambda (cairo-pattern-t*) int "cairo_pattern_get_reference_count"))
(define cairo-pattern-set-user-data (c-lambda (cairo-pattern-t* cairo-user-data-key-t* void* cairo-destroy-func-t) cairo-status-t "cairo_pattern_set_user_data"))
(define cairo-pattern-get-user-data (c-lambda (cairo-pattern-t* cairo-user-data-key-t*) void* "cairo_pattern_get_user_data"))
