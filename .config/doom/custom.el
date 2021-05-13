(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elfeed-feeds
   '("https://d12frosted.io/atom.xml"
     ("http://emacs.stackexchange.com/feeds" emacs)
     ("http://pragmaticemacs.com/feed/" emacs)
     ("http://feeds.feedburner.com/XahsEmacsBlog" emacs)
     ("http://planet.emacsen.org/atom.xml" emacs)
     ("http://www.reddit.com/r/emacs/.rss" emacs)
     ("http://understandinguncertainty.org/rss.xml" daily)
     ("http://timharford.com/feed/" daily)
     ("http://xkcd.com/rss.xml" daily)
     ("http://telescoper.wordpress.com/feed/" daily)))
 '(ledger-reports
   '(("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("current" "%(binary) -f %(ledger-file) bal -I --period %(month)")
     ("diff" "%(binary) -f %(ledger-file) bal --period %(month) ^income ^expenses")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)")))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
