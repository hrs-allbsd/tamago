dnl Process this file with autoconf to produce a configure script.
AC_INIT([tamago],[4.0.6.0.20041122.19.14],[https://github.com/hrs-allbsd/tamago/issues],[tamago])
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

dnl check if jisx0213 is supported or not
AC_MSG_CHECKING(jisx0213)
if ${EMACS} -batch -q -no-site-file -no-init-file -l ${srcdir}/check-jisx0213.el; then
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
