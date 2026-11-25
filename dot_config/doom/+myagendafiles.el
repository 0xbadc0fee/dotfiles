;;; +myagendafiles.el --- description -*- lexical-binding: t; -*-

(after! org
  (setq org-agenda-files
        (if (eq system-type 'windows-nt)
            ;; Windows Paths
            '("C:/Users/silas.curfman/org/"
            "C:/Users/silas.curfman/org/gtd/"
            "C:/Users/silas.curfman/org/gtd/jira-projects/"
            "C:/Users/silas.curfman/org/gtd/projects/")
          ;; Linux Paths
          '("~/org/"
            "~/org/gtd/"
            "~/org/gtd/jira-projects/"
            "~/org/gtd/projects/")))

  (setq org-directory "~/org/gtd/"
        org-roam-directory (file-truename "~/org/roam")
        +org-capture-notes-file "notes.org"
        +org-capture-todo-file "tasks.org"
        +org-capture-journal-file "journal.org")
  )
