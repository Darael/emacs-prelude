;;; imperial-c-style --- The C style recommended at Imperial
;;; Commentary:
;;;

;;; CODE:
(c-add-style
 "imperial"
 '("java"
   (c-basic-offset . 2)
   (tab-width . 2)
   (c-offsets-alist .
                    ((func-decl-cont . 1)))
   (indent-tabs-mode . t)))
(smart-tabs-insinuate 'c)
(setq-default c-default-style
 (quote
  ((c-mode . "imperial")
   (c++-mode . "imperial")
   (java-mode . "imperial"))))

(add-hook prelude-c-mode-common-hook (lambda ()
 (setq c-default-style "imperial")) t)
;;; imperial-c-style.el ends here
