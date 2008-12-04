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

(define cairo-translate (c-lambda (cairo-t* double double) void "cairo_translate"))
(define cairo-scale (c-lambda (cairo-t* double double) void "cairo_scale"))
(define cairo-rotate (c-lambda (cairo-t* double) void "cairo_rotate"))
(define cairo-transform (c-lambda (cairo-t* cairo-matrix-t*) void "cairo_transform"))
(define cairo-set-matrix (c-lambda (cairo-t* cairo-matrix-t*) void "cairo_set_matrix"))
(define cairo-get-matrix (c-lambda (cairo-t* cairo-matrix-t*) void "cairo_get_matrix"))
(define cairo-identity-matrix (c-lambda (cairo-t*) void "cairo_identity_matrix"))
(define cairo-user-to-device (c-lambda (cairo-t* double* double*) void "cairo_user_to_device"))
(define cairo-user-to-device-distance (c-lambda (cairo-t* double* double*) void "cairo_user_to_device_distance"))
(define cairo-device-to-user (c-lambda (cairo-t* double* double*) void "cairo_device_to_user"))
(define cairo-device-to-user-distance (c-lambda (cairo-t* double* double*) void "cairo_device_to_user_distance"))
