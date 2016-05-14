dnl Process this file with autoconf to produce a configure script.
AC_INIT(egg.el)

dnl Checks for programs.
AC_PROG_INSTALL
AC_PROG_MAKE_SET

AC_MSG_CHECKING(emacs command)
AC_ARG_WITH(emacs-cmd,[AS_HELP_STRING([--with-emacs-cmd=EMACS],
[Specify emacs command (emacs)])],
    EMACS_CMD=${withval},
    EMACS_CMD=emacs)
AC_SUBST(EMACS_CMD)
echo "${EMACS_CMD}"

dnl Checks for libraries.

dnl Checks for header files.

dnl Checks for typedefs, structures, and compiler characteristics.

dnl Checks for library functions.

dnl check if jisx0213 is supported or not
AC_MSG_CHECKING(jisx0213)
if ${EMACS_CMD} -batch -q -no-site-file -no-init-file -l ${srcdir}/check-jisx0213.el; then
  echo "yes"; HAVE_JISX0213=""
else
  echo "no"; HAVE_JISX0213="# "
fi
AC_SUBST(HAVE_JISX0213)

dnl Check if getaddrinfo(3) supports Unix domain socket or not.
AC_MSG_CHECKING(getaddrinfo Unix domain support)
AC_ARG_ENABLE(getaddrinfo-unix,[AS_HELP_STRING([--enable-getaddrinfo-unix],
[Use getaddrinfo(3) for Unix domain socket])],
     HAVE_GETADDRINFO_UNIX="-DHAVE_GETADDRINFO_UNIX",
     HAVE_GETADDRINFO_UNIX="")
AC_SUBST(HAVE_GETADDRINFO_UNIX)
if test X"${HAVE_GETADDRINFO_UNIX}" != X; then
    echo "no"
else
    echo "yes"
fi

dnl Check if lispdir is defined or not.
AC_MSG_CHECKING(lispdir)
AC_ARG_WITH(lispdir,[AS_HELP_STRING([--with-lispdir=LISPDIR],
[Installation directory for Emacs Lisp (datadir/emacs/site-lisp)])],
    lispdir=${withval},
    lispdir=${datadir}/emacs/site-lisp)
AC_SUBST(lispdir)
echo "$lispdir"

AC_OUTPUT(Makefile)
AC_OUTPUT(helper/Makefile)
