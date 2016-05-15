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

doc_DATA=	AUTHORS ChangeLog README TODO PROBLEMS

EXTRA_DIST= \
	AUTHORS ChangeLog README TODO PROBLEMS eggrc
