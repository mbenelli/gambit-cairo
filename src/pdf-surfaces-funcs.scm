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

(define cairo-pdf-surface-create (c-lambda (char-string double double) cairo-surface-t* "cairo_pdf_surface_create"))
(define cairo-pdf-surface-create-for-stream (c-lambda (cairo-write-func-t void* double double) cairo-surface-t* "cairo_pdf_surface_create_for_stream"))
(define cairo-pdf-surface-set-size (c-lambda (cairo-surface-t* double double) void "cairo_pdf_surface_set_size"))
