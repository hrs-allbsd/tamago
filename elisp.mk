AM_ELCFLAGS=	-q -no-site-file -no-init-file \
		--eval="(setq load-path (append (list (expand-file-name \"$(top_srcdir)\")) load-path))" \
		--eval="(load \"docomp.el\")"

${noinst_LISP:.el=.el.gz}: ${noinst_LISP}
	for F in ${noinst_LISP}; do \
		gzip -9 < $$F > $$F.gz; \
	done
