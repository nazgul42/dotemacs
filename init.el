;(setq asm-comment-char ?\#) ;; This is MIPS assembly, uses # for comments
(setq auto-mode-alist (cons '("\\.asmnes$" . asm-mode) auto-mode-alist))

;(add-to-list 'load-path
;	     "~/.emacs.d/plugins/yasnippet")
;(require 'yasnippet)
;(yas/global-mode 1)
(setq load-path (cons "/opt/local/share/gtags/" load-path))
(autoload 'gtags-mode "gtags" "" t)
(setq cc-mode-hook
      '(lambda ()
	 (gtags-mode 1)))
(setq inhibit-startup-message t)

;; Keyboard shortcuts
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
