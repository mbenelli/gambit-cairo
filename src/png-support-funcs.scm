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

(define cairo-image-surface-create-from-png (c-lambda (char-string) cairo-surface-t* "cairo_image_surface_create_from_png"))
#;(define |(*cairo-read-func-t)| (c-lambda (void* unsigned-char* unsigned-int) cairo-status-t "(*cairo_read_func_t)"))
(define cairo-image-surface-create-from-png-stream (c-lambda (cairo-read-func-t void*) cairo-surface-t* "cairo_image_surface_create_from_png_stream"))
(define cairo-surface-write-to-png (c-lambda (cairo-surface-t* char-string) cairo-status-t "cairo_surface_write_to_png"))
#;(define |(*cairo-write-func-t)| (c-lambda (void* unsigned-char* unsigned-int) cairo-status-t "(*cairo_write_func_t)"))
(define cairo-surface-write-to-png-stream (c-lambda (cairo-surface-t* cairo-write-func-t void*) cairo-status-t "cairo_surface_write_to_png_stream"))
