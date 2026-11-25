;;; +agile.el --- 	                             -*- lexical-binding: t; -*-

;; Copyright (C) 2026

;; Author:  <silas.curfman@SC-LT-D7Y0MS3>
;; Keywords: org org-mode agile
(after! org
    (setq gtd/doing-head "In Progress: ")
    (setq gtd/ready-head "Ready | Next: ")
    (setq gtd/hold-head "On Hold: ")
    (setq gtd/completed-head "Done: ")
    (setq gtd/backlog-head "Backlog (first 5): ")
    (setq gtd/projects-head "Active Projects: ")
    (setq gtd/idea-head "Someday / Maybe: ")
    ;; AGILE headings for Agend View mapped to kbd-g
    (setq org-agenda-custom-commands
    '(("g" "JIRA View"
        ((agenda)
        (todo "STRT" ((org-agenda-overriding-header gtd/doing-head)
                        (org-agenda-max-entries 5)))
        (todo "READY|TODO" ((org-agenda-overriding-header gtd/ready-head)
                        (org-agenda-max-entries 5)))
        (todo "HOLD" ((org-agenda-overriding-header gtd/hold-head)
                        (org-agenda-max-entries 5)))
        (todo "DONE" ((org-agenda-overriding-header gtd/completed-head)
                        (org-agenda-max-entries 5)))
        (todo "BACKLOG" ((org-agenda-overriding-header gtd/backlog-head)
                         (org-agenda-max-entries 5)))
        (tags-todo "+@active/PROJ" ((org-agenda-overriding-header gtd/projects-head)
                                    (org-agenda-max-entries 5)
                                    (org-use-tag-inheritance nil)))
        (todo "IDEA" (( org-agenda-overriding-header gtd/idea-head)
                        (org-agenda-max-entries 5)))
        ))))
    ;; AGILE style TODO states and transitions
    (setq  org-todo-keywords
    '((sequence
        "BACKLOG(b)"     ; A task that needs doing
        "READY(r)"     ; The very next physical action
        "STRT(s)"     ; Started / In progress
        "HOLD(h@/!)"  ; Waiting on someone else (logs time/note)
        "PROJ(@p)"
        "|"           ; <-- separator must be the STRING "|"
        "DONE(d!)"    ; Completed
        "CANCELED(c@)")   ; Canceled / Dead
        ;; (sequence
        ;;  "PROJ(p)"     ; Multi-step project
        ;;  "|"
        ;;  "DONE(d!)"
        ;;  "CANCELED(c@)")
        (sequence
        "IDEA(i)"
        "|"
        ;; "PROJ(P@/!)"
        "KILL(k@)")))  ; <-- only two parens here, so setq stays open

    (setq org-todo-keyword-faces
    '(("READY" . "green")
        ("BACKLOG" . "orange")
        ("STRT" . "yellow")
        ("HOLD" . "gray")
        ("IDEA" . "cyan")
        ("PROJ" . "chartreuse")))

    (setq org-agenda-dim-blocked-tasks nil) ; un-dim blocked items in agenda views

    (require 'org-archive)
)
    ;;
    ;; End of Org-Mode Configuration
    ;; --------------------------------------
