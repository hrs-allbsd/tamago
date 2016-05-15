include $(top_srcdir)/elisp.mk

SUBDIRS= egg its

lispdir= @lispdir@/egg

noinst_LISP= \
	egg.el \
	egg-edep.el \
	egg-com.el \
	egg-cnv.el \
	egg-mlh.el \
	egg-sim.el \
	menudiag.el \
	its.el \
	its-keydef.el

dist_lisp_LISP= ${noinst_LISP:.el=.el.gz} ${noinst_LISP:.el=.elc} leim-list.el
ELCFILES=	${noinst_LISP:.el=.el.gz} ${noinst_LISP:.el=.elc}

EXTRA_LISP=	docomp.el leim-list.el

doc_DATA=	AUTHORS ChangeLog README TODO PROBLEMS \
		ChangeLog.1997-1998 ChangeLog.2000-2001 ChangeLog.2002-2004 \
		README.ja.txt egg-anthy.readme

EXTRA_DIST= \
	eggrc
	AUTHORS ChangeLog README TODO PROBLEMS \
	ChangeLog.1997-1998 ChangeLog.2000-2001 ChangeLog.2002-2004 \
	README.ja.txt egg-anthy.readme
