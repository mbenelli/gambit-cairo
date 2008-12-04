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

(define cairo-xlib-surface-create (c-lambda (Display* Drawable Visual* int int) cairo-surface-t* "cairo_xlib_surface_create"))
(define cairo-xlib-surface-create-for-bitmap (c-lambda (Display* Pixmap Screen* int int) cairo-surface-t* "cairo_xlib_surface_create_for_bitmap"))
(define cairo-xlib-surface-set-size (c-lambda (cairo-surface-t* int int) void "cairo_xlib_surface_set_size"))
(define cairo-xlib-surface-get-display (c-lambda (cairo-surface-t*) Display* "cairo_xlib_surface_get_display"))
(define cairo-xlib-surface-get-screen (c-lambda (cairo-surface-t*) Screen* "cairo_xlib_surface_get_screen"))
(define cairo-xlib-surface-set-drawable (c-lambda (cairo-surface-t* Drawable int int) void "cairo_xlib_surface_set_drawable"))
(define cairo-xlib-surface-get-drawable (c-lambda (cairo-surface-t*) Drawable "cairo_xlib_surface_get_drawable"))
(define cairo-xlib-surface-get-visual (c-lambda (cairo-surface-t*) Visual* "cairo_xlib_surface_get_visual"))
(define cairo-xlib-surface-get-width (c-lambda (cairo-surface-t*) int "cairo_xlib_surface_get_width"))
(define cairo-xlib-surface-get-height (c-lambda (cairo-surface-t*) int "cairo_xlib_surface_get_height"))
(define cairo-xlib-surface-get-depth (c-lambda (cairo-surface-t*) int "cairo_xlib_surface_get_depth"))
