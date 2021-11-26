;;; ~/.config/doom/+org.el -*- lexical-binding: t; -*-

;; (setq org-directory "~/Dropbox/org/")
;; (setq current-logbook-filename "/Users/ebv/Dropbox/org/log/2020/2020-02-Feb.org")
(setq anki-org-file "/Users/ebv/org/anki.org")
(setq interview-org-file "/Users/ebv/org/interview.org")
(setq general-anki-deck "/Users/ebv/org/general-anki-deck.org")
(setq qa-anki-deck "/Users/ebv/org/qa-anki-deck.org")
(setq trailhead "/Users/ebv/org/trailhead.org")

(after! org
  (add-to-list 'org-modules 'org-habit)
    (pushnew! org-capture-templates
            ;; normally I construct current-logbook-filename using mix of expand-file-name and concat
            ;; %i = selected text, %a org-store-link, %U created timestamp, %? place cursor here
            '("a" "Anki Notes")
            '("ag" "General Note")
            '("agc" "General-Cloze-Note" entry (file+headline general-anki-deck "Pending")
               "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: General\n:ANKI_NOTE_TYPE: dev-cloze\n:END:\n** Text\n%x\n** Extra\n** Example\n** Link\n"
               :empty-lines 1)
            '("agg" "General-Note" entry (file+headline general-anki-deck "Pending")
               "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: General\n:ANKI_NOTE_TYPE: dev\n:END:\n** Front\n%?\n** Back\n%x** Example\n** Link\n"
               :empty-lines 1)
            '("ai" "Interview")
            '("aic" "Interview-Cloze" entry (file+headline interview-org-file "Pending")
               "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: Interview\n:ANKI_NOTE_TYPE: dev-cloze\n:END:\n** Text\n%x\n** Extra\n** Example\n** Link\n"
               :empty-lines 1)
            '("aii" "Interview" entry (file+headline interview-org-file "Pending")
               "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: Interview\n:ANKI_NOTE_TYPE: dev\n:END:\n** Front\n%?\n** Back\n%x** Example\n** Link\n"
               :empty-lines 1)
            '("aq" "QA")
            '("aqc" "QA-Cloze" entry (file+headline qa-anki-deck "Pending")
               "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: Root::QA\n:ANKI_NOTE_TYPE: dev-cloze\n:END:\n** Text\n%x\n** Extra\n** Example\n** Link\n"
               :empty-lines 1)
            '("aqq" "QA" entry (file+headline qa-anki-deck "Pending")
               "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: Root::QA\n:ANKI_NOTE_TYPE: dev\n:END:\n** Front\n%?\n** Back\n%x** Example\n** Link\n"
               :empty-lines 1)
            '("as" "SPDI")
            '("asc" "SPDI-Cloze" entry (file+headline trailhead "Pending")
               "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: SPDI\n:ANKI_NOTE_TYPE: dev-cloze\n:END:\n** Text\n%x\n** Extra\n** Link\n"
               :empty-lines 1)
            '("ass" "SPDI" entry (file+headline trailhead "Pending")
               "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: SPDI\n:ANKI_NOTE_TYPE: dev\n:END:\n** Front\n%?\n** Back\n%x** Extra\n** Link\n"
               :empty-lines 1)))









  ;; (pushnew! org-capture-templates
  ;;           ;; normally I construct current-logbook-filename using mix of expand-file-name and concat
  ;;           ;; %i = selected text, %a org-store-link, %U created timestamp, %? place cursor here
  ;;           '("c" "Logbook")
  ;;           '("cf" "Logbook Todo" entry (file+headline current-logbook-filename "Tasks")
  ;;              "* TODO %?\n:LOGBOOK:\n- Created \"TODO\" %U\n:END:\n%i\n%a\n\n"
  ;;              :empty-lines 1)
  ;;           '("cz" "Log" entry (file+olp+datetree current-logbook-filename)
  ;;              "* %? %T\n"
  ;;              :empty-lines 1)
  ;;           '("cq" "Day planning" entry (file+olp+datetree current-logbook-filename)
  ;;              "* Day planning %U\n\n** Thoughts\n- %?\n\n** Tasks for today [/]\n\n** Tasks that will satisfy end-of-the-day Eugene [/]\n\n** Focus blocks\n\n** Review [/]\n- [ ] [[*Vitals][Month vitals]]\n- [ ] Org sub-projects\n- [ ] Calendar\n- [ ] ...\n\n** Habits / important [/]\n\n- [ ] are you satisfied with number of pomodori? = 0 (v R)\n- [ ] did you write stuff down? "
  ;;              :empty-lines 1))
  ;; (pushnew! org-capture-templates
  ;;           ;; normally I construct current-logbook-filename using mix of expand-file-name and concat
  ;;           ;; %i = selected text, %a org-store-link, %U created timestamp, %? place cursor here
  ;;           '("a" "Anki")
  ;;           '("ac" "Programing Cloze" entry (file+headline anki-org-file "web.dev")
  ;;              "* %<%H:%M>\n:PROPERTIES:\n:ANKI_NOTE_TYPE: programing-cloze\n:ANKI_TAGS:\n:END:\n** Text\n%x%?\n** Extra\n** Example\n** Link\n"
  ;;              :empty-lines 1)
  ;;           '("ap" "Programing" entry (file+headline anki-org-filee "web.dev")
  ;;              "* %<%H:%M>\n:PROPERTIES:\n:ANKI_NOTE_TYPE: programing\n:ANKI_TAGS:\n:END:\n** Front\n%x%?\n** Back\n** Example\n** Link\n"
  ;;              :empty-lines 1))
  ;; (pushnew! org-capture-templates
  ;;           ;; normally I construct current-logbook-filename using mix of expand-file-name and concat
  ;;           ;; %i = selected text, %a org-store-link, %U created timestamp, %? place cursor here
  ;;           '("i" "Interview")
  ;;           '("ic" "Interview-Cloze" entry (file+headline interview-org-file "Pending")
  ;;              "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: Interview\n:ANKI_NOTE_TYPE: interview-cloze\n:END:\n** Text\n%x\n** Extra\n** Example\n** Link\n"
  ;;              :empty-lines 1)
  ;;           '("ii" "Interview" entry (file+headline interview-org-file "Pending")
  ;;              "* %<%H:%M> %^g\n:PROPERTIES:\n:ANKI_DECK: Interview\n:ANKI_NOTE_TYPE: interview\n:END:\n** Front\n%?\n** Back\n%x** Example\n** Link\n"
  ;;              :empty-lines 1))
