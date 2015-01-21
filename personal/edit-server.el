;; settings for Chrom{e,ium} external editor
(when (and (require 'edit-server nil t) (daemonp))
  (edit-server-start))
