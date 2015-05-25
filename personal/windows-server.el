;;; windows-server --- emulate --daemon on Windows
;;; Commentary:
;part of the setup for a --daemon equivalent on W32

;;; Code:
(if (eq system-type 'windows-nt)
    (progn
      ;;
      ;;  This makes Emacs ignore the "-e (make-frame-visible)"
      ;;  that it gets passed when started by emacsclientw.
      ;;
      (add-to-list 'command-switch-alist '("(make-frame-visible)" .
                                           (lambda (s))))
      ;;
      ;;  This starts the Emacs server when .emacs gets loaded
      ;;
      (require 'server)
      (if (not (server-running-p)) (server-start))
      ;;
      ;;  This changes C-x C-c to just hide Emacs until the next
      ;;  time you use it.  We rebind C-M-c to be the command to
      ;;  really kill Emacs.
      ;;
      (defun my-done ()
        "Exit server buffers and hide the main Emacs window"
        (interactive)
        (server-edit)
        (make-frame-invisible nil t))

      (global-set-key (kbd "C-x C-c") 'my-done)
      (global-set-key (kbd "C-M-c") 'save-buffers-kill-emacs)))

(provide 'windows-server)
;;; windows-server.el ends here
