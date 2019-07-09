Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F339633AC
	for <lists+spice-devel@lfdr.de>; Tue,  9 Jul 2019 11:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28AC689CA4;
	Tue,  9 Jul 2019 09:51:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 409B289C3B
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 09:51:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BECDFC05E14C
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 09:51:05 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C16D28B93B;
 Tue,  9 Jul 2019 09:51:04 +0000 (UTC)
Date: Tue, 9 Jul 2019 11:51:04 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190709095104.hsiqwdzaucgooesz@wingsuit>
References: <20190708120016.27270-2-fziglio@redhat.com>
 <20190708125528.9366-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190708125528.9366-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 09 Jul 2019 09:51:05 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v2] Drop autotools
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0898769780=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0898769780==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ratz3c4itcsrmnwd"
Content-Disposition: inline


--ratz3c4itcsrmnwd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 08, 2019 at 01:55:28PM +0100, Frediano Ziglio wrote:
> From: Marc-Andr=E9 Lureau <marcandre.lureau@redhat.com>
>=20
> Maintaining 1 build system is hard. Maintaining 2 is even harder.
>=20
> It seems the meson build system is now in good shape to replace
> autotools. Like many desktop projects, let's move entirely to meson
> and drop autotools support.
>=20
> Known changes:
> - generating changelog files in the dist tarball. This is not strictly
>   required, and can be added back later.
> - generated files are not included in the dist tarball. In some ways,
>   this can be considered a good thing.
>=20
> Signed-off-by: Marc-Andr=E9 Lureau <marcandre.lureau@redhat.com>

For the series,
Acked-by: Victor Toso <victortoso@redhat.com>

(only tweak needed was to have spice-common.git in the path for
ninja dist)

