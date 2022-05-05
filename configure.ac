dnl Process this file with autoconf to produce a configure script.
AC_INIT([tamago],[4.0.6.0.20041122.19.15],[https://github.com/hrs-allbsd/tamago/issues],[tamago])
AM_INIT_AUTOMAKE

dnl Checks for programs.
AC_PROG_INSTALL
AC_PROG_MAKE_SET
AC_PROG_CC
AC_CONFIG_HEADERS([config.h])

dnl Checks for Emacs
AM_PATH_LISPDIR

dnl Checks for libraries.

dnl Checks for header files.

dnl Checks for typedefs, structures, and compiler characteristics.

dnl Checks for library functions.

dnl Check if documentation is required or not 
AC_MSG_CHECKING(documentation)
AC_ARG_ENABLE(doc,[AS_HELP_STRING([--disable-doc],
[Disable installation of the document files.])],
  if test "X${enableval}" != Xyes; then
    echo "no"; doc_DATA=''
  else
    echo "yes"; doc_DATA='${DOCS}'
  fi,
  echo "yes"; doc_DATA='${DOCS}')
AC_SUBST(doc_DATA)

dnl Check if (make-network-process) is supported or not
AC_MSG_CHECKING(make-network-process)
if ${EMACS} -batch -q -no-site-file -no-init-file \
  --eval="(if (fboundp 'make-network-process)(kill-emacs 0)(kill-emacs 1))";
  then
  echo "yes"; helper=""
else
  echo "no"; helper="helper"
fi
AC_SUBST(helper)

dnl Check if jisx0213 is supported or not
AC_MSG_CHECKING(jisx0213)
if ${EMACS} -batch -q -no-site-file -no-init-file \
  --eval="(if (charsetp 'japanese-jisx0213-1)(kill-emacs 0)(kill-emacs 1))";
  then
  echo "yes"; HAVE_JISX0213="aynu.el"
else
  echo "no"; HAVE_JISX0213=""
fi
AC_SUBST(HAVE_JISX0213)

dnl Check if getaddrinfo(3) supports Unix domain socket or not.
AC_MSG_CHECKING(getaddrinfo Unix domain support)
AC_ARG_ENABLE(getaddrinfo-unix,[AS_HELP_STRING([--enable-getaddrinfo-unix],
[Use getaddrinfo(3) for Unix domain socket])],
  echo "yes"; AC_DEFINE([HAVE_GETADDRINFO_UNIX], [],
    [Define if getaddrinfo(3) supports AF_UNIX.]),
  echo "no")

AC_CONFIG_FILES([
Makefile
egg/Makefile
its/Makefile
helper/Makefile
])

AC_OUTPUT
