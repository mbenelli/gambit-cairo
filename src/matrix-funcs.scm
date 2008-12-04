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

(define cairo-matrix-init (c-lambda (cairo-matrix-t* double double double double double double) void "cairo_matrix_init"))
(define cairo-matrix-init-identity (c-lambda (cairo-matrix-t*) void "cairo_matrix_init_identity"))
(define cairo-matrix-init-translate (c-lambda (cairo-matrix-t* double double) void "cairo_matrix_init_translate"))
(define cairo-matrix-init-scale (c-lambda (cairo-matrix-t* double double) void "cairo_matrix_init_scale"))
(define cairo-matrix-init-rotate (c-lambda (cairo-matrix-t* double) void "cairo_matrix_init_rotate"))
(define cairo-matrix-translate (c-lambda (cairo-matrix-t* double double) void "cairo_matrix_translate"))
(define cairo-matrix-scale (c-lambda (cairo-matrix-t* double double) void "cairo_matrix_scale"))
(define cairo-matrix-rotate (c-lambda (cairo-matrix-t* double) void "cairo_matrix_rotate"))
(define cairo-matrix-invert (c-lambda (cairo-matrix-t*) cairo-status-t "cairo_matrix_invert"))
(define cairo-matrix-multiply (c-lambda (cairo-matrix-t* cairo-matrix-t* cairo-matrix-t*) void "cairo_matrix_multiply"))
(define cairo-matrix-transform-distance (c-lambda (cairo-matrix-t* double* double*) void "cairo_matrix_transform_distance"))
(define cairo-matrix-transform-point (c-lambda (cairo-matrix-t* double* double*) void "cairo_matrix_transform_point"))