> ---
>  .gitlab-ci.yml               |  68 +---
>  Makefile.am                  |  74 -----
>  README.md                    |  11 +-
>  autogen.sh                   |  20 --
>  configure.ac                 | 547 --------------------------------
>  data/Makefile.am             |  11 -
>  doc/Makefile.am              |   5 -
>  doc/reference/Makefile.am    |  80 -----
>  git.mk                       | 400 -----------------------
>  m4/ld-version.m4             |  34 --
>  m4/manywarnings.m4           | 273 ----------------
>  m4/spice-compile-warnings.m4 | 146 ---------
>  m4/warnings.m4               |  79 -----
>  man/Makefile.am              |  17 -
>  po/ChangeLog                 |   8 -
>  po/Makevars                  |  95 ------
>  po/{POTFILES.in =3D> POTFILES} |   0
>  po/POTFILES.skip             |   2 -
>  spice-client-glib-2.0.pc.in  |  14 -
>  spice-client-gtk-3.0.pc.in   |  12 -
>  src/Makefile.am              | 593 -----------------------------------
>  tests/Makefile.am            |  49 ---
>  tools/Makefile.am            |  77 -----
>  vapi/Makefile.am             |  43 ---
>  24 files changed, 6 insertions(+), 2652 deletions(-)
>  delete mode 100644 Makefile.am
>  delete mode 100755 autogen.sh
>  delete mode 100644 configure.ac
>  delete mode 100644 data/Makefile.am
>  delete mode 100644 doc/Makefile.am
>  delete mode 100644 doc/reference/Makefile.am
>  delete mode 100644 git.mk
>  delete mode 100644 m4/ld-version.m4
>  delete mode 100644 m4/manywarnings.m4
>  delete mode 100644 m4/spice-compile-warnings.m4
>  delete mode 100644 m4/warnings.m4
>  delete mode 100644 man/Makefile.am
>  delete mode 100644 po/ChangeLog
>  delete mode 100644 po/Makevars
>  rename po/{POTFILES.in =3D> POTFILES} (100%)
>  delete mode 100644 po/POTFILES.skip
>  delete mode 100644 spice-client-glib-2.0.pc.in
>  delete mode 100644 spice-client-gtk-3.0.pc.in
>  delete mode 100644 src/Makefile.am
>  delete mode 100644 tests/Makefile.am
>  delete mode 100644 tools/Makefile.am
>  delete mode 100644 vapi/Makefile.am
>=20
> Changes since v1:
> - fix CI;
> - remove obsolete information from commit message.
>=20
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index 5ddb4db8..fa70f7ad 100644
> --- a/.gitlab-ci.yml
> +++ b/.gitlab-ci.yml
> @@ -1,9 +1,9 @@
>  image: fedora:latest
> =20
>  variables:
> -  DEPS_COMMON: git libtool make python3 python3-six redhat-rpm-config
> +  DEPS_COMMON: git make python3 python3-six redhat-rpm-config
>                 python3-pyparsing meson ninja-build gtk-doc glib2-devel
> -               gettext gettext-devel
> +               gettext gettext-devel gcc
> =20
>    DEPS_FEDORA: zlib-devel openssl-devel intltool gtk3-devel
>                 gobject-introspection-devel cyrus-sasl-devel
> @@ -18,56 +18,7 @@ variables:
>                mingw64-gtk3 mingw64-json-glib mingw64-opus
>                mingw64-gstreamer1-plugins-base mingw64-gstreamer1-plugins=
-good
> =20
> -fedora-autotools:
> -  artifacts:
> -    paths:
> -      - tests/*.log
> -    when: always
> -    expire_in: 1 week
> -
> -  before_script:
> -    - dnf install -y $DEPS_COMMON $DEPS_FEDORA
> -    - git clone ${CI_REPOSITORY_URL/spice-gtk/spice-protocol}
> -    - (cd spice-protocol && ./autogen.sh --prefix=3D/usr && make install)
> -
> -  script:
> -    - git clean -xfd
> -    - git submodule foreach --recursive git clean -xfd
> -    # Run with default options + out-of-tree
> -    - mkdir build
> -    - cd build
> -    - ../autogen.sh --enable-static
> -    - make -j4
> -    - make check
> -    - cd ..
> -    # Run dist, check we don't have -dirty in the build
> -    - git clean -xfd
> -    - git submodule foreach --recursive git clean -xfd
> -    - git reset --hard HEAD
> -    - ./autogen.sh --disable-dependency-tracking --enable-celt051
> -    - make gitignore
> -    - (cd subprojects/spice-common && make gitignore)
> -    - ./autogen.sh --disable-dependency-tracking --enable-celt051
> -    - if grep -q 'VERSION=3D.*-dirty' configure; then echo 'Version is d=
irty!'; false; fi
> -    - make -j4
> -    - make dist
> -    - test -e spice-gtk-*.tar.bz2
> -    - test \! -e spice-gtk-*-dirty.tar.bz2
> -    # Run without features
> -    - git clean -xfd
> -    - git submodule foreach --recursive git clean -xfd
> -    - ./autogen.sh --enable-static
> -          --enable-lz4=3Dno
> -          --enable-webdav=3Dno
> -          --with-sasl=3Dno
> -          --with-coroutine=3Dauto
> -          --enable-pulse=3Dno
> -          --enable-smartcard=3Dno
> -          --enable-usbredir=3Dno
> -    - make -j4
> -    - make check
> -
> -fedora-meson:
> +fedora:
>    artifacts:
>      paths:
>        - build-*/meson-logs/*.txt
> @@ -95,18 +46,7 @@ fedora-meson:
>      - ninja -C build-feat-disabled
>      - ninja -C build-feat-disabled test
> =20
> -windows-autotools:
> -  before_script:
> -    - dnf install -y $DEPS_COMMON $DEPS_MINGW
> -    - git clone ${CI_REPOSITORY_URL/spice-gtk/spice-protocol}
> -    - (cd spice-protocol && autoreconf -if && mingw64-configure --prefix=
=3D/usr && make install)
> -
> -  script:
> -    - NOCONFIGURE=3Dyes ./autogen.sh
> -    - PYTHON=3Dpython3 mingw64-configure --enable-static
> -    - make -j4
> -
> -windows-meson:
> +windows:
>    artifacts:
>      paths:
>        - build-win64/meson-logs/*.txt
> diff --git a/Makefile.am b/Makefile.am
> deleted file mode 100644
> index 6ba8c028..00000000
> --- a/Makefile.am
> +++ /dev/null
> @@ -1,74 +0,0 @@
> -ACLOCAL_AMFLAGS =3D -I m4
> -NULL =3D
> -
> -SUBDIRS =3D subprojects/spice-common src man po doc data tools tests
> -
> -if HAVE_INTROSPECTION
> -if WITH_VALA
> -SUBDIRS +=3D vapi
> -endif
> -endif
> -
> -pkgconfigdir =3D $(libdir)/pkgconfig
> -pkgconfig_DATA =3D					\
> -	spice-client-glib-2.0.pc			\
> -	$(NULL)
> -
> -if WITH_GTK
> -pkgconfig_DATA +=3D spice-client-gtk-3.0.pc
> -endif
> -
> -DISTCLEANFILES =3D $(pkgconfig_DATA)
> -
> -EXTRA_DIST =3D					\
> -	README.md				\
> -	CHANGELOG.md				\
> -	meson.build				\
> -	meson_options.txt			\
> -	po/meson.build				\
> -	build-aux/git-version-gen		\
> -	build-aux/meson-dist			\
> -	gtk-doc.make				\
> -	.version				\
> -	$(NULL)
> -
> -MAINTAINERCLEANFILES =3D					\
> -	$(GITIGNORE_MAINTAINERCLEANFILES_TOPLEVEL)	\
> -	$(GITIGNORE_MAINTAINERCLEANFILES_MAKEFILE_IN)	\
> -	$(GITIGNORE_MAINTAINERCLEANFILES_M4_LIBTOOL)	\
> -	$(GITIGNORE_MAINTAINERCLEANFILES_M4_GETTEXT)	\
> -	m4/gtk-doc.m4					\
> -	gtk-doc.make					\
> -	$(NULL)
> -
> -# see git-version-gen
> -dist-hook: gen-THANKS
> -	echo $(VERSION) > $(distdir)/.tarball-version
> -
> -BUILT_SOURCES =3D $(top_srcdir)/.version
> -$(top_srcdir)/.version:
> -	echo $(VERSION) > $@-t && mv $@-t $@
> -
> -DISTCHECK_CONFIGURE_FLAGS =3D			\
> -	--enable-introspection			\
> -	--disable-celt051			\
> -	--disable-vala				\
> -	--disable-usbredir			\
> -	--enable-gtk-doc			\
> -	--enable-werror				\
> -	--with-gtk=3D3.0				\
> -	$(NULL)
> -
> -# Generate the THANKS file
> -# and insert it into the directory we're about to use to create a tarbal=
l.
> -.PHONY: gen-THANKS
> -gen-THANKS:
> -	$(AM_V_GEN)if test -d .git || test -d ../.git; then						\
> -	  echo "The spice-gtk team would like to thank the following contributo=
rs:" > $(distdir)/t-t;	\
> -	  echo >> $(distdir)/t-t;									\
> -	  git log --format=3D'%aN <%aE>' | sort -u >> $(distdir)/t-t;					\
> -	  rm -f $(distdir)/THANKS;									\
> -	  mv $(distdir)/t-t $(distdir)/THANKS;								\
> -	fi
> -
> --include $(top_srcdir)/git.mk
> diff --git a/README.md b/README.md
> index 101da4dc..04e85533 100644
> --- a/README.md
> +++ b/README.md
> @@ -52,8 +52,9 @@ Build dependencies:
>  * or install:
> =20
>  >>>
> -    gtk3-devel spice-protocol openssl-devel pulseaudio-libs-devel pixman=
-devel
> +    meson ninja gtk3-devel spice-protocol openssl-devel pulseaudio-libs-=
devel pixman-devel
>      gobject-introspection-devel libjpeg-turbo-devel zlib-devel cyrus-sas=
l-devel gtk-doc
> +    gettext-devel vala vala-tools python3 python3-pyparsing
>  >>>
> =20
>  The GStreamer backend needs:
> @@ -61,11 +62,3 @@ The GStreamer backend needs:
>  >>>
>      gstreamer1-devel gstreamer1-plugins-base-devel gstreamer1-plugins-go=
od gstreamer1-plugins-bad-free
>  >>>
> -
> -* If you build from git, you'll also need:
> -
> ->>>
> -    libtool automake gettext-devel vala vala-tools
> -    python3 python3-pyparsing
> -    # or python2 python2-pyparsing
> ->>>
> diff --git a/autogen.sh b/autogen.sh
> deleted file mode 100755
> index 92067e5a..00000000
> --- a/autogen.sh
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -#!/bin/sh
> -
> -set -e # exit on errors
> -
> -srcdir=3D`dirname $0`
> -test -z "$srcdir" && srcdir=3D.
> -
> -(
> -    cd "$srcdir"
> -    git submodule update --init --recursive
> -    gtkdocize
> -    autoreconf -v --force --install
> -)
> -
> -CONFIGURE_ARGS=3D"--enable-maintainer-mode --enable-gtk-doc --with-gtk=
=3D3.0 --enable-vala --enable-python-checks --disable-celt051"
> -
> -if [ -z "$NOCONFIGURE" ]; then
> -    echo "Running configure with $CONFIGURE_ARGS $@"
> -    "$srcdir/configure" $CONFIGURE_ARGS "$@"
> -fi
> diff --git a/configure.ac b/configure.ac
> deleted file mode 100644
> index 69870b57..00000000
> --- a/configure.ac
> +++ /dev/null
> @@ -1,547 +0,0 @@
> -AC_PREREQ([2.57])
> -
> -AC_INIT([spice-gtk], [m4_esyscmd(build-aux/git-version-gen .tarball-vers=
ion)],
> -        [spice-devel@lists.freedesktop.org])
> -
> -AC_CONFIG_MACRO_DIR([m4])
> -m4_include([subprojects/spice-common/m4/spice-deps.m4])
> -AC_CONFIG_HEADER([config.h])
> -AC_CONFIG_AUX_DIR([build-aux])
> -
> -AM_INIT_AUTOMAKE([foreign dist-bzip2 -Wall -Werror -Wno-portability])
> -m4_ifdef([AM_PROG_AR], [AM_PROG_AR])
> -LT_INIT([disable-static win32-dll])
> -AM_MAINTAINER_MODE
> -
> -GETTEXT_PACKAGE=3DAC_PACKAGE_TARNAME
> -AC_SUBST(GETTEXT_PACKAGE)
> -AC_DEFINE_UNQUOTED([GETTEXT_PACKAGE], "$GETTEXT_PACKAGE", [GETTEXT packa=
ge name])
> -AM_GNU_GETTEXT_VERSION([0.18.2])
> -AM_GNU_GETTEXT([external])
> -
> -
> -GTK_DOC_CHECK([1.14],[--flavour no-tmpl])
> -
> -AC_PROG_CC
> -AC_PROG_CC_C99
> -if test "x$ac_cv_prog_cc_c99" =3D xno; then
> -    AC_MSG_ERROR([C99 compiler is required.])
> -fi
> -
> -
> -AC_CHECK_PROG([STOW], [stow], [yes], [no])
> -AS_IF([test "x$STOW" =3D "xyes" && test -d /usr/local/stow], [
> -    AC_MSG_NOTICE([*** Found /usr/local/stow: default install prefix set=
 to /usr/local/stow/${PACKAGE_NAME} ***])
> -    ac_default_prefix=3D"/usr/local/stow/${PACKAGE_NAME}"
> -])
> -
> -AC_PROG_INSTALL
> -AC_CANONICAL_HOST
> -AC_PROG_LIBTOOL
> -AM_PROG_CC_C_O
> -AC_C_BIGENDIAN
> -AM_PATH_PYTHON(,, [:])
> -RRA_LD_VERSION_SCRIPT
> -
> -AC_MSG_CHECKING([for native Win32])
> -case "$host_os" in
> -     *mingw*|*cygwin*)
> -        os_win32=3Dyes
> -        gio_os=3Dgio-windows-2.0
> -        red_target=3DWindows
> -        ;;
> -     *)
> -        os_win32=3Dno
> -        gio_os=3Dgio-unix-2.0
> -        red_target=3DUnix
> -        ;;
> -esac
> -AC_MSG_RESULT([$os_win32])
> -AM_CONDITIONAL([OS_WIN32],[test "$os_win32" =3D "yes"])
> -
> -AC_MSG_CHECKING([for native macOS])
> -case "$host_os" in
> -     *darwin*)
> -        os_mac=3Dyes
> -        # Workaround gtk+ exposing Objective C: https://gitlab.gnome.org=
/GNOME/gtk/issues/1737
> -        CFLAGS=3D"${CFLAGS} -ObjC"
> -        ;;
> -     *)
> -        os_mac=3Dno
> -        ;;
> -esac
> -AC_MSG_RESULT([$os_mac])
> -AM_CONDITIONAL([OS_MAC],[test "$os_mac" =3D "yes"])
> -
> -AC_CHECK_HEADERS([sys/socket.h sys/types.h netinet/in.h arpa/inet.h])
> -AC_CHECK_HEADERS([termios.h])
> -AC_CHECK_HEADERS([epoxy/egl.h],
> -                 [have_egl=3Dyes],
> -                 [have_egl=3Dno])
> -AC_MSG_CHECKING([if we can use EGL in libepoxy])
> -AC_MSG_RESULT([$have_egl])
> -AM_CONDITIONAL([HAVE_EGL],[test "$have_egl" =3D "yes"])
> -AS_IF([test "$have_egl" =3D "yes"],
> -       AC_DEFINE([HAVE_EGL], [1], [Define if supporting EGL]))
> -
> -AC_CHECK_LIBM
> -AC_SUBST(LIBM)
> -
> -AC_CONFIG_SUBDIRS([subprojects/spice-common])
> -PKG_CHECK_MODULES([SPICE_PROTOCOL], [spice-protocol >=3D 0.12.15])
> -
> -COMMON_CFLAGS=3D'-I${top_builddir}/subprojects/spice-common/ -I${top_src=
dir}/subprojects/spice-common/ ${SPICE_PROTOCOL_CFLAGS}'
> -AC_SUBST(COMMON_CFLAGS)
> -
> -SPICE_COMMON_DIR=3D'${top_builddir}/subprojects/spice-common'
> -AC_SUBST(SPICE_COMMON_DIR)
> -
> -SPICE_GTK_MAJOR_VERSION=3D`echo $PACKAGE_VERSION | cut -d. -f1`
> -SPICE_GTK_MINOR_VERSION=3D`echo $PACKAGE_VERSION | cut -d. -f2`
> -SPICE_GTK_MICRO_VERSION=3D`echo $PACKAGE_VERSION | cut -d. -f3 | cut -d-=
 -f1`
> -AS_IF([test "x$SPICE_GTK_MICRO_VERSION" =3D "x"], [SPICE_GTK_MICRO_VERSI=
ON=3D0])
> -
> -AC_SUBST(SPICE_GTK_MAJOR_VERSION)
> -AC_SUBST(SPICE_GTK_MINOR_VERSION)
> -AC_SUBST(SPICE_GTK_MICRO_VERSION)
> -
> -dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> -dnl Chek optional features
> -
> -SPICE_GLIB_REQUIRES=3D""
> -SPICE_GLIB_LIBS=3D""
> -SPICE_GTK_REQUIRES=3D""
> -
> -PKG_CHECK_MODULES(PIXMAN, pixman-1 >=3D 0.17.7)
> -
> -SPICE_GLIB_REQUIRES=3D"${SPICE_GLIB_REQUIRES} pixman-1 >=3D 0.17.7"
> -
> -SPICE_CHECK_OPENSSL
> -
> -PKG_CHECK_EXISTS(openssl,
> -  [SPICE_GLIB_REQUIRES=3D"${SPICE_GLIB_REQUIRES} openssl"],
> -  [SPICE_GLIB_LIBS=3D"${SPICE_GLIB_LIBS} ${OPENSSL_LIBS}"])
> -
> -SPICE_CHECK_RECORDER
> -SPICE_CHECK_SASL
> -
> -AC_MSG_CHECKING([which gtk+ version to compile against])
> -AC_ARG_WITH([gtk],
> -  [AS_HELP_STRING([--with-gtk=3D@<:@3.0/no@:>@],[which gtk+ version to c=
ompile against @<:@default=3D3.0@:>@])],
> -  [case "$with_gtk" in
> -     3.0) AC_MSG_RESULT([$with_gtk]) ;;
> -     no) AC_MSG_RESULT([none]) ;;
> -     *) AC_MSG_ERROR([invalid gtk version specified]) ;;
> -   esac],
> -  [with_gtk=3D3.0])
> -
> -case "$with_gtk" in
> -  3.0) GTK_REQUIRED=3D3.22
> -       GTK_ENCODED_VERSION=3D"GDK_VERSION_3_22"
> -       ;;
> -  no)
> -       AS_IF([test x$enable_gtk_doc =3D xyes],
> -             [AC_MSG_ERROR([Without GTK+, gtk-doc must be disabled])])
> -esac
> -
> -AC_SUBST([GTK_REQUIRED])
> -AM_CONDITIONAL([WITH_GTK],[test "$with_gtk" !=3D "no"])
> -
> -AS_IF([test "x$with_gtk" !=3D "xno"],
> -      [AS_IF([test "x$os_win32" =3D "xyes"],
> -             [PKG_CHECK_MODULES(GTK, gtk+-3.0 >=3D $GTK_REQUIRED)],
> -             [PKG_CHECK_MODULES(GTK, gtk+-3.0 >=3D $GTK_REQUIRED epoxy)]=
)]
> -      [GTK_CFLAGS=3D"$GTK_CFLAGS -DGDK_VERSION_MIN_REQUIRED=3D$GTK_ENCOD=
ED_VERSION \
> -                               -DGDK_VERSION_MAX_ALLOWED=3D$GTK_ENCODED_=
VERSION"])
> -SPICE_GTK_REQUIRES=3D"${SPICE_GTK_REQUIRES} gtk+-3.0 >=3D $GTK_REQUIRED"
> -
> -PKG_CHECK_EXISTS([gtk+-x11-$with_gtk], [PKG_CHECK_MODULES(X11, x11)])
> -AC_CHECK_HEADERS([X11/XKBlib.h])
> -
> -AC_CHECK_FUNCS(clearenv strtok_r)
> -
> -# Keep these two definitions in agreement.
> -GLIB2_REQUIRED=3D"2.46"
> -GLIB2_ENCODED_VERSION=3D"GLIB_VERSION_2_46"
> -
> -PKG_CHECK_MODULES(GLIB2, glib-2.0 >=3D $GLIB2_REQUIRED)
> -GLIB2_CFLAGS=3D"$GLIB2_CFLAGS -DGLIB_VERSION_MIN_REQUIRED=3D$GLIB2_ENCOD=
ED_VERSION \
> -  -DGLIB_VERSION_MAX_ALLOWED=3D$GLIB2_ENCODED_VERSION"
> -
> -PKG_CHECK_MODULES(GOBJECT2, gobject-2.0)
> -
> -PKG_CHECK_MODULES(GIO, gio-2.0 >=3D 2.36 $gio_os)
> -
> -PKG_CHECK_MODULES(CAIRO, cairo >=3D 1.2.0)
> -
> -PKG_CHECK_MODULES(GTHREAD, gthread-2.0)
> -
> -PKG_CHECK_MODULES(JSON, json-glib-1.0)
> -
> -PKG_CHECK_EXISTS([libva-x11], [
> -    PKG_CHECK_MODULES(LIBVA, libva-x11)
> -    AC_DEFINE([HAVE_LIBVA], [1], [Define if libva is available])
> -])
> -
> -AC_ARG_ENABLE([webdav],
> -  AS_HELP_STRING([--enable-webdav=3D@<:@auto/yes/no@:>@],
> -                 [Enable webdav support @<:@default=3Dauto@:>@]),
> -  [],
> -  [enable_webdav=3D"auto"])
> -
> -if test "x$enable_webdav" =3D "xno"; then
> -  have_phodav=3D"no"
> -else
> -  PKG_CHECK_MODULES(PHODAV, [libphodav-2.0 glib-2.0 >=3D 2.43.90 libsoup=
-2.4 >=3D 2.49.91], [have_phodav=3Dyes], [have_phodav=3Dno])
> -
> -  if test "x$have_phodav" =3D "xno" && test "x$enable_webdav" =3D "xyes"=
; then
> -    AC_MSG_ERROR([webdav support explicitly requested, but some required=
 packages are not available])
> -  fi
> -fi
> -AS_IF([test "x$have_phodav" =3D "xyes"],
> -       AC_DEFINE([USE_PHODAV], [1], [Define if supporting phodav]))
> -
> -AM_CONDITIONAL([WITH_PHODAV], [test "x$have_phodav" =3D "xyes"])
> -
> -AC_ARG_ENABLE([pulse],
> -  AS_HELP_STRING([--enable-pulse=3D@<:@yes/auto/no@:>@], [Enable the Pul=
seAudio backend @<:@default=3Dauto@:>@]),
> -  [],
> -  [enable_pulse=3D"auto"])
> -AS_IF([test "x$enable_pulse" !=3D "xno"],
> -      [PKG_CHECK_MODULES(PULSE, [libpulse libpulse-mainloop-glib],
> -         [AC_DEFINE([HAVE_PULSE], 1, [Have PulseAudio support?])
> -          enable_pulse=3D"yes"],
> -         [AS_IF([test "x$enable_pulse" =3D "xyes"],
> -                AC_MSG_ERROR([PulseAudio requested but not found]))
> -          enable_pulse=3D"no"
> -      ])
> -])
> -AM_CONDITIONAL([HAVE_PULSE], [test "x$enable_pulse" =3D "xyes"])
> -
> -GST_REQ=3D"1.10"
> -SPICE_CHECK_GSTREAMER(GSTAUDIO, 1.0,
> -    [gstreamer-1.0 >=3D $GST_REQ gstreamer-base-1.0 >=3D $GST_REQ gstrea=
mer-app-1.0 >=3D $GST_REQ gstreamer-audio-1.0 >=3D $GST_REQ],
> -    [SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0,
> -         [gst-plugins-base 1.0], [audioconvert audioresample appsink])
> -     SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0,
> -         [gst-plugins-good 1.0], [autoaudiosrc])
> -     AS_IF([test x"$missing_gstreamer_elements" =3D "xyes"],
> -         SPICE_WARNING([The GStreamer 1.0 audio backend can be built but=
 may not work.]))
> -    ],
> -    [AC_MSG_ERROR([Required GStreamer packages missing or system version=
 is below $GST_REQ])])
> -
> -SPICE_CHECK_GSTREAMER(GSTVIDEO, 1.0,
> -    [gstreamer-1.0 >=3D $GST_REQ gstreamer-base-1.0 >=3D $GST_REQ gstrea=
mer-app-1.0 >=3D $GST_REQ gstreamer-video-1.0 >=3D $GST_REQ],
> -    [missing_gstreamer_elements=3D""
> -     SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0,
> -         [gst-plugins-base 1.0], [appsrc videoconvert appsink])
> -     SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0,
> -         [gst-plugins-good 1.0], [jpegdec vp8dec vp9dec])
> -     SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0,
> -         [gst-plugins-bad 1.0], [h264parse h265parse])
> -     SPICE_CHECK_GSTREAMER_ELEMENTS($GST_INSPECT_1_0,
> -         [gstreamer-libav 1.0], [avdec_h264 avdec_h265])
> -     AS_IF([test x"$missing_gstreamer_elements" =3D "xyes"],
> -         SPICE_WARNING([The GStreamer video decoder can be built but may=
 not work.]))
> -    ],
> -    [AC_MSG_ERROR([Required GStreamer packages missing or system version=
 is below $GST_REQ])])
> -
> -AC_ARG_ENABLE([builtin-mjpeg],
> -  AS_HELP_STRING([--enable-builtin-mjpeg], [Enable the builtin mjpeg vid=
eo decoder @<:@default=3Dyes@:>@]),
> -  [],
> -  enable_builtin_mjpeg=3D"yes")
> -AS_IF([test "x$enable_builtin_mjpeg" =3D "xyes"],
> -      [AC_DEFINE([HAVE_BUILTIN_MJPEG], 1, [Use the builtin mjpeg decoder=
?])])
> -AM_CONDITIONAL(HAVE_BUILTIN_MJPEG, [test "x$enable_builtin_mjpeg" !=3D "=
xno"])
> -
> -AC_CHECK_LIB(jpeg, jpeg_destroy_decompress,
> -    AC_MSG_CHECKING([for jpeglib.h])
> -    AC_TRY_CPP(
> -[#include <stdio.h>
> -#undef PACKAGE
> -#undef VERSION
> -#undef HAVE_STDLIB_H
> -#include <jpeglib.h>],
> -        JPEG_LIBS=3D'-ljpeg'
> -        AC_MSG_RESULT($jpeg_ok),
> -	AC_MSG_ERROR([jpeglib.h not found])),
> -    AC_MSG_ERROR([libjpeg not found]))
> -AC_SUBST(JPEG_LIBS)
> -
> -AC_CHECK_LIB(z, deflate, Z_LIBS=3D'-lz', AC_MSG_ERROR([zlib not found]))
> -AC_SUBST(Z_LIBS)
> -
> -SPICE_CHECK_SMARTCARD
> -AM_CONDITIONAL([WITH_SMARTCARD], [test "x$have_smartcard" =3D "xyes"])
> -
> -AC_ARG_ENABLE([usbredir],
> -  AS_HELP_STRING([--enable-usbredir=3D@<:@auto/yes/no@:>@],
> -                 [Enable usbredir support @<:@default=3Dauto@:>@]),
> -  [],
> -  [enable_usbredir=3D"auto"])
> -
> -if test "x$enable_usbredir" =3D "xno"; then
> -  have_usbredir=3D"no"
> -else
> -  PKG_CHECK_MODULES([USBREDIR],
> -                    [libusb-1.0 >=3D 1.0.16 libusbredirhost >=3D 0.7.1 l=
ibusbredirparser-0.5 >=3D 0.7.1],
> -                    [have_usbredir=3Dyes],
> -                    [have_usbredir=3Dno])
> -  if test "x$have_usbredir" =3D "xno" && test "x$enable_usbredir" =3D "x=
yes"; then
> -    AC_MSG_ERROR([usbredir support explicitly requested, but some requir=
ed packages are not available])
> -  fi
> -
> -  if test "x$have_usbredir" =3D "xyes"; then
> -    AC_DEFINE([USE_USBREDIR], [1], [Define if supporting usbredir proxyi=
ng])
> -  fi
> -fi
> -AM_CONDITIONAL([WITH_USBREDIR], [test "x$have_usbredir" =3D "xyes"])
> -
> -AC_ARG_ENABLE([polkit],
> -  AS_HELP_STRING([--enable-polkit=3D@<:@auto/yes/no@:>@],
> -                 [Enable PolicyKit support (for the usb acl helper)@<:@d=
efault=3Dauto@:>@]),
> -  [],
> -  [enable_polkit=3D"auto"])
> -
> -if test "x$have_usbredir" =3D "xyes" && test "x$enable_polkit" !=3D "xno=
"; then
> -  PKG_CHECK_MODULES([POLKIT], [polkit-gobject-1 >=3D 0.96],
> -                              [have_polkit=3Dyes],
> -                              [have_polkit=3Dno])
> -  AC_CHECK_HEADER([sys/acl.h], [], [have_polkit=3Dno])
> -  AC_CHECK_LIB([c], [acl_get_file], [ACL_LIBS=3D""], [
> -    AC_CHECK_LIB([acl], [acl_get_file], [ACL_LIBS=3D-lacl], [have_polkit=
=3Dno])])
> -  if test "x$enable_polkit" =3D "xyes" && test "x$have_polkit" =3D "xno"=
; then
> -    AC_MSG_ERROR([PolicyKit support explicitly requested, but some requi=
red packages are not available])
> -  fi
> -
> -  if test "x$have_polkit" =3D "xyes"; then
> -    AC_SUBST(ACL_LIBS)
> -    AC_DEFINE([USE_POLKIT], [1], [Define if supporting polkit])
> -  fi
> -  AM_CONDITIONAL([WITH_POLKIT], [test "x$have_polkit" =3D "xyes"])
> -  POLICYDIR=3D`${PKG_CONFIG} polkit-gobject-1 --variable=3Dpolicydir`
> -  AC_SUBST(POLICYDIR)
> -  # Check for polkit_authority_get_sync()
> -  AC_CHECK_LIB([polkit-gobject-1], [polkit_authority_get_sync], ac_have_=
pk_auth_get_sync=3D"1", ac_have_pk_auth_get_sync=3D"0")
> -  AC_DEFINE_UNQUOTED([HAVE_POLKIT_AUTHORITY_GET_SYNC], $ac_have_pk_auth_=
get_sync, [Define if you have a polkit with polkit_authority_get_sync()])
> -  AC_CHECK_LIB([polkit-gobject-1], [polkit_authorization_result_get_dism=
issed], ac_have_pk_authorization_result_get_dismissed=3D"1", ac_have_pk_aut=
horization_result_get_dismissed=3D"0")
> -  AC_DEFINE_UNQUOTED([HAVE_POLKIT_AUTHORIZATION_RESULT_GET_DISMISSED], $=
ac_have_pk_authorization_result_get_dismissed, [Define if you have a polkit=
 with polkit_authorization_result_get_dismissed()])
> -else
> -  AM_CONDITIONAL(WITH_POLKIT, false)
> -fi
> -
> -if test "x$have_usbredir" =3D "xyes" && test "x$have_polkit" !=3D "xyes"=
; then
> -  AC_MSG_WARN([Building with usbredir support, but *not* building the us=
b acl helper])
> -fi
> -
> -AC_ARG_ENABLE([pie],
> -  AS_HELP_STRING([--enable-pie=3D@<:@auto/yes/no@:>@],
> -                 [Enable position-independent-executable support (for th=
e usb acl helper)@<:@default=3Dauto@:>@]),
> -  [],
> -  [enable_pie=3D"auto"])
> -
> -if test "x$have_polkit" =3D "xyes" && test "x$enable_pie" !=3D "xno"; th=
en
> -  save_CFLAGS=3D"$CFLAGS"
> -  save_LDFLAGS=3D"$LDFLAGS"
> -  CFLAGS=3D"$CFLAGS -fPIE"
> -  LDFLAGS=3D"$LDFLAGS -pie -Wl,-z,relro -Wl,-z,now"
> -  AC_MSG_CHECKING([for PIE support])
> -  AC_LINK_IFELSE([AC_LANG_SOURCE([void main () {}])],
> -                 [have_pie=3Dyes],
> -                 [have_pie=3Dno])
> -  AC_MSG_RESULT([$have_pie])
> -  if test "x$have_pie" =3D "xno" && test "x$enable_pie" =3D "xyes"; then
> -    AC_MSG_ERROR([pie support explicitly requested, but your toolchain d=
oes not support it])
> -  fi
> -  if test "x$have_pie" =3D "xyes"; then
> -    PIE_CFLAGS=3D"-fPIE"
> -    PIE_LDFLAGS=3D"-pie -Wl,-z,relro -Wl,-z,now"
> -    AC_SUBST(PIE_CFLAGS)
> -    AC_SUBST(PIE_LDFLAGS)
> -  fi
> -  CFLAGS=3D"$save_CFLAGS"
> -  LDFLAGS=3D"$save_LDFLAGS"
> -fi
> -
> -AC_ARG_WITH([usb-acl-helper-dir],
> -  AS_HELP_STRING([--with-usb-acl-helper-dir=3DDIR],
> -                 [Directory where the USB ACL helper binary should be in=
stalled]),
> -  [ACL_HELPER_DIR=3D"$with_usb_acl_helper_dir"],
> -  [ACL_HELPER_DIR=3D"${bindir}/"])
> -AC_SUBST([ACL_HELPER_DIR])
> -
> -AC_ARG_WITH([usb-ids-path],
> -  AC_HELP_STRING([--with-usb-ids-path],
> -                 [Specify the path to usb.ids @<:@default=3Dauto@:>@]),
> -  [USB_IDS=3D"$with_usb_ids_path"],
> -  [USB_IDS=3D"auto"])
> -AC_MSG_CHECKING([for usb.ids])
> -if test "x$USB_IDS" =3D "xauto"; then
> -  if test -n "$PKG_CONFIG"; then
> -    USB_IDS=3D$($PKG_CONFIG --variable=3Dusbids usbutils)
> -  else
> -    USB_IDS=3D
> -  fi
> -fi
> -if test -n "$USB_IDS"; then
> -  AC_MSG_RESULT([$USB_IDS])
> -  AC_SUBST(USB_IDS)
> -  AC_DEFINE([WITH_USBIDS], [1], [Define if compiling with usb.ids suppor=
t])
> -else
> -  AC_MSG_RESULT([not found])
> -fi
> -
> -AC_ARG_WITH([coroutine],
> -  AS_HELP_STRING([--with-coroutine=3D@<:@ucontext/gthread/winfiber/auto@=
:>@],
> -                 [use ucontext or GThread for coroutines @<:@default=3Da=
uto@:>@]),
> -  [],
> -  [with_coroutine=3Dauto])
> -
> -case $with_coroutine in
> -  ucontext|gthread|winfiber|auto) ;;
> -  *) AC_MSG_ERROR(Unsupported coroutine type)
> -esac
> -
> -if test "$with_coroutine" =3D "auto"; then
> -  if test "$os_win32" =3D "yes"; then
> -    with_coroutine=3Dwinfiber
> -  elif test "$os_mac" =3D "yes"; then
> -    with_coroutine=3Ducontext
> -    AC_DEFINE([_XOPEN_SOURCE], [1], [Define _XOPEN_SOURCE on macOS for u=
context])
> -  else
> -    with_coroutine=3Ducontext
> -  fi
> -fi
> -
> -if test "$with_coroutine" =3D "ucontext"; then
> -  AC_CHECK_FUNC(makecontext, [],[with_coroutine=3Dgthread])
> -  AC_CHECK_FUNC(swapcontext, [],[with_coroutine=3Dgthread])
> -  AC_CHECK_FUNC(getcontext, [],[with_coroutine=3Dgthread])
> -fi
> -
> -WITH_UCONTEXT=3D0
> -WITH_GTHREAD=3D0
> -WITH_WINFIBER=3D0
> -
> -case $with_coroutine in
> -  ucontext) WITH_UCONTEXT=3D1 ;;
> -  gthread) WITH_GTHREAD=3D1 ;;
> -  winfiber) WITH_WINFIBER=3D1 ;;
> -  *) AC_MSG_ERROR(Unsupported coroutine type)
> -esac
> -
> -AC_DEFINE_UNQUOTED([WITH_UCONTEXT],[$WITH_UCONTEXT], [Whether to use uco=
ntext coroutine impl])
> -AM_CONDITIONAL(WITH_UCONTEXT, [test "x$WITH_UCONTEXT" =3D "x1"])
> -
> -AC_DEFINE_UNQUOTED([WITH_WINFIBER],[$WITH_WINFIBER], [Whether to use fib=
er coroutine impl])
> -AM_CONDITIONAL(WITH_WINFIBER, [test "x$WITH_WINFIBER" =3D "x1"])
> -
> -AC_DEFINE_UNQUOTED([WITH_GTHREAD],[$WITH_GTHREAD], [Whether to use gthre=
ad coroutine impl])
> -AM_CONDITIONAL(WITH_GTHREAD, [test "x$WITH_GTHREAD" =3D "x1"])
> -
> -AM_CONDITIONAL([HAVE_INTROSPECTION], [test "0" =3D "1"])
> -m4_ifdef([GOBJECT_INTROSPECTION_CHECK],[
> -    PKG_CHECK_EXISTS([GOBJECT_INTROSPECTION],
> -            [gobject-introspection-1.0 >=3D 0.9.4],
> -            [has_symbol_prefix=3Dyes], [:])
> -    GOBJECT_INTROSPECTION_CHECK([0.6.7])
> -])
> -AM_CONDITIONAL([G_IR_SCANNER_SYMBOL_PREFIX], [test "x$has_symbol_prefix"=
 =3D "xyes"])
> -
> -AC_ARG_ENABLE([vala],
> -  AS_HELP_STRING([--enable-vala], [Check for vala requirements @<:@defau=
lt=3Dno@:>@]),
> -  [],
> -  enable_vala=3D"no")
> -
> -VALA_REQUIRED=3D0.14
> -if test x$enable_vala =3D xyes ; then
> -    # check for vala
> -    AM_PROG_VALAC([$VALA_REQUIRED])
> -    AC_PATH_PROG(VAPIGEN, vapigen, no)
> -    if test "x$VAPIGEN" =3D=3D "xno"; then
> -        AC_MSG_ERROR([Cannot find the "vapigen" binary in your PATH])
> -    fi
> -    AC_SUBST(VAPIGEN)
> -fi
> -
> -AM_CONDITIONAL(WITH_VALA, [test "x$enable_vala" =3D "xyes"])
> -
> -VAPIDIR=3D"${datadir}/vala/vapi"
> -AC_SUBST(VAPIDIR)
> -
> -AC_ARG_ENABLE([alignment-checks],
> -  AS_HELP_STRING([--enable-alignment-checks],
> -                 [Enable runtime checks for cast alignment @<:@default=
=3Dno@:>@]),
> -  [],
> -  enable_alignment_checks=3D"no")
> -AS_IF([test "x$enable_alignment_checks" =3D "xyes"],
> -      [AC_DEFINE([SPICE_DEBUG_ALIGNMENT], 1, [Enable runtime checks for =
cast alignment])])
> -
> -SPICE_CHECK_LZ4
> -
> -dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> -dnl check compiler flags
> -
> -# some glib/gstreamer enums use 1 << 31
> -dontwarn=3D"-Wshift-overflow=3D2"
> -
> -SPICE_COMPILE_WARNINGS([$dontwarn])
> -
> -SPICE_CFLAGS=3D"$SPICE_CFLAGS $WARN_CFLAGS"
> -
> -AC_SUBST(SPICE_CFLAGS)
> -
> -SPICE_GLIB_CFLAGS=3D"$PIXMAN_CFLAGS $PULSE_CFLAGS $GSTAUDIO_CFLAGS $GSTV=
IDEO_CFLAGS $GLIB2_CFLAGS $GIO_CFLAGS $GOBJECT2_CFLAGS $OPENSSL_CFLAGS $SAS=
L_CFLAGS"
> -SPICE_GTK_CFLAGS=3D"$SPICE_GLIB_CFLAGS $GTK_CFLAGS "
> -
> -AC_SUBST(SPICE_GLIB_CFLAGS)
> -AC_SUBST(SPICE_GTK_CFLAGS)
> -
> -AC_SUBST(SPICE_GLIB_REQUIRES)
> -AC_SUBST(SPICE_GLIB_LIBS)
> -AC_SUBST(SPICE_GTK_REQUIRES)
> -
> -m4_ifdef([AM_SILENT_RULES],[AM_SILENT_RULES([yes])])
> -
> -AC_OUTPUT([
> -Makefile
> -spice-client-glib-2.0.pc
> -spice-client-gtk-3.0.pc
> -data/Makefile
> -po/Makefile.in
> -src/Makefile
> -src/spice-version.h
> -tools/Makefile
> -doc/Makefile
> -doc/reference/Makefile
> -man/Makefile
> -vapi/Makefile
> -tests/Makefile
> -])
> -
> -dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> -AC_MSG_NOTICE([
> -
> -        Spice-Gtk $VERSION
> -        =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> -
> -        prefix:                   ${prefix}
> -        c compiler:               ${CC}
> -        Target:                   ${red_target}
> -
> -        Gtk:                      ${with_gtk}
> -        Coroutine:                ${with_coroutine}
> -        PulseAudio:               ${enable_pulse}
> -        SASL support:             ${have_sasl}
> -        Smartcard support:        ${have_smartcard}
> -        USB redirection support:  ${have_usbredir} ${with_usbredir_hotpl=
ug}
> -        WebDAV support:           ${have_phodav}
> -        LZ4 support:              ${have_lz4}
> -
> -        Now type 'make' to build $PACKAGE
> -
> -])
> -SPICE_PRINT_MESSAGES
> -
> -AS_IF([test "x$enable_pulse" =3D "xyes"],
> -  AC_MSG_WARN([PulseAudio backend is deprecated and will be removed in a=
 future release]))
> diff --git a/data/Makefile.am b/data/Makefile.am
> deleted file mode 100644
> index 457079e5..00000000
> --- a/data/Makefile.am
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -NULL=3D
> -
> -EXTRA_DIST =3D						\
> -	meson.build					\
> -	org.spice-space.lowlevelusbaccess.policy	\
> -	$(NULL)
> -
> -policydir =3D $(POLICYDIR)
> -policy_DATA =3D org.spice-space.lowlevelusbaccess.policy
> -
> --include $(top_srcdir)/git.mk
> diff --git a/doc/Makefile.am b/doc/Makefile.am
> deleted file mode 100644
> index 870cd265..00000000
> --- a/doc/Makefile.am
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -SUBDIRS =3D reference
> -
> -EXTRA_DIST =3D meson.build
> -
> --include $(top_srcdir)/git.mk
> diff --git a/doc/reference/Makefile.am b/doc/reference/Makefile.am
> deleted file mode 100644
> index 0cc26c9b..00000000
> --- a/doc/reference/Makefile.am
> +++ /dev/null
> @@ -1,80 +0,0 @@
> -NULL =3D
> -
> -AUTOMAKE_OPTIONS =3D 1.6
> -DOC_MODULE =3D spice-gtk
> -
> -# The top-level SGML file
> -DOC_MAIN_SGML_FILE =3D $(DOC_MODULE)-docs.xml
> -
> -# Source code location
> -DOC_SOURCE_DIR =3D $(top_srcdir)/src
> -
> -# Extra options to supply to gtkdoc-scan.
> -SCAN_OPTIONS =3D \
> -	--deprecated-guards=3D"SPICE_DISABLE_DEPRECATED" \
> -	--ignore-decorators=3D"G_GNUC_INTERNAL"
> -
> -# Extra options to supply to gtkdoc-mkdb.
> -MKDB_OPTIONS =3D --xml-mode --output-format=3Dxml
> -
> -# Used for dependencies. The docs will be rebuilt if any of these change.
> -HFILE_GLOB =3D $(top_srcdir)/src/*.h
> -CFILE_GLOB =3D $(top_srcdir)/src/*.c
> -
> -# Header files to ignore when scanning. Use base file name, no paths
> -IGNORE_HFILES=3D					\
> -	bio-gio.h				\
> -	channel-display-priv.h			\
> -	channel-usbredir-priv.h			\
> -	client_sw_canvas.h			\
> -	continuation.h				\
> -	coroutine.h				\
> -	decode.h				\
> -	desktop-integration.h			\
> -	display					\
> -	gio-coroutine.h				\
> -	giopipe.h				\
> -	smartcard-manager-priv.h		\
> -	spice-audio-priv.h			\
> -	spice-channel-cache.h			\
> -	spice-channel-priv.h			\
> -	spice-cmdline.h				\
> -	spice-common.h				\
> -	spice-file-transfer-task-priv.h		\
> -	spice-grabsequence-priv.h		\
> -	spice-gstaudio.h			\
> -	spice-gtk-session-priv.h		\
> -	spice-marshal.h				\
> -	spice-pulse.h				\
> -	spice-session-priv.h			\
> -	spice-uri-priv.h			\
> -	spice-util-priv.h			\
> -	spice-widget-priv.h			\
> -	spicy-connect.h				\
> -	usb-acl-helper.h			\
> -	usb-device-manager-priv.h		\
> -	usbdk_api.h				\
> -	usbutil.h				\
> -	vmcstream.h				\
> -	vncdisplaykeymap.h			\
> -	win-usb-dev.h				\
> -	$(NULL)
> -
> -# CFLAGS and LDFLAGS for compiling gtkdoc-scangobj with your library.
> -GTKDOC_CFLAGS =3D -I$(top_srcdir) -I$(top_builddir) -I$(top_srcdir)/src =
-I$(top_builddir)/src $(SPICE_GLIB_CFLAGS) $(SPICE_GTK_CFLAGS) $(COMMON_CFL=
AGS) -DSPICE_COMPILATION
> -GTKDOC_LIBS =3D $(top_builddir)/src/libspice-client-glib-2.0.la $(top_bu=
ilddir)/src/libspice-client-gtk-3.0.la $(GTK_LIBS)
> -
> -include $(top_srcdir)/gtk-doc.make
> -
> -EXTRA_DIST +=3D meson.build
> -
> -# Comment this out if you want 'make check' to test you doc status
> -# and run some sanity checks
> -if ENABLE_GTK_DOC
> -TESTS_ENVIRONMENT =3D cd $(srcdir) && \
> -  DOC_MODULE=3D$(DOC_MODULE) DOC_MAIN_SGML_FILE=3D$(DOC_MAIN_SGML_FILE) \
> -  SRCDIR=3D$(abs_srcdir) BUILDDIR=3D$(abs_builddir)
> -#TESTS =3D $(GTKDOC_CHECK)
> -endif
> -
> --include $(top_srcdir)/git.mk
> diff --git a/git.mk b/git.mk
> deleted file mode 100644
> index 6e2708f2..00000000
> --- a/git.mk
> +++ /dev/null
> @@ -1,400 +0,0 @@
> -# git.mk, a small Makefile to autogenerate .gitignore files
> -# for autotools-based projects.
> -#
> -# Copyright 2009, Red Hat, Inc.
> -# Copyright 2010,2011,2012,2013 Behdad Esfahbod
> -# Written by Behdad Esfahbod
> -#
> -# Copying and distribution of this file, with or without modification,
> -# is permitted in any medium without royalty provided the copyright
> -# notice and this notice are preserved.
> -#
> -# The latest version of this file can be downloaded from:
> -GIT_MK_URL =3D https://raw.githubusercontent.com/behdad/git.mk/master/gi=
t.mk
> -#
> -# Bugs, etc, should be reported upstream at:
> -#   https://github.com/behdad/git.mk
> -#
> -# To use in your project, import this file in your git repo's toplevel,
> -# then do "make -f git.mk".  This modifies all Makefile.am files in
> -# your project to -include git.mk.  Remember to add that line to new
> -# Makefile.am files you create in your project, or just rerun the
> -# "make -f git.mk".
> -#
> -# This enables automatic .gitignore generation.  If you need to ignore
> -# more files, add them to the GITIGNOREFILES variable in your Makefile.a=
m.
> -# But think twice before doing that.  If a file has to be in .gitignore,
> -# chances are very high that it's a generated file and should be in one
> -# of MOSTLYCLEANFILES, CLEANFILES, DISTCLEANFILES, or MAINTAINERCLEANFIL=
ES.
> -#
> -# The only case that you need to manually add a file to GITIGNOREFILES is
> -# when remove files in one of mostlyclean-local, clean-local, distclean-=
local,
> -# or maintainer-clean-local make targets.
> -#
> -# Note that for files like editor backup, etc, there are better places to
> -# ignore them.  See "man gitignore".
> -#
> -# If "make maintainer-clean" removes the files but they are not recogniz=
ed
> -# by this script (that is, if "git status" shows untracked files still),=
 send
> -# me the output of "git status" as well as your Makefile.am and Makefile=
 for
> -# the directories involved and I'll diagnose.
> -#
> -# For a list of toplevel files that should be in MAINTAINERCLEANFILES, s=
ee
> -# Makefile.am.sample in the git.mk git repo.
> -#
> -# Don't EXTRA_DIST this file.  It is supposed to only live in git clones,
> -# not tarballs.  It serves no useful purpose in tarballs and clutters the
> -# build dir.
> -#
> -# This file knows how to handle autoconf, automake, libtool, gtk-doc,
> -# gnome-doc-utils, yelp.m4, mallard, intltool, gsettings, dejagnu, appda=
ta,
> -# appstream, hotdoc.
> -#
> -# This makefile provides the following targets:
> -#
> -# - all: "make all" will build all gitignore files.
> -# - gitignore: makes all gitignore files in the current dir and subdirs.
> -# - .gitignore: make gitignore file for the current dir.
> -# - gitignore-recurse: makes all gitignore files in the subdirs.
> -#
> -# KNOWN ISSUES:
> -#
> -# - Recursive configure doesn't work as $(top_srcdir)/git.mk inside the
> -#   submodule doesn't find us.  If you have configure.{in,ac} files in
> -#   subdirs, add a proxy git.mk file in those dirs that simply does:
> -#   "include $(top_srcdir)/../git.mk".  Add more ..'s to your taste.
> -#   And add those files to git.  See vte/gnome-pty-helper/git.mk for
> -#   example.
> -#
> -
> -
> -
> -########################################################################=
#######
> -# Variables user modules may want to add to toplevel MAINTAINERCLEANFILE=
S:
> -########################################################################=
#######
> -
> -#
> -# Most autotools-using modules should be fine including this variable in=
 their
> -# toplevel MAINTAINERCLEANFILES:
> -GITIGNORE_MAINTAINERCLEANFILES_TOPLEVEL =3D \
> -	$(srcdir)/aclocal.m4 \
> -	$(srcdir)/autoscan.log \
> -	$(srcdir)/configure.scan \
> -	`AUX_DIR=3D$(srcdir)/$$(cd $(top_srcdir); $(AUTOCONF) --trace 'AC_CONFI=
G_AUX_DIR:$$1' ./configure.ac); \
> -	 test "x$$AUX_DIR" =3D "x$(srcdir)/" && AUX_DIR=3D$(srcdir); \
> -	 for x in \
> -		ar-lib \
> -		compile \
> -		config.guess \
> -		config.rpath \
> -		config.sub \
> -		depcomp \
> -		install-sh \
> -		ltmain.sh \
> -		missing \
> -		mkinstalldirs \
> -		test-driver \
> -		ylwrap \
> -	 ; do echo "$$AUX_DIR/$$x"; done` \
> -	`cd $(top_srcdir); $(AUTOCONF) --trace 'AC_CONFIG_HEADERS:$$1' ./config=
ure.ac | \
> -	head -n 1 | while read f; do echo "$(srcdir)/$$f.in"; done`
> -#
> -# All modules should also be fine including the following variable, which
> -# removes automake-generated Makefile.in files:
> -GITIGNORE_MAINTAINERCLEANFILES_MAKEFILE_IN =3D \
> -	`cd $(top_srcdir); $(AUTOCONF) --trace 'AC_CONFIG_FILES:$$1' ./configur=
e.ac | \
> -	while read f; do \
> -	  case $$f in Makefile|*/Makefile) \
> -	    test -f "$(srcdir)/$$f.am" && echo "$(srcdir)/$$f.in";; esac; \
> -	done`
> -#
> -# Modules that use libtool and use  AC_CONFIG_MACRO_DIR() may also inclu=
de this,
> -# though it's harmless to include regardless.
> -GITIGNORE_MAINTAINERCLEANFILES_M4_LIBTOOL =3D \
> -	`MACRO_DIR=3D$(srcdir)/$$(cd $(top_srcdir); $(AUTOCONF) --trace 'AC_CON=
FIG_MACRO_DIR:$$1' ./configure.ac); \
> -	 if test "x$$MACRO_DIR" !=3D "x$(srcdir)/"; then \
> -		for x in \
> -			libtool.m4 \
> -			ltoptions.m4 \
> -			ltsugar.m4 \
> -			ltversion.m4 \
> -			lt~obsolete.m4 \
> -		; do echo "$$MACRO_DIR/$$x"; done; \
> -	 fi`
> -#
> -# Modules that use gettext and use  AC_CONFIG_MACRO_DIR() may also inclu=
de this,
> -# though it's harmless to include regardless.
> -GITIGNORE_MAINTAINERCLEANFILES_M4_GETTEXT =3D \
> -	`MACRO_DIR=3D$(srcdir)/$$(cd $(top_srcdir); $(AUTOCONF) --trace 'AC_CON=
FIG_MACRO_DIR:$$1' ./configure.ac); \
> -	if test "x$$MACRO_DIR" !=3D "x$(srcdir)/"; then	\
> -		for x in				\
> -			codeset.m4			\
> -			extern-inline.m4		\
> -			fcntl-o.m4			\
> -			gettext.m4			\
> -			glibc2.m4			\
> -			glibc21.m4			\
> -			iconv.m4			\
> -			intdiv0.m4			\
> -			intl.m4				\
> -			intldir.m4			\
> -			intlmacosx.m4			\
> -			intmax.m4			\
> -			inttypes-pri.m4			\
> -			inttypes_h.m4			\
> -			lcmessage.m4			\
> -			lib-ld.m4			\
> -			lib-link.m4			\
> -			lib-prefix.m4			\
> -			lock.m4				\
> -			longlong.m4			\
> -			nls.m4				\
> -			po.m4				\
> -			printf-posix.m4			\
> -			progtest.m4			\
> -			size_max.m4			\
> -			stdint_h.m4			\
> -			threadlib.m4			\
> -			uintmax_t.m4			\
> -			visibility.m4			\
> -			wchar_t.m4			\
> -			wint_t.m4			\
> -			xsize.m4			\
> -		; do echo "$$MACRO_DIR/$$x"; done; \
> -	fi`
> -
> -
> -
> -########################################################################=
#######
> -# Default rule is to install ourselves in all Makefile.am files:
> -########################################################################=
#######
> -
> -git-all: git-mk-install
> -
> -git-mk-install:
> -	@echo "Installing git makefile"
> -	@any_failed=3D; \
> -		find "`test -z "$(top_srcdir)" && echo . || echo "$(top_srcdir)"`" -na=
me Makefile.am | while read x; do \
> -		if grep 'include .*/git.mk' $$x >/dev/null; then \
> -			echo "$$x already includes git.mk"; \
> -		else \
> -			failed=3D; \
> -			echo "Updating $$x"; \
> -			{ cat $$x; \
> -			  echo ''; \
> -			  echo '-include $$(top_srcdir)/git.mk'; \
> -			} > $$x.tmp || failed=3D1; \
> -			if test x$$failed =3D x; then \
> -				mv $$x.tmp $$x || failed=3D1; \
> -			fi; \
> -			if test x$$failed =3D x; then : else \
> -				echo "Failed updating $$x"; >&2 \
> -				any_failed=3D1; \
> -			fi; \
> -	fi; done; test -z "$$any_failed"
> -
> -git-mk-update:
> -	wget $(GIT_MK_URL) -O $(top_srcdir)/git.mk
> -
> -.PHONY: git-all git-mk-install git-mk-update
> -
> -
> -
> -########################################################################=
#######
> -# Actual .gitignore generation:
> -########################################################################=
#######
> -
> -$(srcdir)/.gitignore: Makefile.am $(top_srcdir)/git.mk
> -	@echo "git.mk: Generating $@"
> -	@{ \
> -		if test "x$(DOC_MODULE)" =3D x -o "x$(DOC_MAIN_SGML_FILE)" =3D x; then=
 :; else \
> -			for x in \
> -				$(DOC_MODULE)-decl-list.txt \
> -				$(DOC_MODULE)-decl.txt \
> -				tmpl/$(DOC_MODULE)-unused.sgml \
> -				"tmpl/*.bak" \
> -				$(REPORT_FILES) \
> -				$(DOC_MODULE).pdf \
> -				xml html \
> -			; do echo "/$$x"; done; \
> -			FLAVOR=3D$$(cd $(top_srcdir); $(AUTOCONF) --trace 'GTK_DOC_CHECK:$$2'=
 ./configure.ac); \
> -			case $$FLAVOR in *no-tmpl*) echo /tmpl;; esac; \
> -			if echo "$(SCAN_OPTIONS)" | grep -q "\-\-rebuild-types"; then \
> -				echo "/$(DOC_MODULE).types"; \
> -			fi; \
> -			if echo "$(SCAN_OPTIONS)" | grep -q "\-\-rebuild-sections"; then \
> -				echo "/$(DOC_MODULE)-sections.txt"; \
> -			fi; \
> -			if test "$(abs_srcdir)" !=3D "$(abs_builddir)" ; then \
> -				for x in \
> -					$(SETUP_FILES) \
> -					$(DOC_MODULE).types \
> -				; do echo "/$$x"; done; \
> -			fi; \
> -		fi; \
> -		if test "x$(DOC_MODULE)$(DOC_ID)" =3D x -o "x$(DOC_LINGUAS)" =3D x; th=
en :; else \
> -			for lc in $(DOC_LINGUAS); do \
> -				for x in \
> -					$(if $(DOC_MODULE),$(DOC_MODULE).xml) \
> -					$(DOC_PAGES) \
> -					$(DOC_INCLUDES) \
> -				; do echo "/$$lc/$$x"; done; \
> -			done; \
> -			for x in \
> -				$(_DOC_OMF_ALL) \
> -				$(_DOC_DSK_ALL) \
> -				$(_DOC_HTML_ALL) \
> -				$(_DOC_MOFILES) \
> -				$(DOC_H_FILE) \
> -				"*/.xml2po.mo" \
> -				"*/*.omf.out" \
> -			; do echo /$$x; done; \
> -		fi; \
> -		if test "x$(HOTDOC)" =3D x; then :; else \
> -			$(foreach project, $(HOTDOC_PROJECTS),echo "/$(call HOTDOC_TARGET,$(p=
roject))"; \
> -				echo "/$(shell $(call HOTDOC_PROJECT_COMMAND,$(project)) --get-conf-=
path output)" ; \
> -				echo "/$(shell $(call HOTDOC_PROJECT_COMMAND,$(project)) --get-priva=
te-folder)" ; \
> -			) \
> -			for x in \
> -				.hotdoc.d \
> -			; do echo "/$$x"; done; \
> -		fi; \
> -		if test "x$(HELP_ID)" =3D x -o "x$(HELP_LINGUAS)" =3D x; then :; else \
> -			for lc in $(HELP_LINGUAS); do \
> -				for x in \
> -					$(HELP_FILES) \
> -					"$$lc.stamp" \
> -					"$$lc.mo" \
> -				; do echo "/$$lc/$$x"; done; \
> -			done; \
> -		fi; \
> -		if test "x$(gsettings_SCHEMAS)" =3D x; then :; else \
> -			for x in \
> -				$(gsettings_SCHEMAS:.xml=3D.valid) \
> -				$(gsettings__enum_file) \
> -			; do echo "/$$x"; done; \
> -		fi; \
> -		if test "x$(appdata_XML)" =3D x; then :; else \
> -			for x in \
> -				$(appdata_XML:.xml=3D.valid) \
> -			; do echo "/$$x"; done; \
> -		fi; \
> -		if test "x$(appstream_XML)" =3D x; then :; else \
> -			for x in \
> -				$(appstream_XML:.xml=3D.valid) \
> -			; do echo "/$$x"; done; \
> -		fi; \
> -		if test -f $(srcdir)/po/Makefile.in.in; then \
> -			for x in \
> -				ABOUT-NLS \
> -				po/Makefile.in.in \
> -				po/Makefile.in.in~ \
> -				po/Makefile.in \
> -				po/Makefile \
> -				po/Makevars.template \
> -				po/POTFILES \
> -				po/Rules-quot \
> -				po/stamp-it \
> -				po/stamp-po \
> -				po/.intltool-merge-cache \
> -				"po/*.gmo" \
> -				"po/*.header" \
> -				"po/*.mo" \
> -				"po/*.sed" \
> -				"po/*.sin" \
> -				po/$(GETTEXT_PACKAGE).pot \
> -				intltool-extract.in \
> -				intltool-merge.in \
> -				intltool-update.in \
> -			; do echo "/$$x"; done; \
> -		fi; \
> -		if test -f $(srcdir)/configure; then \
> -			for x in \
> -				autom4te.cache \
> -				configure \
> -				config.h \
> -				stamp-h1 \
> -				libtool \
> -				config.lt \
> -			; do echo "/$$x"; done; \
> -		fi; \
> -		if test "x$(DEJATOOL)" =3D x; then :; else \
> -			for x in \
> -				$(DEJATOOL) \
> -			; do echo "/$$x.sum"; echo "/$$x.log"; done; \
> -			echo /site.exp; \
> -		fi; \
> -		if test "x$(am__dirstamp)" =3D x; then :; else \
> -			echo "$(am__dirstamp)"; \
> -		fi; \
> -		if test "x$(findstring libtool,$(LTCOMPILE))" =3D x -a "x$(findstring =
libtool,$(LTCXXCOMPILE))" =3D x -a "x$(GTKDOC_RUN)" =3D x; then :; else \
> -			for x in \
> -				"*.lo" \
> -				".libs" "_libs" \
> -			; do echo "$$x"; done; \
> -		fi; \
> -		for x in \
> -			.gitignore \
> -			$(GITIGNOREFILES) \
> -			$(CLEANFILES) \
> -			$(PROGRAMS) $(check_PROGRAMS) $(EXTRA_PROGRAMS) \
> -			$(LIBRARIES) $(check_LIBRARIES) $(EXTRA_LIBRARIES) \
> -			$(LTLIBRARIES) $(check_LTLIBRARIES) $(EXTRA_LTLIBRARIES) \
> -			so_locations \
> -			$(MOSTLYCLEANFILES) \
> -			$(TEST_LOGS) \
> -			$(TEST_LOGS:.log=3D.trs) \
> -			$(TEST_SUITE_LOG) \
> -			$(TESTS:=3D.test) \
> -			"*.gcda" \
> -			"*.gcno" \
> -			$(DISTCLEANFILES) \
> -			$(am__CONFIG_DISTCLEAN_FILES) \
> -			$(CONFIG_CLEAN_FILES) \
> -			TAGS ID GTAGS GRTAGS GSYMS GPATH tags \
> -			"*.tab.c" \
> -			$(MAINTAINERCLEANFILES) \
> -			$(BUILT_SOURCES) \
> -			$(patsubst %.vala,%.c,$(filter %.vala,$(SOURCES))) \
> -			$(filter %_vala.stamp,$(DIST_COMMON)) \
> -			$(filter %.vapi,$(DIST_COMMON)) \
> -			$(filter $(addprefix %,$(notdir $(patsubst %.vapi,%.h,$(filter %.vapi=
,$(DIST_COMMON))))),$(DIST_COMMON)) \
> -			Makefile \
> -			Makefile.in \
> -			"*.orig" \
> -			"*.rej" \
> -			"*.bak" \
> -			"*~" \
> -			".*.sw[nop]" \
> -			".dirstamp" \
> -		; do echo "/$$x"; done; \
> -		for x in \
> -			"*.$(OBJEXT)" \
> -			$(DEPDIR) \
> -		; do echo "$$x"; done; \
> -	} | \
> -	sed "s@^/`echo "$(srcdir)" | sed 's/\(.\)/[\1]/g'`/@/@" | \
> -	sed 's@/[.]/@/@g' | \
> -	LC_ALL=3DC sort | uniq > $@.tmp && \
> -	mv $@.tmp $@;
> -
> -all: $(srcdir)/.gitignore gitignore-recurse-maybe
> -gitignore: $(srcdir)/.gitignore gitignore-recurse
> -
> -gitignore-recurse-maybe:
> -	@for subdir in $(DIST_SUBDIRS); do \
> -	  case " $(SUBDIRS) " in \
> -	    *" $$subdir "*) :;; \
> -	    *) test "$$subdir" =3D . -o -e "$$subdir/.git" || (cd $$subdir && $=
(MAKE) $(AM_MAKEFLAGS) gitignore || echo "Skipping $$subdir");; \
> -	  esac; \
> -	done
> -gitignore-recurse:
> -	@for subdir in $(DIST_SUBDIRS); do \
> -	    test "$$subdir" =3D . -o -e "$$subdir/.git" || (cd $$subdir && $(MA=
KE) $(AM_MAKEFLAGS) gitignore || echo "Skipping $$subdir"); \
> -	done
> -
> -maintainer-clean: gitignore-clean
> -gitignore-clean:
> -	-rm -f $(srcdir)/.gitignore
> -
> -.PHONY: gitignore-clean gitignore gitignore-recurse gitignore-recurse-ma=
ybe
> diff --git a/m4/ld-version.m4 b/m4/ld-version.m4
> deleted file mode 100644
> index 589fb711..00000000
> --- a/m4/ld-version.m4
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -dnl Check whether the linker supports --version-script.
> -dnl
> -dnl Probes whether the linker supports --version-script with a simple ve=
rsion
> -dnl script that only defines a single version.  Sets the Automake condit=
ional
> -dnl HAVE_LD_VERSION_SCRIPT based on whether it is supported.
> -dnl
> -dnl Written by Russ Allbery <rra@stanford.edu>
> -dnl Based on the gnulib ld-version-script macro from Simon Josefsson
> -dnl Copyright 2010 Board of Trustees, Leland Stanford Jr. University
> -dnl Copyright (C) 2008, 2009, 2010 Free Software Foundation, Inc.
> -dnl
> -dnl This file is free software; the Free Software Foundation gives unlim=
ited
> -dnl permission to copy and/or distribute it, with or without modificatio=
ns, as
> -dnl long as this notice is preserved.
> -
> -AC_DEFUN([RRA_LD_VERSION_SCRIPT],
> -[AC_CACHE_CHECK([if -Wl,--version-script works], [rra_cv_ld_version_scri=
pt],
> -    [save_LDFLAGS=3D"$LDFLAGS"
> -     LDFLAGS=3D"$LDFLAGS -Wl,--version-script=3Dconftest.map"
> -     cat > conftest.map <<EOF
> -VERSION_1 {
> -    global:
> -        sym;
> -
> -    local:
> -        *;
> -};
> -EOF
> -     AC_LINK_IFELSE([AC_LANG_PROGRAM([], [])],
> -        [rra_cv_ld_version_script=3Dyes], [rra_cv_ld_version_script=3Dno=
])
> -     rm -f conftest.map
> -     LDFLAGS=3D"$save_LDFLAGS"])
> - AM_CONDITIONAL([HAVE_LD_VERSION_SCRIPT],
> -    [test x"$rra_cv_ld_version_script" =3D xyes])])
> diff --git a/m4/manywarnings.m4 b/m4/manywarnings.m4
> deleted file mode 100644
> index 150baa24..00000000
> --- a/m4/manywarnings.m4
> +++ /dev/null
> @@ -1,273 +0,0 @@
> -# manywarnings.m4 serial 8
> -dnl Copyright (C) 2008-2016 Free Software Foundation, Inc.
> -dnl This file is free software; the Free Software Foundation
> -dnl gives unlimited permission to copy and/or distribute it,
> -dnl with or without modifications, as long as this notice is preserved.
> -
> -dnl From Simon Josefsson
> -
> -# gl_MANYWARN_COMPLEMENT(OUTVAR, LISTVAR, REMOVEVAR)
> -# --------------------------------------------------
> -# Copy LISTVAR to OUTVAR except for the entries in REMOVEVAR.
> -# Elements separated by whitespace.  In set logic terms, the function
> -# does OUTVAR =3D LISTVAR \ REMOVEVAR.
> -AC_DEFUN([gl_MANYWARN_COMPLEMENT],
> -[
> -  gl_warn_set=3D
> -  set x $2; shift
> -  for gl_warn_item
> -  do
> -    case " $3 " in
> -      *" $gl_warn_item "*)
> -        ;;
> -      *)
> -        gl_warn_set=3D"$gl_warn_set $gl_warn_item"
> -        ;;
> -    esac
> -  done
> -  $1=3D$gl_warn_set
> -])
> -
> -# gl_MANYWARN_ALL_GCC(VARIABLE)
> -# -----------------------------
> -# Add all documented GCC warning parameters to variable VARIABLE.
> -# Note that you need to test them using gl_WARN_ADD if you want to
> -# make sure your gcc understands it.
> -AC_DEFUN([gl_MANYWARN_ALL_GCC],
> -[
> -  dnl First, check for some issues that only occur when combining multip=
le
> -  dnl gcc warning categories.
> -  AC_REQUIRE([AC_PROG_CC])
> -  if test -n "$GCC"; then
> -
> -    dnl Check if -W -Werror -Wno-missing-field-initializers is supported
> -    dnl with the current $CC $CFLAGS $CPPFLAGS.
> -    AC_MSG_CHECKING([whether -Wno-missing-field-initializers is supporte=
d])
> -    AC_CACHE_VAL([gl_cv_cc_nomfi_supported], [
> -      gl_save_CFLAGS=3D"$CFLAGS"
> -      CFLAGS=3D"$CFLAGS -W -Werror -Wno-missing-field-initializers"
> -      AC_COMPILE_IFELSE(
> -        [AC_LANG_PROGRAM([[]], [[]])],
> -        [gl_cv_cc_nomfi_supported=3Dyes],
> -        [gl_cv_cc_nomfi_supported=3Dno])
> -      CFLAGS=3D"$gl_save_CFLAGS"])
> -    AC_MSG_RESULT([$gl_cv_cc_nomfi_supported])
> -
> -    if test "$gl_cv_cc_nomfi_supported" =3D yes; then
> -      dnl Now check whether -Wno-missing-field-initializers is needed
> -      dnl for the { 0, } construct.
> -      AC_MSG_CHECKING([whether -Wno-missing-field-initializers is needed=
])
> -      AC_CACHE_VAL([gl_cv_cc_nomfi_needed], [
> -        gl_save_CFLAGS=3D"$CFLAGS"
> -        CFLAGS=3D"$CFLAGS -W -Werror"
> -        AC_COMPILE_IFELSE(
> -          [AC_LANG_PROGRAM(
> -             [[void f (void)
> -               {
> -                 typedef struct { int a; int b; } s_t;
> -                 s_t s1 =3D { 0, };
> -               }
> -             ]],
> -             [[]])],
> -          [gl_cv_cc_nomfi_needed=3Dno],
> -          [gl_cv_cc_nomfi_needed=3Dyes])
> -        CFLAGS=3D"$gl_save_CFLAGS"
> -      ])
> -      AC_MSG_RESULT([$gl_cv_cc_nomfi_needed])
> -    fi
> -
> -    dnl Next, check if -Werror -Wuninitialized is useful with the
> -    dnl user's choice of $CFLAGS; some versions of gcc warn that it
> -    dnl has no effect if -O is not also used
> -    AC_MSG_CHECKING([whether -Wuninitialized is supported])
> -    AC_CACHE_VAL([gl_cv_cc_uninitialized_supported], [
> -      gl_save_CFLAGS=3D"$CFLAGS"
> -      CFLAGS=3D"$CFLAGS -Werror -Wuninitialized"
> -      AC_COMPILE_IFELSE(
> -        [AC_LANG_PROGRAM([[]], [[]])],
> -        [gl_cv_cc_uninitialized_supported=3Dyes],
> -        [gl_cv_cc_uninitialized_supported=3Dno])
> -      CFLAGS=3D"$gl_save_CFLAGS"])
> -    AC_MSG_RESULT([$gl_cv_cc_uninitialized_supported])
> -
> -  fi
> -
> -  # List all gcc warning categories.
> -  # To compare this list to your installed GCC's, run this Bash command:
> -  #
> -  # comm -3 \
> -  #  <(sed -n 's/^  *\(-[^ ]*\) .*/\1/p' manywarnings.m4 | sort) \
> -  #  <(gcc --help=3Dwarnings | sed -n 's/^  \(-[^ ]*\) .*/\1/p' | sort |
> -  #      grep -v -x -f <(
> -  #         awk '/^[^#]/ {print $1}' ../build-aux/gcc-warning.spec))
> -
> -  gl_manywarn_set=3D
> -  for gl_manywarn_item in \
> -    -W \
> -    -Wabi \
> -    -Waddress \
> -    -Waggressive-loop-optimizations \
> -    -Wall \
> -    -Wattributes \
> -    -Wbad-function-cast \
> -    -Wbool-compare \
> -    -Wbuiltin-macro-redefined \
> -    -Wcast-align \
> -    -Wchar-subscripts \
> -    -Wclobbered \
> -    -Wcomment \
> -    -Wcomments \
> -    -Wcoverage-mismatch \
> -    -Wcpp \
> -    -Wdate-time \
> -    -Wdeprecated \
> -    -Wdeprecated-declarations \
> -    -Wdesignated-init \
> -    -Wdisabled-optimization \
> -    -Wdiscarded-array-qualifiers \
> -    -Wdiscarded-qualifiers \
> -    -Wdiv-by-zero \
> -    -Wdouble-promotion \
> -    -Wduplicated-cond \
> -    -Wempty-body \
> -    -Wendif-labels \
> -    -Wenum-compare \
> -    -Wextra \
> -    -Wformat-contains-nul \
> -    -Wformat-extra-args \
> -    -Wformat-nonliteral \
> -    -Wformat-security \
> -    -Wformat-signedness \
> -    -Wformat-y2k \
> -    -Wformat-zero-length \
> -    -Wframe-address \
> -    -Wfree-nonheap-object \
> -    -Whsa \
> -    -Wignored-attributes \
> -    -Wignored-qualifiers \
> -    -Wimplicit \
> -    -Wimplicit-function-declaration \
> -    -Wimplicit-int \
> -    -Wincompatible-pointer-types \
> -    -Winit-self \
> -    -Winline \
> -    -Wint-conversion \
> -    -Wint-to-pointer-cast \
> -    -Winvalid-memory-model \
> -    -Winvalid-pch \
> -    -Wjump-misses-init \
> -    -Wlogical-not-parentheses \
> -    -Wlogical-op \
> -    -Wmain \
> -    -Wmaybe-uninitialized \
> -    -Wmemset-transposed-args \
> -    -Wmisleading-indentation \
> -    -Wmissing-braces \
> -    -Wmissing-declarations \
> -    -Wmissing-field-initializers \
> -    -Wmissing-include-dirs \
> -    -Wmissing-parameter-type \
> -    -Wmissing-prototypes \
> -    -Wmultichar \
> -    -Wnarrowing \
> -    -Wnested-externs \
> -    -Wnonnull \
> -    -Wnonnull-compare \
> -    -Wnull-dereference \
> -    -Wodr \
> -    -Wold-style-declaration \
> -    -Wold-style-definition \
> -    -Wopenmp-simd \
> -    -Woverflow \
> -    -Woverlength-strings \
> -    -Woverride-init \
> -    -Wpacked \
> -    -Wpacked-bitfield-compat \
> -    -Wparentheses \
> -    -Wpointer-arith \
> -    -Wpointer-sign \
> -    -Wpointer-to-int-cast \
> -    -Wpragmas \
> -    -Wreturn-local-addr \
> -    -Wreturn-type \
> -    -Wscalar-storage-order \
> -    -Wsequence-point \
> -    -Wshadow \
> -    -Wshift-count-negative \
> -    -Wshift-count-overflow \
> -    -Wshift-negative-value \
> -    -Wsizeof-array-argument \
> -    -Wsizeof-pointer-memaccess \
> -    -Wstack-protector \
> -    -Wstrict-aliasing \
> -    -Wstrict-overflow \
> -    -Wstrict-prototypes \
> -    -Wsuggest-attribute=3Dconst \
> -    -Wsuggest-attribute=3Dformat \
> -    -Wsuggest-attribute=3Dnoreturn \
> -    -Wsuggest-attribute=3Dpure \
> -    -Wsuggest-final-methods \
> -    -Wsuggest-final-types \
> -    -Wswitch \
> -    -Wswitch-bool \
> -    -Wswitch-default \
> -    -Wsync-nand \
> -    -Wsystem-headers \
> -    -Wtautological-compare \
> -    -Wtrampolines \
> -    -Wtrigraphs \
> -    -Wtype-limits \
> -    -Wuninitialized \
> -    -Wunknown-pragmas \
> -    -Wunsafe-loop-optimizations \
> -    -Wunused \
> -    -Wunused-but-set-parameter \
> -    -Wunused-but-set-variable \
> -    -Wunused-function \
> -    -Wunused-label \
> -    -Wunused-local-typedefs \
> -    -Wunused-macros \
> -    -Wunused-parameter \
> -    -Wunused-result \
> -    -Wunused-value \
> -    -Wunused-variable \
> -    -Wvarargs \
> -    -Wvariadic-macros \
> -    -Wvector-operation-performance \
> -    -Wvla \
> -    -Wvolatile-register-var \
> -    -Wwrite-strings \
> -    \
> -    ; do
> -    gl_manywarn_set=3D"$gl_manywarn_set $gl_manywarn_item"
> -  done
> -
> -  # gcc --help=3Dwarnings outputs an unusual form for these options; list
> -  # them here so that the above 'comm' command doesn't report a false ma=
tch.
> -  gl_manywarn_set=3D"$gl_manywarn_set -Warray-bounds=3D2"
> -  gl_manywarn_set=3D"$gl_manywarn_set -Wnormalized=3Dnfc"
> -  gl_manywarn_set=3D"$gl_manywarn_set -Wshift-overflow=3D2"
> -  gl_manywarn_set=3D"$gl_manywarn_set -Wunused-const-variable=3D2"
> -
> -  # These are needed for older GCC versions.
> -  if test -n "$GCC"; then
> -    case `($CC --version) 2>/dev/null` in
> -      'gcc (GCC) '[[0-3]].* | \
> -      'gcc (GCC) '4.[[0-7]].*)
> -        gl_manywarn_set=3D"$gl_manywarn_set -fdiagnostics-show-option"
> -        gl_manywarn_set=3D"$gl_manywarn_set -funit-at-a-time"
> -          ;;
> -    esac
> -  fi
> -
> -  # Disable specific options as needed.
> -  if test "$gl_cv_cc_nomfi_needed" =3D yes; then
> -    gl_manywarn_set=3D"$gl_manywarn_set -Wno-missing-field-initializers"
> -  fi
> -
> -  if test "$gl_cv_cc_uninitialized_supported" =3D no; then
> -    gl_manywarn_set=3D"$gl_manywarn_set -Wno-uninitialized"
> -  fi
> -
> -  $1=3D$gl_manywarn_set
> -])
> diff --git a/m4/spice-compile-warnings.m4 b/m4/spice-compile-warnings.m4
> deleted file mode 100644
> index a7a6ff32..00000000
> --- a/m4/spice-compile-warnings.m4
> +++ /dev/null
> @@ -1,146 +0,0 @@
> -# SPICE_COMPILE_WARNINGS(DONTWARN)
> -# --------------------------------------------------------
> -# Enable all known GCC compiler warnings, except for those
> -# we can't yet cope with
> -#
> -AC_DEFUN([SPICE_COMPILE_WARNINGS],[
> -    dnl ******************************
> -    dnl More compiler warnings
> -    dnl ******************************
> -
> -    AC_ARG_ENABLE([werror],
> -                  AS_HELP_STRING([--enable-werror], [Use -Werror (if sup=
ported)]),
> -                  [set_werror=3D"$enableval"],
> -                  [if test -d $srcdir/.git; then
> -                     is_git_version=3Dtrue
> -                     set_werror=3Dyes
> -                   else
> -                     set_werror=3Dno
> -                   fi])
> -
> -    # List of warnings that are not relevant / wanted
> -
> -    dontwarn=3D$1
> -
> -    # Don't care about C++ compiler compat
> -    dontwarn=3D"$dontwarn -Wc++-compat"
> -    dontwarn=3D"$dontwarn -Wabi"
> -    dontwarn=3D"$dontwarn -Wdeprecated"
> -    # Don't care about ancient C standard compat
> -    dontwarn=3D"$dontwarn -Wtraditional"
> -    # Don't care about ancient C standard compat
> -    dontwarn=3D"$dontwarn -Wtraditional-conversion"
> -    # Ignore warnings in /usr/include
> -    dontwarn=3D"$dontwarn -Wsystem-headers"
> -    # Happy for compiler to add struct padding
> -    dontwarn=3D"$dontwarn -Wpadded"
> -    # GCC very confused with -O2
> -    dontwarn=3D"$dontwarn -Wunreachable-code"
> -
> -
> -    dontwarn=3D"$dontwarn -Wconversion"
> -    dontwarn=3D"$dontwarn -Wsign-conversion"
> -    dontwarn=3D"$dontwarn -Wvla"
> -    dontwarn=3D"$dontwarn -Wundef"
> -    dontwarn=3D"$dontwarn -Wcast-qual"
> -    dontwarn=3D"$dontwarn -Wlong-long"
> -    dontwarn=3D"$dontwarn -Wswitch-default"
> -    dontwarn=3D"$dontwarn -Wswitch-enum"
> -    dontwarn=3D"$dontwarn -Wstrict-overflow"
> -    dontwarn=3D"$dontwarn -Wunsafe-loop-optimizations"
> -    dontwarn=3D"$dontwarn -Wformat-nonliteral"
> -    dontwarn=3D"$dontwarn -Wfloat-equal"
> -    dontwarn=3D"$dontwarn -Wdeclaration-after-statement"
> -    dontwarn=3D"$dontwarn -Wpacked"
> -    dontwarn=3D"$dontwarn -Wunused-macros"
> -    dontwarn=3D"$dontwarn -Woverlength-strings"
> -    dontwarn=3D"$dontwarn -Wstack-protector"
> -    dontwarn=3D"$dontwarn -Winline"
> -    dontwarn=3D"$dontwarn -Wbad-function-cast"
> -    dontwarn=3D"$dontwarn -Wshadow"
> -
> -    # Get all possible GCC warnings
> -    gl_MANYWARN_ALL_GCC([maybewarn])
> -
> -    # Remove the ones we don't want, blacklisted earlier
> -    gl_MANYWARN_COMPLEMENT([wantwarn], [$maybewarn], [$dontwarn])
> -
> -    # Check for $CC support of each warning
> -    for w in $wantwarn; do
> -      gl_WARN_ADD([$w])
> -    done
> -
> -    # GNULIB uses '-W' (aka -Wextra) which includes a bunch of stuff.
> -    # Unfortunately, this means you can't simply use '-Wsign-compare'
> -    # with gl_MANYWARN_COMPLEMENT
> -    # So we have -W enabled, and then have to explicitly turn off...
> -    gl_WARN_ADD([-Wno-sign-compare])
> -    gl_WARN_ADD([-Wno-unused-parameter])
> -    gl_WARN_ADD([-Wno-missing-field-initializers])
> -    # We can't enable this due to horrible spice_usb_device_get_descript=
ion
> -    # signature
> -    gl_WARN_ADD([-Wno-format-nonliteral])
> -    # We use some deprecated functions to avoid #ifdef hell while mainta=
ining
> -    # compat with older gtk / glib versions
> -    gl_WARN_ADD([-Wno-error=3Ddeprecated-declarations])
> -    # g_source_set_callback() can't be compatible with this warning. Its=
 API
> -    # doc states:
> -    # "The exact type of func depends on the type of source; ie. you sho=
uld
> -    # not count on func being called with data as its first parameter."
> -    gl_WARN_ADD([-Wno-cast-function-type])
> -
> -    # GNULIB expects this to be part of -Wc++-compat, but we turn
> -    # that one off, so we need to manually enable this again
> -    gl_WARN_ADD([-Wjump-misses-init])
> -
> -    # This should be < 1024 really. pixman_utils is the blackspot
> -    # preventing lower usage
> -    gl_WARN_ADD([-Wframe-larger-than=3D9216])
> -
> -    # Use improved glibc headers
> -    AH_VERBATIM([FORTIFY_SOURCE],
> -    [/* Enable compile-time and run-time bounds-checking, and some warni=
ngs. */
> -     #if !defined _FORTIFY_SOURCE &&  defined __OPTIMIZE__ && __OPTIMIZE=
__
> -     # define _FORTIFY_SOURCE 2
> -     #endif
> -    ])
> -
> -    # Extra special flags
> -    dnl -fstack-protector stuff passes gl_WARN_ADD with gcc
> -    dnl on Mingw32, but fails when actually used
> -    case $host in
> -       *-*-linux*)
> -       dnl Fedora only uses -fstack-protector, but doesn't seem to
> -       dnl be great overhead in adding -fstack-protector-all instead
> -       dnl gl_WARN_ADD([-fstack-protector])
> -       gl_WARN_ADD([-fstack-protector-all])
> -       gl_WARN_ADD([--param=3Dssp-buffer-size=3D4])
> -       ;;
> -    esac
> -    gl_WARN_ADD([-fexceptions])
> -    gl_WARN_ADD([-fasynchronous-unwind-tables])
> -    gl_WARN_ADD([-fdiagnostics-show-option])
> -    gl_WARN_ADD([-funit-at-a-time])
> -
> -    # Need -fipa-pure-const in order to make -Wsuggest-attribute=3Dpure
> -    # fire even without -O.
> -    gl_WARN_ADD([-fipa-pure-const])
> -
> -    # We should eventually enable this, but right now there are at
> -    # least 75 functions triggering warnings.
> -    gl_WARN_ADD([-Wno-suggest-attribute=3Dpure])
> -    gl_WARN_ADD([-Wno-suggest-attribute=3Dconst])
> -
> -    if test "$set_werror" =3D "yes"
> -    then
> -      gl_WARN_ADD([-Werror])
> -    fi
> -
> -    WARN_LDFLAGS=3D$WARN_CFLAGS
> -    AC_SUBST([WARN_CFLAGS])
> -    AC_SUBST([WARN_LDFLAGS])
> -
> -    gl_WARN_ADD([-Wno-write-strings])
> -    WARN_PYFLAGS=3D$WARN_CFLAGS
> -    AC_SUBST([WARN_PYFLAGS])
> -])
> diff --git a/m4/warnings.m4 b/m4/warnings.m4
> deleted file mode 100644
> index e3d239b6..00000000
> --- a/m4/warnings.m4
> +++ /dev/null
> @@ -1,79 +0,0 @@
> -# warnings.m4 serial 11
> -dnl Copyright (C) 2008-2013 Free Software Foundation, Inc.
> -dnl This file is free software; the Free Software Foundation
> -dnl gives unlimited permission to copy and/or distribute it,
> -dnl with or without modifications, as long as this notice is preserved.
> -
> -dnl From Simon Josefsson
> -
> -# gl_AS_VAR_APPEND(VAR, VALUE)
> -# ----------------------------
> -# Provide the functionality of AS_VAR_APPEND if Autoconf does not have i=
t.
> -m4_ifdef([AS_VAR_APPEND],
> -[m4_copy([AS_VAR_APPEND], [gl_AS_VAR_APPEND])],
> -[m4_define([gl_AS_VAR_APPEND],
> -[AS_VAR_SET([$1], [AS_VAR_GET([$1])$2])])])
> -
> -
> -# gl_COMPILER_OPTION_IF(OPTION, [IF-SUPPORTED], [IF-NOT-SUPPORTED],
> -#                       [PROGRAM =3D AC_LANG_PROGRAM()])
> -# -----------------------------------------------------------------
> -# Check if the compiler supports OPTION when compiling PROGRAM.
> -#
> -# FIXME: gl_Warn must be used unquoted until we can assume Autoconf
> -# 2.64 or newer.
> -AC_DEFUN([gl_COMPILER_OPTION_IF],
> -[AS_VAR_PUSHDEF([gl_Warn], [gl_cv_warn_[]_AC_LANG_ABBREV[]_$1])dnl
> -AS_VAR_PUSHDEF([gl_Flags], [_AC_LANG_PREFIX[]FLAGS])dnl
> -AS_LITERAL_IF([$1],
> -  [m4_pushdef([gl_Positive], m4_bpatsubst([$1], [^-Wno-], [-W]))],
> -  [gl_positive=3D"$1"
> -case $gl_positive in
> -  -Wno-*) gl_positive=3D-W`expr "X$gl_positive" : 'X-Wno-\(.*\)'` ;;
> -esac
> -m4_pushdef([gl_Positive], [$gl_positive])])dnl
> -AC_CACHE_CHECK([whether _AC_LANG compiler handles $1], m4_defn([gl_Warn]=
), [
> -  gl_save_compiler_FLAGS=3D"$gl_Flags"
> -  gl_AS_VAR_APPEND(m4_defn([gl_Flags]),
> -    [" $gl_unknown_warnings_are_errors ]m4_defn([gl_Positive])["])
> -  AC_LINK_IFELSE([m4_default([$4], [AC_LANG_PROGRAM([])])],
> -                 [AS_VAR_SET(gl_Warn, [yes])],
> -                 [AS_VAR_SET(gl_Warn, [no])])
> -  gl_Flags=3D"$gl_save_compiler_FLAGS"
> -])
> -AS_VAR_IF(gl_Warn, [yes], [$2], [$3])
> -m4_popdef([gl_Positive])dnl
> -AS_VAR_POPDEF([gl_Flags])dnl
> -AS_VAR_POPDEF([gl_Warn])dnl
> -])
> -
> -# gl_UNKNOWN_WARNINGS_ARE_ERRORS
> -# ------------------------------
> -# Clang doesn't complain about unknown warning options unless one also
> -# specifies -Wunknown-warning-option -Werror.  Detect this.
> -AC_DEFUN([gl_UNKNOWN_WARNINGS_ARE_ERRORS],
> -[gl_COMPILER_OPTION_IF([-Werror -Wunknown-warning-option],
> -   [gl_unknown_warnings_are_errors=3D'-Wunknown-warning-option -Werror'],
> -   [gl_unknown_warnings_are_errors=3D])])
> -
> -# gl_WARN_ADD(OPTION, [VARIABLE =3D WARN_CFLAGS],
> -#             [PROGRAM =3D AC_LANG_PROGRAM()])
> -# ---------------------------------------------
> -# Adds parameter to WARN_CFLAGS if the compiler supports it when
> -# compiling PROGRAM.  For example, gl_WARN_ADD([-Wparentheses]).
> -#
> -# If VARIABLE is a variable name, AC_SUBST it.
> -AC_DEFUN([gl_WARN_ADD],
> -[AC_REQUIRE([gl_UNKNOWN_WARNINGS_ARE_ERRORS])
> -gl_COMPILER_OPTION_IF([$1],
> -  [gl_AS_VAR_APPEND(m4_if([$2], [], [[WARN_CFLAGS]], [[$2]]), [" $1"])],
> -  [],
> -  [$3])
> -m4_ifval([$2],
> -         [AS_LITERAL_IF([$2], [AC_SUBST([$2])])],
> -         [AC_SUBST([WARN_CFLAGS])])dnl
> -])
> -
> -# Local Variables:
> -# mode: autoconf
> -# End:
> diff --git a/man/Makefile.am b/man/Makefile.am
> deleted file mode 100644
> index 7d5341b4..00000000
> --- a/man/Makefile.am
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -NULL =3D
> -
> -dist_man_MANS =3D					\
> -	spice-client.1				\
> -	$(NULL)
> -
> -EXTRA_DIST =3D					\
> -	meson.build				\
> -	spice-client.pod			\
> -	$(NULL)
> -
> -MAINTAINERCLEANFILES =3D $(dist_man_MANS)
> -
> -%.1: %.pod
> -	$(AM_V_GEN)pod2man -c "Spice-GTK Documentation" $< > $@
> -
> --include $(top_srcdir)/git.mk
> diff --git a/po/ChangeLog b/po/ChangeLog
> deleted file mode 100644
> index d300628f..00000000
> --- a/po/ChangeLog
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -2010-11-25  Marc-Andre Lureau  <marcandre.lureau@redhat.com>
> -
> -	* Added initial french translation for spicy and snappy.
> -
> -2010-11-24  Marc-Andre Lureau  <marcandre.lureau@redhat.com>
> -
> -	* Initial translation support.
> -
> diff --git a/po/Makevars b/po/Makevars
> deleted file mode 100644
> index 78f708eb..00000000
> --- a/po/Makevars
> +++ /dev/null
> @@ -1,95 +0,0 @@
> -# Makefile variables for PO directory in any package using GNU gettext.
> -
> -# Usually the message domain is the same as the package name.
> -DOMAIN =3D $(PACKAGE)
> -
> -# These two variables depend on the location of this directory.
> -subdir =3D po
> -top_builddir =3D ..
> -
> -# These options get passed to xgettext.
> -XGETTEXT_OPTIONS =3D --keyword=3D_ --keyword=3DN_ \
> -        --keyword=3DC_:1c,2 --keyword=3DNC_:1c,2 \
> -        --keyword=3Dg_dngettext:2,3 \
> -        --flag=3Dg_dngettext:2:pass-c-format \
> -        --flag=3Dg_strdup_printf:1:c-format \
> -        --flag=3Dg_string_printf:2:c-format \
> -        --flag=3Dg_string_append_printf:2:c-format \
> -        --flag=3Dg_error_new:3:c-format \
> -        --flag=3Dg_set_error:4:c-format \
> -        --flag=3Dg_markup_printf_escaped:1:c-format \
> -        --flag=3Dg_log:3:c-format \
> -        --flag=3Dg_print:1:c-format \
> -        --flag=3Dg_printerr:1:c-format \
> -        --flag=3Dg_printf:1:c-format \
> -        --flag=3Dg_fprintf:2:c-format \
> -        --flag=3Dg_sprintf:2:c-format \
> -        --flag=3Dg_snprintf:3:c-format
> -
> -
> -# This is the copyright holder that gets inserted into the header of the
> -# $(DOMAIN).pot file.  Set this to the copyright holder of the surroundi=
ng
> -# package.  (Note that the msgstr strings, extracted from the package's
> -# sources, belong to the copyright holder of the package.)  Translators =
are
> -# expected to transfer the copyright for their translations to this pers=
on
> -# or entity, or to disclaim their copyright.  The empty string stands for
> -# the public domain; in this case the translators are expected to discla=
im
> -# their copyright.
> -COPYRIGHT_HOLDER =3D Copyright (C) 2010-2017 Red Hat, Inc.
> -
> -# This tells whether or not to prepend "GNU " prefix to the package
> -# name that gets inserted into the header of the $(DOMAIN).pot file.
> -# Possible values are "yes", "no", or empty.  If it is empty, try to
> -# detect it automatically by scanning the files in $(top_srcdir) for
> -# "GNU packagename" string.
> -PACKAGE_GNU =3D no
> -
> -# This is the email address or URL to which the translators shall report
> -# bugs in the untranslated strings:
> -# - Strings which are not entire sentences, see the maintainer guidelines
> -#   in the GNU gettext documentation, section 'Preparing Strings'.
> -# - Strings which use unclear terms or require additional context to be
> -#   understood.
> -# - Strings which make invalid assumptions about notation of date, time =
or
> -#   money.
> -# - Pluralisation problems.
> -# - Incorrect English spelling.
> -# - Incorrect formatting.
> -# It can be your email address, or a mailing list address where translat=
ors
> -# can write to without being subscribed, or the URL of a web page through
> -# which the translators can contact you.
> -MSGID_BUGS_ADDRESS =3D spice-devel@lists.freedesktop.org
> -
> -# This is the list of locale categories, beyond LC_MESSAGES, for which t=
he
> -# message catalogs shall be used.  It is usually empty.
> -EXTRA_LOCALE_CATEGORIES =3D
> -
> -# This tells whether the $(DOMAIN).pot file contains messages with an 'm=
sgctxt'
> -# context.  Possible values are "yes" and "no".  Set this to yes if the
> -# package uses functions taking also a message context, like pgettext(),=
 or
