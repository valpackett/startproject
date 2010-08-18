;;; startproject.el --- simple project starter

;; Copyright (C) 2010 myfreeweb

;; Author: myfreeweb <me@myfreeweb.ru>
;; Keywords: tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Simple project starter. See README.md for more info.

;;; Code:

(defvar projects-dir "~/")

(defvar project-starters
  (make-hash-table :test 'equal))

(puthash "django" "django-admin.py startproject" project-starters)
(puthash "sproutcore" "sc-init" project-starters)

(defun really-start-project (type name)
  (shell-command (concat "cd " projects-dir " && " (gethash type project-starters) " " name))
  (dired (concat projects-dir name)))

(defun get-hash-keys (hashtable)
  (let (keys)
    (maphash (lambda (k v) (setq keys (cons k keys))) hashtable)
    keys))

(defun start-project (name)
  "Start a new project"
  (interactive "sName: ")
  (really-start-project (ido-completing-read
                         "Type: "
                         (get-hash-keys project-starters)
                         nil
                         'require-match
                         nil
                         nil)
                        name))

(provide 'startproject)
;;; startproject.el ends here
