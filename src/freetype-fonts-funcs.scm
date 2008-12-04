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

(define cairo-ft-font-face-create-for-ft-face (c-lambda (FT-Face int) cairo-font-face-t* "cairo_ft_font_face_create_for_ft_face"))
(define cairo-ft-font-face-create-for-pattern (c-lambda (FcPattern*) cairo-font-face-t* "cairo_ft_font_face_create_for_pattern"))
(define cairo-ft-font-options-substitute (c-lambda (cairo-font-options-t* FcPattern*) void "cairo_ft_font_options_substitute"))
(define cairo-ft-scaled-font-lock-face (c-lambda (cairo-scaled-font-t*) FT-Face "cairo_ft_scaled_font_lock_face"))
(define cairo-ft-scaled-font-unlock-face (c-lambda (cairo-scaled-font-t*) void "cairo_ft_scaled_font_unlock_face"))
