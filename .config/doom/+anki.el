;;; ~/.config/doom/+anki.el -*- lexical-binding: t; -*-

(setq anki-editor-create-decks t ;; Allow anki-editor to create a new deck if it doesn't exist
      anki-editor-org-tags-as-anki-tags t)

(map! :after org :map org-mode-map :localleader
      (:prefix-map ("u" . "anki-editor")
       "p" #'anki-editor-push-notes
       "f" #'anki-editor-retry-failure-notes
       "r" #'anki-editor-cloze-region
       "d" #'anki-editor-cloze-dwim))

(setq general-anki-deck "/Users/ebv/org/general-anki-deck.org")

;; https://orgmode.org/manual/Template-expansion.html
;; %i = selected text, %a org-store-link, %U created timestamp, %? place cursor here
(after! org
  (add-to-list 'org-capture-templates
            '("c" "Anki-Cloze-Note"
              entry
              (file+headline general-anki-deck "Pending")
              "* %U %^g\n:PROPERTIES:\n:ANKI_DECK: General\n:ANKI_NOTE_TYPE: dev-cloze\n:END:\n** Text \n%?\n** More\n** Link\n"
              :kill-buffer t))
  (add-to-list 'org-capture-templates
            '("a" "Anki-Note"
              entry
              (file+headline general-anki-deck "Pending")
              "* %U %^g\n:PROPERTIES:\n:ANKI_DECK: General\n:ANKI_NOTE_TYPE: dev\n:END:\n** Front\n%?\n** Back\n%x** More\n** Link\n"
              :kill-buffer t)))