> -# if in $(XGETTEXT_OPTIONS) you define keywords with a context argument.
> -USE_MSGCTXT =3D no
> -
> -# These options get passed to msgmerge.
> -# Useful options are in particular:
> -#   --previous            to keep previous msgids of translated messages,
> -#   --quiet               to reduce the verbosity.
> -MSGMERGE_OPTIONS =3D
> -
> -# These options get passed to msginit.
> -# If you want to disable line wrapping when writing PO files, add
> -# --no-wrap to MSGMERGE_OPTIONS, XGETTEXT_OPTIONS, and
> -# MSGINIT_OPTIONS.
> -MSGINIT_OPTIONS =3D
> -
> -# This tells whether or not to regenerate a PO file when $(DOMAIN).pot
> -# has changed.  Possible values are "yes" and "no".  Set this to no if
> -# the POT file is checked in the repository and the version control
> -# program ignores timestamps.
> -PO_DEPENDS_ON_POT =3D no
> -
> -# This tells whether or not to forcibly update $(DOMAIN).pot and
> -# regenerate PO files on "make dist".  Possible values are "yes" and
> -# "no".  Set this to no if the POT file and PO files are maintained
> -# externally.
> -DIST_DEPENDS_ON_UPDATE_PO =3D yes
> diff --git a/po/POTFILES.in b/po/POTFILES
> similarity index 100%
> rename from po/POTFILES.in
> rename to po/POTFILES
> diff --git a/po/POTFILES.skip b/po/POTFILES.skip
> deleted file mode 100644
> index 8840875e..00000000
> --- a/po/POTFILES.skip
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -subprojects/spice-common/python_modules/spice_parser.py
> -subprojects/spice-common/spice_codegen.py
> diff --git a/spice-client-glib-2.0.pc.in b/spice-client-glib-2.0.pc.in
> deleted file mode 100644
> index 1b5cce02..00000000
> --- a/spice-client-glib-2.0.pc.in
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -prefix=3D@prefix@
> -exec_prefix=3D@exec_prefix@
> -libdir=3D@libdir@
> -includedir=3D@includedir@
> -
> -Name: spice-client-glib-2.0
> -Description: SPICE Client GLib 2.0 library
> -Version: @VERSION@
> -
> -Requires: spice-protocol
> -Requires.private: @SPICE_GLIB_REQUIRES@
> -Libs: -L${libdir} -lspice-client-glib-2.0
> -Libs.private: @SPICE_GLIB_LIBS@
> -Cflags: -I${includedir}/spice-client-glib-2.0
> diff --git a/spice-client-gtk-3.0.pc.in b/spice-client-gtk-3.0.pc.in
> deleted file mode 100644
> index 7bad0c81..00000000
> --- a/spice-client-gtk-3.0.pc.in
> +++ /dev/null
> @@ -1,12 +0,0 @@
> -prefix=3D@prefix@
> -exec_prefix=3D@exec_prefix@
> -libdir=3D@libdir@
> -includedir=3D@includedir@
> -
> -Name: spice-client-gtk-3.0
> -Description: SPICE Client Gtk 3.0 library
> -Version: @VERSION@
> -
> -Requires: @SPICE_GTK_REQUIRES@ spice-client-glib-2.0
> -Libs: -L${libdir} -lspice-client-gtk-3.0
> -Cflags: -I${includedir}/spice-client-gtk-3.0
> diff --git a/src/Makefile.am b/src/Makefile.am
> deleted file mode 100644
> index 7a7ecb40..00000000
> --- a/src/Makefile.am
> +++ /dev/null
> @@ -1,593 +0,0 @@
> -NULL =3D
> -SUBDIRS =3D
> -
> -KEYMAPS =3D					\
> -	vncdisplaykeymap_xorgevdev2xtkbd.h	\
> -	vncdisplaykeymap_xorgkbd2xtkbd.h	\
> -	vncdisplaykeymap_xorgxquartz2xtkbd.h	\
> -	vncdisplaykeymap_xorgxwin2xtkbd.h	\
> -	vncdisplaykeymap_osx2xtkbd.h		\
> -	vncdisplaykeymap_win322xtkbd.h		\
> -	vncdisplaykeymap_x112xtkbd.h		\
> -	$(NULL)
> -
> -# End users build dependencies can be cleaned
> -GLIBGENS =3D					\
> -	spice-glib-enums.c			\
> -	spice-glib-enums.h			\
> -	spice-marshal.c				\
> -	spice-marshal.h				\
> -	spice-widget-enums.c			\
> -	spice-widget-enums.h			\
> -	$(NULL)
> -
> -CLEANFILES =3D $(GLIBGENS) $(KEYMAPS)
> -BUILT_SOURCES =3D $(GLIBGENS) $(KEYMAPS)
> -
> -EXTRA_DIST =3D					\
> -	meson.build				\
> -	decode-glz-tmpl.c			\
> -	$(KEYMAPS)				\
> -	$(KEYMAP_CSV)				\
> -	$(KEYMAP_GEN)				\
> -	$(KEYMAP_DIST)				\
> -	map-file				\
> -	spice-glib-sym-file			\
> -	spice-gtk-sym-file			\
> -	spice-marshal.txt			\
> -	spice-version.h.in			\
> -	$(NULL)
> -
> -DISTCLEANFILES =3D spice-version.h
> -
> -if WITH_POLKIT
> -acldir =3D $(ACL_HELPER_DIR)
> -acl_PROGRAMS =3D spice-client-glib-usb-acl-helper
> -endif
> -
> -noinst_LTLIBRARIES =3D libspice-client-glib-impl.la
> -lib_LTLIBRARIES =3D libspice-client-glib-2.0.la
> -
> -if WITH_GTK
> -lib_LTLIBRARIES +=3D libspice-client-gtk-3.0.la
> -endif
> -
> -if HAVE_LD_VERSION_SCRIPT
> -GLIB_SYMBOLS_LDFLAGS =3D -Wl,--version-script=3D${srcdir}/map-file
> -GLIB_SYMBOLS_FILE =3D map-file
> -GTK_SYMBOLS_LDFLAGS =3D $(GLIB_SYMBOLS_LDFLAGS)
> -GTK_SYMBOLS_FILE =3D $(GLIB_SYMBOLS_FILE)
> -else
> -GLIB_SYMBOLS_LDFLAGS =3D -export-symbols ${srcdir}/spice-glib-sym-file
> -GLIB_SYMBOLS_FILE =3D spice-glib-sym-file
> -GTK_SYMBOLS_LDFLAGS =3D -export-symbols ${srcdir}/spice-gtk-sym-file
> -GTK_SYMBOLS_FILE =3D spice-gtk-sym-file
> -endif
> -
> -KEYMAP_GEN =3D $(top_srcdir)/subprojects/keycodemapdb/tools/keymap-gen
> -KEYMAP_CSV =3D $(top_srcdir)/subprojects/keycodemapdb/data/keymaps.csv
> -KEYMAP_DIST =3D $(top_srcdir)/subprojects/keycodemapdb/meson.build
> -
> -SPICE_COMMON_CPPFLAGS =3D						\
> -	-DSPICE_COMPILATION					\
> -	-DG_LOG_DOMAIN=3D\"GSpice\"				\
> -	-DUSB_IDS=3D\""$(USB_IDS)"\"				\
> -	-I$(top_srcdir)						\
> -	$(COMMON_CFLAGS)					\
> -	$(PIXMAN_CFLAGS)					\
> -	$(PULSE_CFLAGS)						\
> -	$(GTK_CFLAGS)						\
> -	$(CAIRO_CFLAGS)						\
> -	$(GLIB2_CFLAGS)						\
> -	$(GIO_CFLAGS)						\
> -	$(GOBJECT2_CFLAGS)					\
> -	$(JSON_CFLAGS)						\
> -	$(OPENSSL_CFLAGS)					\
> -	$(SASL_CFLAGS)						\
> -	$(GSTAUDIO_CFLAGS)					\
> -	$(GSTVIDEO_CFLAGS)					\
> -	$(SMARTCARD_CFLAGS)					\
> -	$(USBREDIR_CFLAGS)					\
> -	$(GUDEV_CFLAGS)						\
> -	$(SOUP_CFLAGS)						\
> -	$(PHODAV_CFLAGS)					\
> -	$(LIBVA_CFLAGS)						\
> -	$(X11_CFLAGS)					\
> -	$(LZ4_CFLAGS)					\
> -	$(NULL)
> -
> -AM_CPPFLAGS =3D					\
> -	-DLOCALE_DIR=3D\""$(datadir)/locale"\"	\
> -	$(SPICE_COMMON_CPPFLAGS)		\
> -	$(SPICE_CFLAGS)				\
> -	$(NULL)
> -
> -# http://www.gnu.org/software/libtool/manual/html_node/Updating-version-=
info.html
> -SPICE_GTK_LDFLAGS_COMMON =3D		\
> -	-version-info 5:0:0		\
> -	-no-undefined			\
> -	$(GTK_SYMBOLS_LDFLAGS)		\
> -	$(NULL)
> -
> -SPICE_GTK_LIBADD_COMMON =3D		\
> -	libspice-client-glib-2.0.la	\
> -	$(GTK_LIBS)			\
> -	$(CAIRO_LIBS)			\
> -	$(X11_LIBS)			\
> -	$(LIBM)				\
> -	$(LIBVA_LIBS)			\
> -	$(NULL)
> -
> -SPICE_GTK_SOURCES_COMMON =3D		\
> -	spice-util.c			\
> -	spice-util-priv.h		\
> -	spice-gtk-session.c		\
> -	spice-gtk-session-priv.h	\
> -	spice-widget.c			\
> -	spice-widget-priv.h		\
> -	spice-file-transfer-task.h \
> -	vncdisplaykeymap.c		\
> -	vncdisplaykeymap.h		\
> -	spice-grabsequence.c		\
> -	spice-grabsequence.h		\
> -	spice-grabsequence-priv.h	\
> -	desktop-integration.c		\
> -	desktop-integration.h		\
> -	usb-device-widget.c		\
> -	$(NULL)
> -
> -nodist_SPICE_GTK_SOURCES_COMMON =3D	\
> -	spice-widget-enums.c		\
> -	spice-marshal.c			\
> -	$(NULL)
> -
> -SPICE_GTK_SOURCES_COMMON +=3D		\
> -	spice-widget-cairo.c		\
> -	$(NULL)
> -
> -if HAVE_EGL
> -SPICE_GTK_SOURCES_COMMON +=3D		\
> -	spice-widget-egl.c		\
> -	$(NULL)
> -endif
> -
> -if WITH_GTK
> -EXTRA_libspice_client_gtk_3_0_la_DEPENDENCIES =3D $(GTK_SYMBOLS_FILE)
> -libspice_client_gtk_3_0_la_LDFLAGS =3D $(SPICE_GTK_LDFLAGS_COMMON)
> -libspice_client_gtk_3_0_la_LIBADD =3D $(SPICE_GTK_LIBADD_COMMON)
> -libspice_client_gtk_3_0_la_SOURCES =3D $(SPICE_GTK_SOURCES_COMMON)
> -nodist_libspice_client_gtk_3_0_la_SOURCES =3D $(nodist_SPICE_GTK_SOURCES=
_COMMON)
> -
> -libspice_client_gtkincludedir =3D $(includedir)/spice-client-gtk-3.0
> -libspice_client_gtkinclude_HEADERS =3D	\
> -	spice-client-gtk.h		\
> -	spice-gtk-session.h		\
> -	spice-widget.h			\
> -	spice-grabsequence.h		\
> -	usb-device-widget.h		\
> -	$(NULL)
> -
> -nodist_libspice_client_gtkinclude_HEADERS =3D	\
> -	spice-widget-enums.h			\
> -	$(NULL)
> -endif
> -
> -EXTRA_libspice_client_glib_2_0_la_DEPENDENCIES =3D $(GLIB_SYMBOLS_FILE)
> -
> -libspice_client_glib_2_0_la_LDFLAGS =3D	\
> -	-version-info 14:0:6		\
> -	-no-undefined			\
> -	$(GLIB_SYMBOLS_LDFLAGS)		\
> -	$(NULL)
> -
> -libspice_client_glib_2_0_la_LIBADD =3D libspice-client-glib-impl.la
> -
> -libspice_client_glib_impl_la_LIBADD =3D					\
> -	$(SPICE_COMMON_DIR)/common/libspice-common.la			\
> -	$(SPICE_COMMON_DIR)/common/libspice-common-client.la		\
> -	$(GLIB2_LIBS)							\
> -	$(SOUP_LIBS)							\
> -	$(GIO_LIBS)							\
> -	$(GOBJECT2_LIBS)						\
> -	$(JPEG_LIBS)							\
> -	$(JSON_LIBS)							\
> -	$(Z_LIBS)							\
> -	$(LZ4_LIBS)							\
> -	$(PIXMAN_LIBS)							\
> -	$(OPENSSL_LIBS)							\
> -	$(PULSE_LIBS)							\
> -	$(GSTAUDIO_LIBS)						\
> -	$(GSTVIDEO_LIBS)						\
> -	$(SASL_LIBS)							\
> -	$(SMARTCARD_LIBS)						\
> -	$(USBREDIR_LIBS)						\
> -	$(GUDEV_LIBS)							\
> -	$(PHODAV_LIBS)							\
> -	$(NULL)
> -
> -if WITH_POLKIT
> -USB_ACL_HELPER_SRCS =3D				\
> -	usb-acl-helper.c			\
> -	usb-acl-helper.h			\
> -	$(NULL)
> -AM_CPPFLAGS +=3D -DACL_HELPER_PATH=3D"\"$(ACL_HELPER_DIR)\""
> -else
> -USB_ACL_HELPER_SRCS =3D
> -endif
> -
> -libspice_client_glib_2_0_la_SOURCES =3D
> -libspice_client_glib_impl_la_SOURCES =3D			\
> -	bio-gio.c					\
> -	bio-gio.h					\
> -	spice-audio.c					\
> -	spice-audio-priv.h				\
> -	spice-gstaudio.c				\
> -	spice-gstaudio.h				\
> -	spice-common.h					\
> -	spice-util.c					\
> -	spice-util-priv.h				\
> -	spice-option.h					\
> -	spice-option.c					\
> -							\
> -	spice-client.c					\
> -	spice-session.c					\
> -	spice-session-priv.h				\
> -	spice-channel.c					\
> -	spice-channel-cache.h				\
> -	spice-channel-priv.h				\
> -	spice-file-transfer-task.c			\
> -	spice-file-transfer-task-priv.h			\
> -	coroutine.h					\
> -	gio-coroutine.c					\
> -	gio-coroutine.h					\
> -							\
> -	channel-base.c					\
> -	channel-webdav.c				\
> -	channel-cursor.c				\
> -	channel-display.c				\
> -	channel-display-gst.c				\
> -	channel-display-priv.h				\
> -	channel-inputs.c				\
> -	channel-main.c					\
> -	channel-playback.c				\
> -	channel-playback-priv.h				\
> -	channel-port.c					\
> -	channel-record.c				\
> -	channel-smartcard.c				\
> -	channel-usbredir.c				\
> -	channel-usbredir-priv.h				\
> -	qmp-port.c					\
> -	qmp-port.h					\
> -	smartcard-manager.c				\
> -	smartcard-manager-priv.h			\
> -	spice-uri.c					\
> -	spice-uri-priv.h				\
> -	usb-device-manager.c				\
> -	usb-device-manager-priv.h			\
> -	usbutil.c					\
> -	usbutil.h					\
> -	$(USB_ACL_HELPER_SRCS)				\
> -	vmcstream.c					\
> -	vmcstream.h					\
> -							\
> -	decode.h					\
> -	decode-glz.c					\
> -	decode-jpeg.c					\
> -	decode-zlib.c					\
> -							\
> -	client_sw_canvas.c	\
> -	client_sw_canvas.h	\
> -							\
> -	spice-glib-main.c				\
> -	$(NULL)
> -
> -nodist_libspice_client_glib_impl_la_SOURCES =3D	\
> -	spice-glib-enums.c			\
> -	spice-marshal.c				\
> -	spice-marshal.h				\
> -	$(NULL)
> -
> -libspice_client_glibincludedir =3D $(includedir)/spice-client-glib-2.0
> -libspice_client_glibinclude_HEADERS =3D	\
> -	spice-audio.h			\
> -	spice-client.h			\
> -	spice-uri.h			\
> -	spice-types.h			\
> -	spice-session.h			\
> -	spice-channel.h			\
> -	spice-util.h			\
> -	spice-option.h			\
> -	spice-version.h			\
> -	channel-cursor.h		\
> -	channel-display.h		\
> -	channel-inputs.h		\
> -	channel-main.h			\
> -	channel-playback.h		\
> -	channel-port.h			\
> -	channel-record.h		\
> -	channel-smartcard.h		\
> -	channel-usbredir.h		\
> -	channel-webdav.h		\
> -	qmp-port.h			\
> -	usb-device-manager.h		\
> -	smartcard-manager.h		\
> -	spice-file-transfer-task.h	\
> -	$(NULL)
> -
> -nodist_libspice_client_glibinclude_HEADERS =3D	\
> -	spice-glib-enums.h			\
> -	$(NULL)
> -
> -if HAVE_PULSE
> -libspice_client_glib_impl_la_SOURCES +=3D	\
> -	spice-pulse.c			\
> -	spice-pulse.h			\
> -	$(NULL)
> -endif
> -
> -if HAVE_BUILTIN_MJPEG
> -libspice_client_glib_impl_la_SOURCES +=3D	\
> -	channel-display-mjpeg.c		\
> -	$(NULL)
> -endif
> -
> -if WITH_PHODAV
> -libspice_client_glib_impl_la_SOURCES +=3D	\
> -	giopipe.c			\
> -	giopipe.h			\
> -	$(NULL)
> -endif
> -
> -if WITH_UCONTEXT
> -libspice_client_glib_impl_la_SOURCES +=3D continuation.h continuation.c =
coroutine_ucontext.c
> -endif
> -
> -if WITH_WINFIBER
> -libspice_client_glib_impl_la_SOURCES +=3D coroutine_winfibers.c
> -endif
> -
> -if WITH_GTHREAD
> -libspice_client_glib_impl_la_SOURCES +=3D coroutine_gthread.c
> -libspice_client_glib_impl_la_LIBADD +=3D $(GTHREAD_LIBS)
> -endif
> -
> -
> -WIN_USB_FILES=3D \
> -	win-usb-dev.h			\
> -	win-usb-dev.c			\
> -	usbdk_api.h			\
> -	usbdk_api.c			\
> -	$(NULL)
> -
> -if OS_WIN32
> -if WITH_USBREDIR
> -libspice_client_glib_impl_la_SOURCES +=3D \
> -	$(WIN_USB_FILES)
> -endif
> -libspice_client_glib_impl_la_LIBADD +=3D -lws2_32 -lgdi32
> -endif
> -
> -if WITH_POLKIT
> -spice_client_glib_usb_acl_helper_SOURCES =3D	\
> -	spice-client-glib-usb-acl-helper.c	\
> -	$(NULL)
> -
> -spice_client_glib_usb_acl_helper_LDADD =3D	\
> -	$(GLIB2_LIBS)				\
> -	$(GIO_LIBS)				\
> -	$(POLKIT_LIBS)				\
> -	$(ACL_LIBS)				\
> -	$(PIE_LDFLAGS)				\
> -	$(NULL)
> -
> -spice_client_glib_usb_acl_helper_CPPFLAGS =3D	\
> -	$(SPICE_CFLAGS)				\
> -	$(GLIB2_CFLAGS)				\
> -	$(GIO_CFLAGS)				\
> -	$(POLKIT_CFLAGS)			\
> -	$(PIE_CFLAGS)				\
> -	$(NULL)
> -
> -install-data-hook:
> -	-chown root $(DESTDIR)$(acldir)/spice-client-glib-usb-acl-helper
> -	-chmod u+s  $(DESTDIR)$(acldir)/spice-client-glib-usb-acl-helper
> -
> -endif
> -
> -
> -$(libspice_client_glib_impl_la_SOURCES): spice-glib-enums.h spice-marsha=
l.h
> -
> -if WITH_GTK
> -$(libspice_client_gtk_3_0_la_SOURCES): spice-glib-enums.h spice-widget-e=
nums.h
> -endif
> -
> -spice-marshal.c: spice-marshal.h
> -spice-glib-enums.c: spice-glib-enums.h
> -spice-widget-enums.c: spice-widget-enums.h
> -
> -spice-marshal.c: spice-marshal.txt
> -	$(AM_V_GEN)echo "#include \"config.h\"" > $@ && \
> -		echo "#include \"spice-marshal.h\"" > $@ && \
> -		glib-genmarshal --body $< >> $@ || (rm -f $@ && exit 1)
> -
> -spice-marshal.h: spice-marshal.txt
> -	$(AM_V_GEN)glib-genmarshal --header $< > $@ || (rm -f $@ && exit 1)
> -
> -spice-glib-enums.c: spice-channel.h channel-inputs.h spice-session.h
> -	$(AM_V_GEN)glib-mkenums --fhead "#include \"config.h\"\n\n" \
> -			--fhead "#include <glib-object.h>\n" \
> -			--fhead "#include \"spice-glib-enums.h\"\n\n" \
> -			--fprod "\n#include \"spice-session.h\"\n" \
> -			--fprod "\n#include \"spice-channel.h\"\n" \
> -			--fprod "\n#include \"channel-inputs.h\"\n" \
> -			--vhead "static const G@Type@Value _@enum_name@_values[] =3D {" \
> -			--vprod "  { @VALUENAME@, \"@VALUENAME@\", \"@valuenick@\" }," \
> -			--vtail "  { 0, NULL, NULL }\n};\n\n" \
> -			--vtail "GType\n@enum_name@_get_type (void)\n{\n" \
> -			--vtail "  static GType type =3D 0;\n" \
> -			--vtail "  static volatile gsize type_volatile =3D 0;\n\n" \
> -			--vtail "  if (g_once_init_enter(&type_volatile)) {\n" \
> -			--vtail "    type =3D g_@type@_register_static (\"@EnumName@\", _@enu=
m_name@_values);\n" \
> -			--vtail "    g_once_init_leave(&type_volatile, type);\n" \
> -			--vtail "  }\n\n" \
> -			--vtail "  return type;\n}\n\n" \
> -		$^ > $@
> -
> -spice-glib-enums.h: spice-channel.h channel-inputs.h spice-session.h
> -	$(AM_V_GEN)glib-mkenums --fhead "#ifndef SPICE_GLIB_ENUMS_H\n" \
> -			--fhead "#define SPICE_GLIB_ENUMS_H\n\n" \
> -			--fhead "G_BEGIN_DECLS\n\n" \
> -			--ftail "G_END_DECLS\n\n" \
> -			--ftail "#endif /* SPICE_CHANNEL_ENUMS_H */\n" \
> -			--eprod "#define SPICE_TYPE_@ENUMSHORT@ @enum_name@_get_type()\n" \
> -			--eprod "GType @enum_name@_get_type (void);\n" \
> -		$^ >  $@
> -
> -spice-widget-enums.c: spice-widget.h
> -	$(AM_V_GEN)glib-mkenums --fhead "#include \"config.h\"\n\n" \
> -			--fhead "#include <glib-object.h>\n" \
> -			--fhead "#include \"spice-widget-enums.h\"\n\n" \
> -			--fprod "\n#include \"spice-widget.h\"\n" \
> -			--vhead "static const G@Type@Value _@enum_name@_values[] =3D {" \
> -			--vprod "  { @VALUENAME@, \"@VALUENAME@\", \"@valuenick@\" }," \
> -			--vtail "  { 0, NULL, NULL }\n};\n\n" \
> -			--vtail "GType\n@enum_name@_get_type (void)\n{\n" \
> -			--vtail "  static GType type =3D 0;\n" \
> -			--vtail "  static volatile gsize type_volatile =3D 0;\n\n" \
> -			--vtail "  if (g_once_init_enter(&type_volatile)) {\n" \
> -			--vtail "    type =3D g_@type@_register_static (\"@EnumName@\", _@enu=
m_name@_values);\n" \
> -			--vtail "    g_once_init_leave(&type_volatile, type);\n" \
> -			--vtail "  }\n\n" \
> -			--vtail "  return type;\n}\n\n" \
> -		$< > $@
> -
> -spice-widget-enums.h: spice-widget.h
> -	$(AM_V_GEN)glib-mkenums --fhead "#ifndef SPICE_WIDGET_ENUMS_H\n" \
> -			--fhead "#define SPICE_WIDGET_ENUMS_H\n\n" \
> -			--fhead "G_BEGIN_DECLS\n\n" \
> -			--ftail "G_END_DECLS\n\n" \
> -			--ftail "#endif /* SPICE_WIDGET_ENUMS_H */\n" \
> -			--eprod "#define SPICE_TYPE_@ENUMSHORT@ @enum_name@_get_type()\n" \
> -			--eprod "GType @enum_name@_get_type (void);\n" \
> -		$< >  $@
> -
> -
> -vncdisplaykeymap.c: $(KEYMAPS)
> -$(KEYMAPS): $(KEYMAP_GEN) $(KEYMAP_CSV)
> -
> -vncdisplaykeymap_xorgevdev2xtkbd.h:
> -	$(AM_V_GEN)$(PYTHON) $(KEYMAP_GEN) --lang glib2 --varname keymap_xorgev=
dev2xtkbd code-map $(KEYMAP_CSV) xorgevdev xtkbd > $@ || rm $@
> -
> -vncdisplaykeymap_xorgkbd2xtkbd.h:
> -	$(AM_V_GEN)$(PYTHON) $(KEYMAP_GEN) --lang glib2 --varname keymap_xorgkb=
d2xtkbd code-map $(KEYMAP_CSV) xorgkbd xtkbd > $@ || rm $@
> -
> -vncdisplaykeymap_xorgxquartz2xtkbd.h:
> -	$(AM_V_GEN)$(PYTHON) $(KEYMAP_GEN) --lang glib2 --varname keymap_xorgxq=
uartz2xtkbd code-map $(KEYMAP_CSV) xorgxquartz xtkbd > $@ || rm $@
> -
> -vncdisplaykeymap_xorgxwin2xtkbd.h:
> -	$(AM_V_GEN)$(PYTHON) $(KEYMAP_GEN) --lang glib2 --varname keymap_xorgxw=
in2xtkbd code-map $(KEYMAP_CSV) xorgxwin xtkbd > $@ || rm $@
> -
> -vncdisplaykeymap_osx2xtkbd.h:
> -	$(AM_V_GEN)$(PYTHON) $(KEYMAP_GEN) --lang glib2 --varname keymap_osx2xt=
kbd code-map $(KEYMAP_CSV) osx xtkbd > $@ || rm $@
> -
> -vncdisplaykeymap_win322xtkbd.h:
> -	$(AM_V_GEN)$(PYTHON) $(KEYMAP_GEN) --lang glib2 --varname keymap_win322=
xtkbd code-map $(KEYMAP_CSV) win32 xtkbd > $@ || rm $@
> -
> -vncdisplaykeymap_x112xtkbd.h:
> -	$(AM_V_GEN)$(PYTHON) $(KEYMAP_GEN) --lang glib2 --varname keymap_x112xt=
kbd code-map $(KEYMAP_CSV) x11 xtkbd > $@ || rm $@
> -
> --include $(INTROSPECTION_MAKEFILE)
> -
> -if G_IR_SCANNER_SYMBOL_PREFIX
> -PREFIX_ARGS =3D --symbol-prefix=3Dspice --identifier-prefix=3DSpice
> -else
> -PREFIX_ARGS =3D --strip-prefix=3DSpice
> -endif
> -
> -INTROSPECTION_GIRS =3D
> -INTROSPECTION_SCANNER_ARGS =3D --warn-all --accept-unprefixed --add-incl=
ude-path=3D$(builddir) $(PREFIX_ARGS)
> -INTROSPECTION_COMPILER_ARGS =3D --includedir=3D$(builddir)
> -
> -if HAVE_INTROSPECTION
> -glib_introspection_files =3D				\
> -	$(libspice_client_glibinclude_HEADERS)		\
> -	$(nodist_libspice_client_glibinclude_HEADERS)	\
> -	spice-audio.c					\
> -	spice-client.c					\
> -	spice-session.c					\
> -	spice-channel.c					\
> -	spice-glib-enums.c				\
> -	spice-option.c					\
> -	spice-util.c					\
> -	channel-webdav.c				\
> -	channel-cursor.c				\
> -	channel-display.c				\
> -	channel-inputs.c				\
> -	channel-main.c					\
> -	channel-playback.c				\
> -	channel-port.c					\
> -	channel-record.c				\
> -	channel-smartcard.c				\
> -	channel-usbredir.c				\
> -	qmp-port.c					\
> -	smartcard-manager.c				\
> -	usb-device-manager.c				\
> -	$(NULL)
> -
> -gtk_introspection_files =3D				\
> -	$(libspice_client_gtkinclude_HEADERS)		\
> -	$(nodist_libspice_client_gtkinclude_HEADERS)	\
> -	spice-gtk-session.c				\
> -	spice-widget.c					\
> -	spice-grabsequence.c				\
> -	usb-device-widget.c				\
> -	$(NULL)
> -
> -SpiceClientGLib-2.0.gir: libspice-client-glib-2.0.la
> -SpiceClientGLib_2_0_gir_INCLUDES =3D GObject-2.0 Gio-2.0 GstBase-1.0
> -SpiceClientGLib_2_0_gir_CFLAGS =3D $(SPICE_COMMON_CPPFLAGS)
> -SpiceClientGLib_2_0_gir_LIBS =3D libspice-client-glib-2.0.la
> -SpiceClientGLib_2_0_gir_FILES =3D $(glib_introspection_files)
> -SpiceClientGLib_2_0_gir_EXPORT_PACKAGES =3D spice-client-glib-2.0
> -SpiceClientGLib_2_0_gir_SCANNERFLAGS =3D --c-include=3D"spice-client.h"
> -INTROSPECTION_GIRS +=3D SpiceClientGLib-2.0.gir
> -
> -if WITH_GTK
> -SpiceClientGtk-3.0.gir: libspice-client-gtk-3.0.la SpiceClientGLib-2.0.g=
ir
> -SpiceClientGtk_3_0_gir_INCLUDES =3D GObject-2.0 Gtk-3.0 SpiceClientGLib-=
2.0
> -SpiceClientGtk_3_0_gir_CFLAGS =3D $(SPICE_COMMON_CPPFLAGS)
> -SpiceClientGtk_3_0_gir_LIBS =3D libspice-client-gtk-3.0.la libspice-clie=
nt-glib-2.0.la
> -SpiceClientGtk_3_0_gir_FILES =3D $(gtk_introspection_files)
> -SpiceClientGtk_3_0_gir_EXPORT_PACKAGES =3D spice-client-gtk-3.0
> -SpiceClientGtk_3_0_gir_SCANNERFLAGS =3D --c-include=3D"spice-widget.h"
> -INTROSPECTION_GIRS +=3D SpiceClientGtk-3.0.gir
> -endif
> -
> -girdir =3D $(datadir)/gir-1.0
> -gir_DATA =3D $(INTROSPECTION_GIRS)
> -
> -typelibsdir =3D $(libdir)/girepository-1.0
> -typelibs_DATA =3D $(INTROSPECTION_GIRS:.gir=3D.typelib)
> -
> -CLEANFILES +=3D $(gir_DATA) $(typelibs_DATA)
> -endif
> -
> -update-map-file: $(libspice_client_gtkinclude_HEADERS) $(nodist_libspice=
_client_gtkinclude_HEADERS) $(libspice_client_glibinclude_HEADERS) $(nodist=
_libspice_client_glibinclude_HEADERS)
> -	( echo "SPICEGTK_1 {" ; \
> -	  echo "global:" ; \
> -	  ctags -f - -I G_GNUC_CONST --c-kinds=3Dp $^ | awk '/^spice_/ { print =
$$1 ";" }' | sort ; \
> -	  echo "local:" ;  \
> -	  echo "*;" ; \
> -	  echo "};" ) > $(srcdir)/map-file
> -
> -update-glib-sym-file: $(libspice_client_glibinclude_HEADERS) $(nodist_li=
bspice_client_glibinclude_HEADERS)
> -	( ctags -f - -I G_GNUC_CONST --c-kinds=3Dp $^ | awk '/^spice_/ { print =
$$1 }' | sort ; \
> -	) > $(srcdir)/spice-glib-sym-file
> -
> -update-gtk-sym-file: $(libspice_client_gtkinclude_HEADERS) $(nodist_libs=
pice_client_gtkinclude_HEADERS)
> -	( ctags -f - -I G_GNUC_CONST --c-kinds=3Dp $^ | awk '/^spice_/ { print =
$$1 }' | sort ; \
> -	) > $(srcdir)/spice-gtk-sym-file
> -
> -update-symbol-files: update-map-file update-glib-sym-file update-gtk-sym=
-file
> -
> --include $(top_srcdir)/git.mk
> diff --git a/tests/Makefile.am b/tests/Makefile.am
> deleted file mode 100644
> index 1bb0a259..00000000
> --- a/tests/Makefile.am
> +++ /dev/null
> @@ -1,49 +0,0 @@
> -NULL =3D
> -
> -EXTRA_DIST =3D meson.build
> -
> -noinst_PROGRAMS =3D
> -TESTS =3D test-coroutine				\
> -	test-util				\
> -	test-session				\
> -	test-spice-uri				\
> -	test-file-transfer			\
> -	$(NULL)
> -
> -if WITH_PHODAV
> -TESTS +=3D test-pipe
> -endif
> -
> -if WITH_POLKIT
> -TESTS +=3D test-usb-acl-helper
> -noinst_PROGRAMS +=3D test-mock-acl-helper
> -endif
> -
> -noinst_PROGRAMS +=3D $(TESTS)
> -
> -AM_CPPFLAGS =3D					\
> -	$(COMMON_CFLAGS)			\
> -	$(GIO_CFLAGS)				\
> -	$(SMARTCARD_CFLAGS)			\
> -	-I$(top_srcdir)/src			\
> -	-I$(top_builddir)/src			\
> -	-DG_LOG_DOMAIN=3D\"GSpice\"		\
> -	$(NULL)
> -
> -AM_LDFLAGS =3D $(GIO_LIBS)
> -
> -LDADD =3D							\
> -	$(top_builddir)/src/libspice-client-glib-impl.la\
> -	$(NULL)
> -
> -test_util_SOURCES =3D util.c
> -test_coroutine_SOURCES =3D coroutine.c
> -test_session_SOURCES =3D session.c
> -test_pipe_SOURCES =3D pipe.c
> -test_spice_uri_SOURCES =3D uri.c
> -test_file_transfer_SOURCES =3D file-transfer.c
> -test_usb_acl_helper_SOURCES =3D usb-acl-helper.c
> -test_usb_acl_helper_CFLAGS =3D -DTESTDIR=3D\"$(abs_builddir)\"
> -test_mock_acl_helper_SOURCES =3D mock-acl-helper.c
> -
> --include $(top_srcdir)/git.mk
> diff --git a/tools/Makefile.am b/tools/Makefile.am
> deleted file mode 100644
> index 18786aeb..00000000
> --- a/tools/Makefile.am
> +++ /dev/null
> @@ -1,77 +0,0 @@
> -bin_PROGRAMS =3D spicy-stats spicy-screenshot
> -
> -EXTRA_DIST =3D meson.build
> -
> -TOOLS_CPPFLAGS =3D			\
> -	-DSPICE_COMPILATION		\
> -	-I$(top_builddir)/src		\
> -	-I$(top_srcdir)			\
> -	-I$(top_srcdir)/src		\
> -	$(COMMON_CFLAGS)		\
> -	$(GLIB2_CFLAGS)			\
> -	$(GIO_CFLAGS)			\
> -	$(SMARTCARD_CFLAGS)		\
> -	$(SPICE_CFLAGS)			\
> -	$(NULL)
> -
> -if WITH_GTK
> -bin_PROGRAMS +=3D spicy
> -TOOLS_CPPFLAGS +=3D $(GTK_CFLAGS)
> -endif
> -
> -spicy_SOURCES =3D				\
> -	spicy.c				\
> -	spicy-connect.h 		\
> -	spicy-connect.c 		\
> -	spice-cmdline.h			\
> -	spice-cmdline.c			\
> -	$(NULL)
> -
> -spicy_LDADD =3D				\
> -	$(top_builddir)/src/libspice-client-gtk-3.0.la	\
> -	$(top_builddir)/src/libspice-client-glib-2.0.la	\
> -	$(GTK_LIBS) \
> -	$(GSTAUDIO_LIBS) \
> -	$(GSTVIDEO_LIBS) \
> -	$(NULL)
> -
> -# FIXME: GtkAction and lots of GtkUIManager APIs are deprecated
> -spicy_CPPFLAGS =3D			\
> -	$(TOOLS_CPPFLAGS)		\
> -	$(GSTAUDIO_CFLAGS)		\
> -	$(GSTVIDEO_CFLAGS)		\
> -	-DSPICE_DISABLE_DEPRECATED	\
> -	-Wno-deprecated-declarations	\
> -	$(NULL)
> -
> -spicy_screenshot_SOURCES =3D		\
> -	spicy-screenshot.c		\
> -	spice-cmdline.h			\
> -	spice-cmdline.c			\
> -	$(NULL)
> -
> -spicy_screenshot_LDADD =3D		\
> -	$(top_builddir)/src/libspice-client-glib-2.0.la	\
> -	$(GOBJECT2_LIBS)		\
> -	$(NULL)
> -
> -spicy_screenshot_CPPFLAGS =3D		\
> -	$(TOOLS_CPPFLAGS)		\
> -	$(NULL)
> -
> -spicy_stats_SOURCES =3D			\
> -	spicy-stats.c			\
> -	spice-cmdline.h			\
> -	spice-cmdline.c			\
> -	$(NULL)
> -
> -spicy_stats_LDADD =3D			\
> -	$(top_builddir)/src/libspice-client-glib-2.0.la	\
> -	$(GOBJECT2_LIBS) \
> -	$(NULL)
> -
> -spicy_stats_CPPFLAGS =3D			\
> -	$(TOOLS_CPPFLAGS)		\
> -	$(NULL)
> -
> --include $(top_srcdir)/git.mk
> diff --git a/vapi/Makefile.am b/vapi/Makefile.am
> deleted file mode 100644
> index 3c6234d1..00000000
> --- a/vapi/Makefile.am
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -NULL =3D
> -CLEANFILES =3D
> -
> -vapidir =3D $(datadir)/vala/vapi
> -vapi_DATA =3D						\
> -	spice-client-glib-2.0.vapi			\
> -	$(NULL)
> -dist_vapi_DATA =3D					\
> -	spice-client-glib-2.0.deps			\
> -	$(NULL)
> -
> -if WITH_GTK
> -vapi_DATA +=3D spice-client-gtk-3.0.vapi
> -dist_vapi_DATA +=3D spice-client-gtk-3.0.deps
> -endif
> -
> -EXTRA_DIST =3D						\
> -	meson.build					\
> -	spice-client-gtk-3.0.deps			\
> -	SpiceClientGLib-2.0.metadata			\
> -	$(NULL)
> -
> -CLEANFILES +=3D $(vapi_DATA)
> -
> -spice-client-glib-2.0.vapi: $(top_builddir)/src/SpiceClientGLib-2.0.gir =
SpiceClientGLib-2.0.metadata
> -	$(AM_V_GEN)$(VAPIGEN) -q		\
> -		--metadatadir=3D$(srcdir)		\
> -		--library spice-client-glib-2.0	\
> -		--pkg gio-2.0			\
> -		--pkg gstreamer-1.0		\
> -		$<
> -
> -spice-client-gtk-3.0.vapi: $(top_builddir)/src/SpiceClientGtk-3.0.gir sp=
ice-client-glib-2.0.vapi
> -	$(AM_V_GEN)$(VAPIGEN) -q					\
> -		--vapidir=3D$(builddir)					\
> -		--girdir=3D$(top_builddir)/src				\
> -		--pkg spice-client-glib-2.0				\
> -		--pkg gstreamer-1.0					\
> -		--pkg gtk+-3.0						\
> -		--library spice-client-gtk-3.0				\
> -		$<
> -
> --include $(top_srcdir)/git.mk
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ratz3c4itcsrmnwd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0kY4cACgkQl9kSPeN6
SE9eig//Z/ABOIjsOpM6f1e1nzedRLpcWuSQrNEkjESsdzORJSOtcWu2DPMqMyv+
geeyuOwyDVRwDcfPK/26KZrZq0IV4OAofRnBlgoLbwe0XjJDhluJ8pdMQBwlku6/
fKdrBlx5X6Z8zx54iNh9tnkMbmI3gYNqIinfz1Vi66LH/x4ecVxaGvrPxOParO3l
gQDwe7fMLxJuDFOuPzhTfS9v/9etbf+XqrNDbG8vMLE8jLf376sDSI3MGMt53XMd
xdm0mmfmEiNAeUsDK03XaH+gtdI3lx9HE1cvIf54VO3NVkaJELiAuuCmb6bPIoyL
bSijaGOe2NkxWp0zUfK92LEKWcuhXAjCu4w/rNIeyhzhr+c2yuOUokwZJzZZdnBL
dwYhF/i1p5xpq6/B7tehreoQPNgTtX8kJ3Lzekqa/CLFlA38RSaULRlkb93cENcu
n0pTH8t24ZC868OBN0W9LCGNw6Teh0Vp341QWNvG4JtCxXIm2oXpGGgCDM6SfF7O
PA251KNjaSVvK5vrz2sV3WOOEI1oLIMrqGF93q0/y0FX8J7Ln7zBCz6/yOzWR8cL
RLdI/3po+V2upvmDz5Hz3UGLwxG8YGYYYkT7v2Bn45xeh1vZkws7ot2RN3mRAXPR
GWvwo2sqyLnMI1mBmhngvYGpRa4JW5andWXYy2JU0ATbaC1TLY0=
=VwwQ
-----END PGP SIGNATURE-----

--ratz3c4itcsrmnwd--

--===============0898769780==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0898769780==--
