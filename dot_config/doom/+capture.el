;;; +capture.el --- capture templates                -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Silas Curfman

;; Author: Silas Curfman <silas.curfman@stw-technic.com>
;; Keywords:
;;
;; ~/.config/doom/config.el
;;
(after! org
  (setq org-capture-templates
        '(("t" "Personal todo" entry
           (file+headline "~/org/gtd/inbox.org" "Tasks")
           "* READY %?\n%i\n%a" :prepend t)
          ("n" "Personal notes" entry
           (file+headline "~/org/gtd/inbox.org" "Notes")
           "* %u %?\n%i\n%a" :prepend t)
          ("j" "Journal" entry
           (file+olp+datetree "~/org/gtd/journal.org")
           "* %U %?\n%i\n%a" :prepend t)
          ("m" "Meeting minutes" entry
           (file+headline "~/org/gtd/journal.org" "Meetings")
          ("c" "Phone Log" entry
           (file+headline "~/org/gtd/journal.org" "Phone Calls"))))))
