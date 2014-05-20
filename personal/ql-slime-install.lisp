#!/usr/bin/sbcl
(load #p"/usr/share/cl-quicklisp/quicklisp.lisp")
(quicklisp-quickstart:install
 :path (merge-pathnames
        (make-pathname :directory '(:relative "~/.quicklisp"))
        (user-homedir-pathname)))
(ql:add-to-init-file)
(ql:update-client)
(ql:update-all-dists)
(ql:quickload "quicklisp-slime-helper")
