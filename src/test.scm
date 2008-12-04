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

;; #include <cairo.h>

;; int
;; main (int argc, char *argv[])
;; {
;;         cairo_surface_t *surface;
;;         cairo_t *cr;

;;         surface = cairo_image_surface_create (CAIRO_FORMAT_ARGB32, 240, 80);
;;         cr = cairo_create (surface);

;;         cairo_select_font_face (cr, "serif", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_BOLD);
;;         cairo_set_font_size (cr, 32.0);
;;         cairo_set_source_rgb (cr, 0.0, 0.0, 1.0);
;;         cairo_move_to (cr, 10.0, 50.0);
;;         cairo_show_text (cr, "Hello, world");
;;         cairo_destroy (cr);
;;         cairo_surface_write_to_png (surface, "hello.png");
;;         cairo_surface_destroy (surface);

;;         return 0;
;; }

(define CAIRO_FORMAT_ARGB32 0)
(define CAIRO_FORMAT_RGB24 1)
(define CAIRO_FORMAT_A8 2)
(define CAIRO_FORMAT_A1 3)
(define CAIRO_FORMAT_RGB16_565 4)


(load "defs")

(define (main . args)
  (let* ((surface (cairo-image-surface-create CAIRO_FORMAT_ARGB32 240 80))
	 (cr (cairo-create surface)))
    #;(cairo-select-font-face cr "serif" CAIRO_FONT_SLANT_NORMAL
			    CAIRO_FONT_WEIGHT_BOLD)
    ;(cairo-set-font-size cr 32.0)
    (pp cr) (pp surface)
    (cairo-set-source-rgb cr 0.0 0.0 1.0)
    (cairo-move-to cr 10.0 50.0)
    (cairo-show-text cr "Hello, world!")
    (cairo-destroy cr)
    (cairo-surface-write-to-png surface "hello.png")
    (cairo-surface-destroy surface)))

(main)
