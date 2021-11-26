;;; +mu4e.el -*- lexical-binding: t; -*-

(set-email-account! "gmail"
  '((mu4e-sent-folder       . "/Sent")
    (mu4e-drafts-folder     . "/Drafts")
    (mu4e-trash-folder      . "/Trash")
    (mu4e-refile-folder     . "/All Mail")
    (mu4e-compose-signature . "---\nEugeniu Botnaru")
    (mu4e-use-fancy-chars t)
    (mu4e-view-show-addresses t)
    (mu4e-view-show-images t)
    (smtpmail-smtp-user     . "enbotnaru@gmail.com")
    )
  t)

(setq mu4e-attachment-dir "~/Downloads")
(setq mu4e-html2text-command "/usr/local/bin/w3m -T text/html")

(setq mu4e-get-mail-command "mbsync gmail"
      ;; get emails and index every 5 minutes
      mu4e-update-interval 300
	  ;; send emails with format=flowed
	  mu4e-compose-format-flowed t
	  ;; don't need to run cleanup after indexing for gmail
	  mu4e-index-cleanup nil
	  mu4e-index-lazy-check t
      ;; more sensible date format
      mu4e-headers-date-format "%d.%m.%y")

(after! auth-source (setq auth-sources (nreverse auth-sources)))
