;; -*- no-byte-compile: t; -*-
;;; lang/latex/packages.el

(package! auctex
  :recipe (:files ("*.el" "*.info" "dir"
                   "doc" "etc" "images" "latex" "style"))
  :pin "764a53c8e93150f0edd169593a4d453810792abe")
(package! adaptive-wrap :pin "dea4e32c18d285a6ca9f72b1eadd61e27a555ed3")
(package! latex-preview-pane :pin "5297668a89996b50b2b62f99cba01cc544dbed2e")
(when (modulep! :editor evil +everywhere)
  (package! evil-tex :pin "2a3177c818f106e6c11032ac261f8691f5e11f74"))

;; Optional module features.

(when (modulep! +cdlatex)
  (package! cdlatex :pin "33770dec73138909714711b05a63e79da5a19ccd"))

;; Features according to other user selected options.

(when (modulep! :completion company)
  (package! company-auctex :pin "9400a2ec7459dde8cbf1a5d50dfee4e300ed7e18")
  (package! company-reftex :pin "42eb98c6504e65989635d95ab81b65b9d5798e76")
  (package! company-math :pin "3eb006874e309ff4076d947fcbd61bb6806aa508"))
