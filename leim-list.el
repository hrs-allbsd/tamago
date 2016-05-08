;;; leim-list.el --- Egg setup for leim API

;; Copyright (C) 1999, 2000, 2002 Free Software Foundation, Inc

;; Author: NIIBE Yutaka <gniibe@m17n.org>
;;         KATAYAMA Yoshio <kate@pfu.co.jp>
;;         TOMURA Satoru <tomura@etl.go.jp>

;; Maintainer: TOMURA Satoru <tomura@etl.go.jp>

;; Keywords: mule, multilingual, input method

;; This file is part of EGG.

;; EGG is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; EGG is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;;; Code:

(autoload 'egg-activate-anthy "egg/anthy"
  "Activate ANTHY  backend of Tamago 4." t)
(autoload 'egg-activate-wnn "egg/wnn" "Activate Wnn backend of Tamago 4." t)
(autoload 'egg-activate-sj3 "egg/sj3" "Activate SJ3 backend of Tamago 4." t)
(autoload 'egg-activate-canna "egg/canna"
  "Activate CANNA backend of Tamago 4." t)

(register-input-method
 "japanese-egg-anthy" "Japanese" 'egg-activate-anthy
 "あ.."  "Romaji -> Hiragana -> Kanji&Kana"
 'its-select-hiragana)

(register-input-method
 "japanese-egg-wnn" "Japanese" 'egg-activate-wnn
 "あ.."  "Romaji -> Hiragana -> Kanji&Kana"
 'its-select-hiragana)

(register-input-method
 "japanese-egg-sj3" "Japanese" 'egg-activate-sj3
 "あ.."  "Romaji -> Hiragana -> Kanji&Kana"
 'its-select-hiragana)

(register-input-method
 "japanese-egg-canna" "Japanese" 'egg-activate-canna
 "あ.."  "Romaji -> Hiragana -> Kanji&Kana"
 'its-select-hiragana)


(autoload 'egg-mode "egg" "Toggle EGG  mode." t)

(set-language-info "Japanese"    'input-method "japanese-egg-anthy")

(defgroup leim nil 
  "LEIM stands for Libraries of Emacs Input Methods."
  :group 'mule)

(defgroup egg nil "" 
  :group 'leim :load "egg")

(defgroup anthy nil ""
  :group 'egg :load "egg/anthy")

(defgroup wnn nil ""
  :group 'egg :load "egg/wnn")

(defgroup sj3 nil ""
  :group 'egg :load "egg/sj3")

(defgroup canna nil ""
  :group 'egg :load "egg/canna")

(defgroup its nil "" 
  :group 'egg :load "its")

(defgroup hira nil ""
  :group 'its :load "its/hira")

;;; leim-list.el ends here.
