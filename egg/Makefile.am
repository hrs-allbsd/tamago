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

dist_lisp_LISP=	${noinst_LISP:.el=.el.gz} ${noinst_LISP:.el=.elc} .nosearch

clean-local:
	rm -f wnn.el canna.el

.nosearch:
	touch $@
wnn.el: wnn.el.in
	sed -e 's,[@]libexecdir@,@libexecdir@,' < wnn.el.in > $@
canna.el: canna.el.in
	sed -e 's,[@]libexecdir@,@libexecdir@,' < canna.el.in > $@
