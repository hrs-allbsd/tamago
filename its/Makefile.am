include ${top_srcdir}/elisp.mk

lispdir= @lispdir@/egg/its

noinst_LISP= \
	ascii.el \
	bixing.el \
	erpin.el \
	greek.el \
	hankata.el \
	hira.el \
	jeonkak.el \
	pinyin.el \
	hangul.el \
	kata.el \
	thai.el \
	quanjiao.el \
	zenkaku.el \
	zhuyin.el \
	jiskana.el \
	@HAVE_JISX0213@

dist_lisp_LISP=	${noinst_LISP:.el=.el.gz} ${noinst_LISP:.el=.elc}

EXTRA_LISP=	aynu.el
