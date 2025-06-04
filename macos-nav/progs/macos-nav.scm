(texmacs-module (macos-nav))

(display "macos-nav plugin loaded\n")

(tm-define (keyboard-press key time)
  ;;(display (string-append "Key pressed: " key " at time: " (number->string time) "\n"))
  (cond
    ((equal? key "A-left")
     (go-to-previous-word))
    ((equal? key "A-right")
     (go-to-next-word))
    ((equal? key "M-left")
     (kbd-start-line))
    ((equal? key "M-right")
     (kbd-end-line))
    (else
      (former key time))))