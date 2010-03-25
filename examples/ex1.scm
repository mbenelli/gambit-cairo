(load "../cairo")

(define (main . args)
  (let* ((surface (cairo-image-surface-create CAIRO_FORMAT_ARGB32 256 256))
	 (cr (cairo-create surface))
	 (pi 3.14159))
    (let ((xc 128.0)
	  (yc 128.0)
	  (radius 100.0)
	  (angle1 (* 45.0 (/ pi 180.0)))
	  (angle2 (* 180.0 (/ pi 180.0))))

      (cairo-set-line-width cr 10.0)
      (cairo-arc cr xc yc radius angle1 angle2)
      (cairo-stroke cr)

      (cairo-set-source-rgba cr 1.0 0.2 0.2 0.6)
      (cairo-set-line-width cr 6.0)

      (cairo-arc cr xc yc 10.0 0.0 (* 2 pi))
      (cairo-fill cr)

      (cairo-arc cr xc yc radius angle1 angle1)
      (cairo-line-to cr xc yc)
      (cairo-arc cr xc yc radius angle2 angle2)
      (cairo-line-to cr xc yc)
      (cairo-stroke cr)

      (cairo-surface-write-to-png surface "ex1.png"))))

(main)
