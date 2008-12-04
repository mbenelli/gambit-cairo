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

(define cairo-surface-create-similar (c-lambda (cairo-surface-t* cairo-content-t int int) cairo-surface-t* "cairo_surface_create_similar"))
(define cairo-surface-reference (c-lambda (cairo-surface-t*) cairo-surface-t* "cairo_surface_reference"))
(define cairo-surface-destroy (c-lambda (cairo-surface-t*) void "cairo_surface_destroy"))
(define cairo-surface-status (c-lambda (cairo-surface-t*) cairo-status-t "cairo_surface_status"))
(define cairo-surface-finish (c-lambda (cairo-surface-t*) void "cairo_surface_finish"))
(define cairo-surface-flush (c-lambda (cairo-surface-t*) void "cairo_surface_flush"))
(define cairo-surface-get-font-options (c-lambda (cairo-surface-t* cairo-font-options-t*) void "cairo_surface_get_font_options"))
(define cairo-surface-get-content (c-lambda (cairo-surface-t*) cairo-content-t "cairo_surface_get_content"))
(define cairo-surface-mark-dirty (c-lambda (cairo-surface-t*) void "cairo_surface_mark_dirty"))
(define cairo-surface-mark-dirty-rectangle (c-lambda (cairo-surface-t* int int int int) void "cairo_surface_mark_dirty_rectangle"))
(define cairo-surface-set-device-offset (c-lambda (cairo-surface-t* double double) void "cairo_surface_set_device_offset"))
(define cairo-surface-get-device-offset (c-lambda (cairo-surface-t* double* double*) void "cairo_surface_get_device_offset"))
(define cairo-surface-set-fallback-resolution (c-lambda (cairo-surface-t* double double) void "cairo_surface_set_fallback_resolution"))
(define cairo-surface-get-type (c-lambda (cairo-surface-t*) cairo-surface-type-t "cairo_surface_get_type"))
(define cairo-surface-get-reference-count (c-lambda (cairo-surface-t*) int "cairo_surface_get_reference_count"))
(define cairo-surface-set-user-data (c-lambda (cairo-surface-t* cairo-user-data-key-t* void* cairo-destroy-func-t) cairo-status-t "cairo_surface_set_user_data"))
(define cairo-surface-get-user-data (c-lambda (cairo-surface-t* cairo-user-data-key-t*) void* "cairo_surface_get_user_data"))
