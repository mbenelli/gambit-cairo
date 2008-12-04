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

(define cairo-font-face-reference (c-lambda (cairo-font-face-t*) cairo-font-face-t* "cairo_font_face_reference"))
(define cairo-font-face-destroy (c-lambda (cairo-font-face-t*) void "cairo_font_face_destroy"))
(define cairo-font-face-status (c-lambda (cairo-font-face-t*) cairo-status-t "cairo_font_face_status"))
(define cairo-font-face-get-type (c-lambda (cairo-font-face-t*) cairo-font-type-t "cairo_font_face_get_type"))
(define cairo-font-face-get-reference-count (c-lambda (cairo-font-face-t*) int "cairo_font_face_get_reference_count"))
(define cairo-font-face-set-user-data (c-lambda (cairo-font-face-t* cairo-user-data-key-t* void* cairo-destroy-func-t) cairo-status-t "cairo_font_face_set_user_data"))
(define cairo-font-face-get-user-data (c-lambda (cairo-font-face-t* cairo-user-data-key-t*) void* "cairo_font_face_get_user_data"))
