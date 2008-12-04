(define CAIRO_FORMAT_ARGB32 0)
(define CAIRO_FORMAT_RGB24 1)
(define CAIRO_FORMAT_A8 2)
(define CAIRO_FORMAT_A1 3)
(define CAIRO_FORMAT_RGB16_565 4)

(load "../cairo")

(define (main . args)
  (let* ((surface (cairo-image-surface-create CAIRO_FORMAT_ARGB32 256 256))
	 (cr (cairo-create surface))
	 (pi 3.14159))
    (let* ((image (cairo-image-surface-create-from-png "img.png"))
	   (w (cairo-image-surface-get-width image))
	   (h (cairo-image-surface-get-height image)))
      (cairo-arc cr 128.0 128.0 76.8 0.0 (* 2 pi))
      (cairo-clip cr)
      (cairo-new-path cr)

      (cairo-scale cr (/ 256.0 w) (/ 256.0 h))
      (cairo-set-source-surface cr image 0.0 0.0)
      (cairo-paint cr)

      (cairo-destroy cr)
      (cairo-surface-write-to-png surface "ex2.png")
      (cairo-surface-destroy surface))))

(main)