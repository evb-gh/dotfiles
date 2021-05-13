;;; +mu4e.el -*- lexical-binding: t; -*-

(set-email-account! "gmail.com"
  '((mu4e-sent-folder       . "/Sent")
    (mu4e-drafts-folder     . "/Drafts")
    (mu4e-trash-folder      . "/Trash")
    (mu4e-refile-folder     . "/All Mail")
    (mu4e-compose-signature . "---\nEugeniu Botnaru")
    (mu4e-use-fancy-chars t)
    (mu4e-view-show-addresses t)
    (mu4e-view-show-images t)
    )
  t)

(setq mu4e-attachment-dir "~/Downloads")
(setq mu4e-html2text-command "/usr/local/bin/w3m -T text/html")
