include ${top_srcdir}/elisp.mk

lispdir= @lispdir@/egg/egg

noinst_LISP= \
	cannarpc.el \
	canna.el \
	sj3rpc.el \
	sj3.el \
	wnnrpc.el \
	wnn.el \
	anthyipc.el \
	anthy.el

dist_lisp_LISP=	${noinst_LISP:.el=.el.gz} ${noinst_LISP:.el=.elc}
