;;a couple of extras; copyright Duncan Bayne (LGPL)
(defun duncans_emacs:markdownify()
  "Assume the buffer contains HTML, and convert it to Markdown.  Assumes markdownify is installed."
  (interactive)
  (shell-command-on-region (point-min) (point-max) "markdownify" (current-buffer) t))

(defun duncans_emacs:markdown()
  "Assume the buffer contains Markdown, and convert it to HTML.  Assumes markdown is installed."
  (interactive)
  (shell-command-on-region (point-min) (point-max) "markdown" (current-buffer) t))

(global-set-key (kbd "C-x M-m") 'duncans_emacs:markdownify)
(global-set-key (kbd "C-x M-M") 'duncans_emacs:markdown)
