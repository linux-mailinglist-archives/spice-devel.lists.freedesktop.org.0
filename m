Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFC3793703
	for <lists+spice-devel@lfdr.de>; Wed,  6 Sep 2023 10:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A1C10E5A0;
	Wed,  6 Sep 2023 08:17:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F3110E120
 for <spice-devel@lists.freedesktop.org>; Wed,  6 Sep 2023 07:14:42 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id
 2adb3069b0e04-5007c8308c3so5336620e87.0
 for <spice-devel@lists.freedesktop.org>; Wed, 06 Sep 2023 00:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693984480; x=1694589280; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=uQy/esOHTFX/hvasORpLerT7pZdqn+HeVFUZup71rN0=;
 b=V04Zyf4yDtdE2is5u5051jL6uxD4TJU+FelO17nJ9nbuhL8N615i0pjXxDQjAPiJ9K
 M2ElXAaQh6mgW1gMQKsFhbNdraS6d8Blas2QlCbTkaCedVfaF7EMSBtJn3YowJkUzopZ
 /e3Xq+myF2IZwgjoCmScXlzFeKFBXtf5OJHpyka/2tufrVO4LOYfJR34bqstvJQXeiQE
 +n4hMCmFkmt+YnujwhdSaLO+lxSVdXk513g2NpePta8xz2hPrbRQpNRhyPZTsuGO8EGs
 Pz6zH2sKGwinczIjQA9FKjmhMeMivQcn7VP3PeZbRcJLGguj+oLcEjTdAmKY51dkoX5O
 mv8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693984480; x=1694589280;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=uQy/esOHTFX/hvasORpLerT7pZdqn+HeVFUZup71rN0=;
 b=hmU5uvjnhDlyShXSDEKGptNjMExmVMsYdTkhrYrn6x7+v/fTrLRDGN7a1WaZ7me1eo
 kWTE3Ou5wBpCFvkeNAWdWqfyLvSJZ1JaWi4YglZct6tQW6TpUM3N1/EYn3LNZqtJGJSk
 /GizIu4CQoYSaolUiM2k7fN5TLyr0ZiTnyCXJkCEKBNUUg7cBYwvJsykNjTvNhsXTVY0
 L6TKSb0SdSdkaoMMXZGg+d0hCeL8b0ECM8wOszfzTqv6ruJhuIgZrtJpgj4Lt3rSDtrW
 uLRzUKK/+ozZejXm+jsISlNeTTqqwRYYgmO4X6Uwho5iih0QNbiNyoJ87upjV49GF/Ir
 BChA==
X-Gm-Message-State: AOJu0YzYjOjNQ8xPEUkcwfyW63Gpvg9kyLK7XEBmbsJJVIvxO/B3gj1R
 rSrYrwsbuQXlmVVH633RHWZpnQuFwMcRHHUdAejb6cUpCDg=
X-Google-Smtp-Source: AGHT+IEO3VlpCRJZfvoO+BlXu4xpclKBivWiBCkHFClwac2h2eCSUps7qNLoiGoX68LCsYoFGWDZ+++7A+lLKo8ZnG0=
X-Received: by 2002:a05:6512:219:b0:500:acf1:b42f with SMTP id
 a25-20020a056512021900b00500acf1b42fmr1512185lfo.53.1693984479410; Wed, 06
 Sep 2023 00:14:39 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Tomasz_K=C5=82oczko?= <kloczko.tomasz@gmail.com>
Date: Wed, 6 Sep 2023 08:14:03 +0100
Message-ID: <CABB28CxNKTF-kOoBYLVnwX3k9KQ7=Qauu3vOgPrx5iOyEafOMw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000267ed40604ab7fb2"
X-Mailman-Approved-At: Wed, 06 Sep 2023 08:17:17 +0000
Subject: [Spice-devel] 0.42: build fails
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000267ed40604ab7fb2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI,

Looks like it is some issue with 0.42.
Build fails on linking libspice-client-glib with missing vevent_*  symbols.
I'm configuring source code with:

%meson \
        -D alignment-checks=3Dfalse \
        -D builtin-mjpeg=3Dfalse \
        -D gtk=3Denabled \
        -D introspection=3Denabled \
        -D lz4=3Denabled \
        -D polkit=3Denabled \
        -D usb-acl-helper-dir=3D%{_libexecdir}/spice-gtk-%{_arch}/ \
        -D usb-ids-path=3D%{_datadir}/hwdata/usb.ids \
        -D usbredir=3Denabled \
        -D vapi=3Denabled \
        -D webdav=3Denabled \
        %{nil}

Here is meso output

+ /usr/bin/meson setup --buildtype=3Dplain --prefix=3D/usr --libdir=3D/usr/=
lib64
--libexecdir=3D/usr/libexec --bindir=3D/usr/bin --sbindir=3D/usr/sbin
--includedir=3D/usr/include --datadir=3D/usr/share --mandir=3D/usr/share/ma=
n
--infodir=3D/usr/share/info --localedir=3D/usr/share/locale --sysconfdir=3D=
/etc
--localstatedir=3D/var --sharedstatedir=3D/var/lib --wrap-mode=3Dnodownload
--auto-features=3Denabled . x86_64-redhat-linux-gnu -D alignment-checks=3Df=
alse
-D builtin-mjpeg=3Dfalse -D gtk=3Denabled -D introspection=3Denabled -D
lz4=3Denabled -D polkit=3Denabled -D
usb-acl-helper-dir=3D/usr/libexec/spice-gtk-x86_64/ -D
usb-ids-path=3D/usr/share/hwdata/usb.ids -D usbredir=3Denabled -D vapi=3Den=
abled
-D webdav=3Denabled
The Meson build system
Version: 1.2.1
Source dir: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42
Build dir:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu
Build type: native build
Project name: spice-gtk
Project version: 0.42
C compiler for the host machine: /usr/bin/gcc (gcc 13.2.1 "gcc (GCC) 13.2.1
20230728 (Red Hat 13.2.1-1)")
C linker for the host machine: /usr/bin/gcc ld.bfd 2.41-5
Host machine cpu family: x86_64
Host machine cpu: x86_64
Library m found: YES

Executing subproject spice-common

spice-common| Project name: spice-common
spice-common| Project version: undefined
spice-common| C compiler for the host machine: /usr/bin/gcc (gcc 13.2.1
"gcc (GCC) 13.2.1 20230728 (Red Hat 13.2.1-1)")
spice-common| C linker for the host machine: /usr/bin/gcc ld.bfd 2.41-5
spice-common| Has header "alloca.h" : YES
spice-common| Has header "arpa/inet.h" : YES
spice-common| Has header "dlfcn.h" : YES
spice-common| Has header "inttypes.h" : YES
spice-common| Has header "netinet/in.h" : YES
spice-common| Has header "stdlib.h" : YES
spice-common| Has header "sys/socket.h" : YES
spice-common| Has header "sys/stat.h" : YES
spice-common| Has header "sys/types.h" : YES
spice-common| Has header "unistd.h" : YES
spice-common| Has header "regex.h" : YES
spice-common| Has header "sys/mman.h" : YES
spice-common| Checking for function "alloca" : YES
spice-common| Checking for function "sigaction" : YES
spice-common| Checking for function "drand48" : YES
spice-common| Checking for function "setlinebuf" : YES
spice-common| Library m found: YES
spice-common| Found pkg-config: /usr/bin/pkg-config (1.9.5)
spice-common| Run-time dependency spice-protocol found: YES 0.14.4
spice-common| Run-time dependency glib-2.0 found: YES 2.77.3
spice-common| Run-time dependency pixman-1 found: YES 0.42.2
spice-common| Run-time dependency openssl found: YES 3.0.9-dev
spice-common| Run-time dependency gio-2.0 found: YES 2.77.3
spice-common| Run-time dependency opus found: YES 1.4
spice-common| Program python3 found: YES (/usr/bin/python3)
spice-common| Message: Checking for python module six
spice-common| WARNING: You should add the boolean check kwarg to the
run_command call.
spice-common| It currently defaults to false,
spice-common| but it will default to true in future releases of meson.
spice-common| See also: https://github.com/mesonbuild/meson/issues/9300
spice-common| Message: Checking for python module pyparsing
spice-common| Run-time dependency libcacard found: YES 2.8.1
spice-common| Compiler for C supports arguments -DG_LOG_DOMAIN=3D"Spice": Y=
ES
spice-common| Compiler for C supports arguments -Wno-unused-parameter: YES
spice-common| Compiler for C supports arguments
-DGLIB_VERSION_MIN_REQUIRED=3DGLIB_VERSION_2_38: YES
spice-common| Compiler for C supports arguments
-DGLIB_VERSION_MAX_ALLOWED=3DGLIB_VERSION_2_38: YES
spice-common| Run-time dependency gdk-pixbuf-2.0 found: YES 2.42.10
spice-common| Program asciidoc found: NO
spice-common| Configuring config.h using configuration
spice-common| Build targets in project: 14
spice-common| Subproject spice-common finished.


Executing subproject keycodemapdb

keycodemapdb| Project name: keycodemapdb
keycodemapdb| Project version: undefined
keycodemapdb| Program tools/keymap-gen found: YES
(/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/subprojects/keycodemapdb/tool=
s/keymap-gen)
keycodemapdb| Build targets in project: 14
keycodemapdb| Subproject keycodemapdb finished.

Program tools/keymap-gen found: YES (overridden)
Has header "termios.h" : YES
Has header "X11/XKBlib.h" : YES
Has header "sys/socket.h" : YES (cached)
Has header "sys/types.h" : YES (cached)
Has header "netinet/in.h" : YES (cached)
Has header "arpa/inet.h" : YES (cached)
Has header "valgrind/valgrind.h" : NO
Has header "sys/disk.h" : NO
Has header "epoxy/egl.h" : YES
Checking for function "clearenv" : YES
Checking for function "strtok_r" : YES
Dependency spice-protocol found: YES 0.14.4 (cached)
Dependency glib-2.0 found: YES 2.77.3 (cached)
Dependency gio-2.0 found: YES 2.77.3 (cached)
Run-time dependency gobject-2.0 found: YES 2.77.3
Dependency pixman-1 found: YES 0.42.2 (cached)
Dependency openssl found: YES 3.0.9-dev (cached)
Run-time dependency libjpeg found: YES 3.0.0
Run-time dependency zlib found: YES 1.2.13.zlib-ng
Run-time dependency json-glib-1.0 found: YES 1.6.6
Run-time dependency gio-unix-2.0 found: YES 2.77.3
Dependency opus found: YES 1.4 (cached)
Run-time dependency gtk+-3.0 found: YES 3.24.38
Run-time dependency epoxy found: YES 1.5.10
Run-time dependency x11 found: YES 1.8.6
Run-time dependency libva-x11 found: YES 1.19.0
Has header "gtk-3.0/gdk/gdkwayland.h" : YES
Run-time dependency wayland-protocols found: YES 1.32
Found pkg-config: /usr/bin/pkg-config (1.9.5)
Build-time dependency wayland-scanner found: YES 1.22.0
Program /usr/bin/wayland-scanner found: YES (/usr/bin/wayland-scanner)
Run-time dependency wayland-server found: YES 1.22.0
Run-time dependency wayland-cursor found: YES 1.22.0
Run-time dependency wayland-client found: YES 1.22.0
Run-time dependency libphodav-3.0 found: YES 3.0
Run-time dependency libsoup-3.0 found: YES 3.4.2
Run-time dependency gstreamer-1.0 found: YES 1.22.5
Run-time dependency gstreamer-base-1.0 found: YES 1.22.5
Run-time dependency gstreamer-app-1.0 found: YES 1.22.5
Run-time dependency gstreamer-audio-1.0 found: YES 1.22.5
Run-time dependency gstreamer-video-1.0 found: YES 1.22.5
Run-time dependency libusbredirparser-0.5 found: YES 0.13.0
Run-time dependency libusbredirhost found: YES 0.13.0
Run-time dependency libusb-1.0 found: YES 1.0.26
Run-time dependency libcap-ng found: YES 0.8.3
Run-time dependency polkit-gobject-1 found: YES 123
Checking for function "acl_get_file" : NO
Library acl found: YES
Checking for function "acl_get_file" with dependency -lacl: YES
Dependency gio-unix-2.0 found: YES 2.77.3 (cached)
Checking for function "makecontext" : YES
Checking for function "swapcontext" : YES
Checking for function "getcontext" : YES
Run-time dependency gobject-introspection-1.0 found: YES 1.76.1
Run-time dependency vapigen found: YES 0.56.13
Run-time dependency liblz4 found: YES 1.9.4
Run-time dependency libsasl2 found: YES 2.1.29
Dependency libcacard found: YES 2.8.1 (cached)
Compiler for C supports arguments -DHAVE_CONFIG_H: YES
Compiler for C supports arguments -DSPICE_COMPILATION: YES
Compiler for C supports arguments -DG_LOG_DOMAIN=3D"GSpice": YES
Compiler for C supports arguments -Wno-sign-compare: YES
Compiler for C supports arguments -Wno-unused-parameter: YES (cached)
Compiler for C supports arguments -Wno-cast-function-type: YES
Compiler for C supports arguments
-DGLIB_VERSION_MIN_REQUIRED=3DGLIB_VERSION_2_52: YES
Compiler for C supports arguments
-DGLIB_VERSION_MAX_ALLOWED=3DGLIB_VERSION_2_52: YES
Compiler for C supports arguments
-DGDK_VERSION_MIN_REQUIRED=3DGDK_VERSION_3_22: YES
Compiler for C supports arguments
-DGDK_VERSION_MAX_ALLOWED=3DGDK_VERSION_3_22: YES
Configuring config.h using configuration
src/meson.build:27: WARNING: Project targets '>=3D 0.56' but uses feature
introduced in '0.58.0': str.replace.
Configuring spice-version.h using configuration
Program glib-genmarshal found: YES (/usr/bin/glib-genmarshal)
Program glib-mkenums found: YES (/usr/bin/glib-mkenums)
Program glib-mkenums found: YES (/usr/bin/glib-mkenums)
Compiler for C supports link arguments
-Wl,--version-script=3D/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/src/tes=
t-map-file:
YES
Dependency gobject-introspection-1.0 found: YES 1.76.1 (cached)
Dependency gobject-introspection-1.0 found: YES 1.76.1 (cached)
Program g-ir-scanner found: YES (/usr/bin/g-ir-scanner)
Dependency gobject-introspection-1.0 found: YES 1.76.1 (cached)
Program g-ir-compiler found: YES (/usr/bin/g-ir-compiler)
Program glib-mkenums found: YES (/usr/bin/glib-mkenums)
Program glib-mkenums found: YES (/usr/bin/glib-mkenums)
Program gtkdoc-scan found: YES (/usr/bin/gtkdoc-scan)
Dependency glib-2.0 found: YES 2.77.3 (cached)
Dependency gtk+-3.0 found: YES 3.24.38 (cached)
Program gtkdoc-scan found: YES (/usr/bin/gtkdoc-scan)
Program gtkdoc-scangobj found: YES (/usr/bin/gtkdoc-scangobj)
Program gtkdoc-mkdb found: YES (/usr/bin/gtkdoc-mkdb)
Program gtkdoc-mkhtml found: YES (/usr/bin/gtkdoc-mkhtml)
Program gtkdoc-fixxref found: YES (/usr/bin/gtkdoc-fixxref)
Program pod2man found: YES (/usr/bin/pod2man)
Program msgfmt found: YES (/usr/bin/msgfmt)
Program msginit found: YES (/usr/bin/msginit)
Program msgmerge found: YES (/usr/bin/msgmerge)
Program xgettext found: YES (/usr/bin/xgettext)
Program vapigen found: YES (/usr/bin/vapigen)
Program vapigen found: YES (/usr/bin/vapigen)
Build targets in project: 67
WARNING: Project specifies a minimum meson_version '>=3D 0.56' but uses
features which were added in newer versions:
 * 0.58.0: {'str.replace'}

spice-gtk 0.42

    prefix                         : /usr
    opus                           : YES
    gtk                            : YES
    wayland-protocols              : YES
    webdav                         : YES
    builtin-mjpeg                  : NO
    usbredir                       : YES
    libcap-ng                      : YES
    polkit                         : YES
    pie                            : YES
    usb-acl-helper-dir             : /usr/libexec/spice-gtk-x86_64/
    usb-ids-path                   : /usr/share/hwdata/usb.ids
    coroutine                      : ucontext
    introspection                  : YES
    vapi                           : YES
    lz4                            : YES
    sasl                           : YES
    smartcard                      : YES
    valgrind                       : NO
    libspice-client-glib.so version: 8.8.2
    libspice-client-gtk.so version : 5.1.1
    gtk_doc                        : YES

  Subprojects
    keycodemapdb                   : YES
    spice-common                   : YES 2 warnings

  User defined options
    auto_features                  : enabled
    bindir                         : /usr/bin
    buildtype                      : plain
    datadir                        : /usr/share
    includedir                     : /usr/include
    infodir                        : /usr/share/info
    libdir                         : /usr/lib64
    libexecdir                     : /usr/libexec
    localedir                      : /usr/share/locale
    localstatedir                  : /var
    mandir                         : /usr/share/man
    prefix                         : /usr
    sbindir                        : /usr/sbin
    sharedstatedir                 : /var/lib
    sysconfdir                     : /etc
    wrap_mode                      : nodownload
    alignment-checks               : false
    builtin-mjpeg                  : false
    gtk                            : enabled
    introspection                  : enabled
    lz4                            : enabled
    polkit                         : enabled
    usb-acl-helper-dir             : /usr/libexec/spice-gtk-x86_64/
    usb-ids-path                   : /usr/share/hwdata/usb.ids
    usbredir                       : enabled
    vapi                           : enabled
    webdav                         : enabled

aAnd above is filing on

[tkloczko@pers-jacek x86_64-redhat-linux-gnu]$ ninja
[1/22] Linking target src/libspice-client-glib-2.0.so.8.8.2
FAILED: src/libspice-client-glib-2.0.so.8.8.2
/usr/bin/gcc  -o src/libspice-client-glib-2.0.so.8.8.2
src/libspice-client-glib-2.0.so.8.8.2.p/meson-generated_.._spice-marshal.c.=
o
src/libspice-client-glib-2.0.so.8.8.2.p/meson-generated_.._spice-glib-enums=
.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-cursor.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-display.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-inputs.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-main.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-playback.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-port.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-record.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-smartcard.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-usbredir.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-webdav.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/qmp-port.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/smartcard-manager.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-audio.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-channel.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-client.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-option.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-session.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-util.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-util-glib.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/usb-device-manager.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/bio-gio.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-base.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/channel-display-gst.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/client_sw_canvas.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/decode-glz.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/decode-jpeg.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/decode-zlib.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/gio-coroutine.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-file-transfer-task.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-glib-main.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-gstaudio.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/spice-uri.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/vmcstream.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/usb-acl-helper.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/giopipe.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/continuation.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/coroutine_ucontext.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/usbutil.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/usb-backend.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/usb-device-cd.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/cd-scsi.c.o
src/libspice-client-glib-2.0.so.8.8.2.p/cd-usb-bulk-msd.c.o -Wl,--as-needed
-Wl,--no-undefined -shared -fPIC -Wl,--start-group
-Wl,-soname,libspice-client-glib-2.0.so.8 -Wl,--gc-sections -Wl,--as-needed
-flto=3Dauto -flto-partition=3Dnone -fuse-linker-plugin -Wl,-z,now
-specs=3D/usr/lib/rpm/redhat/redhat-hardened-ld -Wl,--build-id=3Dsha1 -O2 -=
g
-grecord-gcc-switches -pipe -Wall -Werror=3Dformat-security
-Wp,-U_FORTIFY_SOURCE,-D_FORTIFY_SOURCE=3D3 -Wp,-D_GLIBCXX_ASSERTIONS
-specs=3D/usr/lib/rpm/redhat/redhat-hardened-cc1 -fstack-protector-strong
-specs=3D/usr/lib/rpm/redhat/redhat-annobin-cc1 -fno-omit-frame-pointer
-mno-omit-leaf-frame-pointer -m64 -mtune=3Dgeneric
-fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
-fdata-sections -ffunction-sections -flto=3Dauto -flto-partition=3Dnone
subprojects/spice-common/common/libspice-common-client.a
subprojects/spice-common/common/libspice-common.a
-Wl,--version-script=3D/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/src/map=
-file-glib
-lm /usr/lib64/libglib-2.0.so /usr/lib64/libpixman-1.so
/usr/lib64/libssl.so /usr/lib64/libcrypto.so /usr/lib64/libopus.so
/usr/lib64/libgio-2.0.so /usr/lib64/libgobject-2.0.so /usr/lib64/libjpeg.so
/usr/lib64/libz.so /usr/lib64/libjson-glib-1.0.so /usr/lib64/
libphodav-3.0.so /usr/lib64/libsoup-3.0.so -Wl,--export-dynamic /usr/lib64/
libgmodule-2.0.so -pthread /usr/lib64/libgstreamer-1.0.so /usr/lib64/
libgstbase-1.0.so /usr/lib64/libgstapp-1.0.so /usr/lib64/libgstaudio-1.0.so
/usr/lib64/libgstvideo-1.0.so /usr/lib64/libusbredirparser.so
/usr/lib64/libusbredirhost.so /usr/lib64/libusb-1.0.so /usr/lib64/liblz4.so
/usr/lib64/libsasl2.so -Wl,--end-group
../subprojects/spice-common/common/canvas_base.c: In function
=E2=80=98canvas_draw_stroke=E2=80=99:
../subprojects/spice-common/common/canvas_base.c:2945:55: warning: writing
1 byte into a region of size 0 [-Wstringop-overflow=3D]
 2945 |             gc.base.dash[stroke->attr.style_nseg - 1] =3D
fix_to_int(style[0]);
      |                                                       ^
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function
`spice_smartcard_channel_init':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:116:(.text.spice_smartcard_channel_init+0x25):
undefined reference to `vreader_free'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function
`spice_smartcard_manager_finalize':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:119:(.text.spice_smartcard_manager_finalize+0x2e):
undefined reference to `vreader_free'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function
`spice_smartcard_reader_get_type_once':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:63:(.text.spice_smartcard_reader_get_type_once+0x13):
undefined reference to `vreader_free'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:63:(.text.spice_smartcard_reader_get_type_once+0x1a):
undefined reference to `vreader_reference'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `smartcard_source_finalize':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:341:(.text.smartcard_source_finalize+0x19):
undefined reference to `vevent_delete'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `smartcard_source_dispatch':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:329:(.text.smartcard_source_dispatch+0x3d):
undefined reference to `vevent_delete'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `smartcard_source_prepare':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:302:(.text.smartcard_source_prepare+0x34):
undefined reference to `vevent_get_next_vevent'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `smartcard_source_check':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:302:(.text.smartcard_source_check+0x2d):
undefined reference to `vevent_get_next_vevent'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function
`spice_smartcard_reader_is_software':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:541:(.text.spice_smartcard_reader_is_software+0xe):
undefined reference to `vreader_get_name'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function
`spice_smartcard_reader_insert_card':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:561:(.text.spice_smartcard_reader_insert_card+0x1e):
undefined reference to `vcard_emul_force_card_insert'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function
`spice_smartcard_reader_remove_card':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:583:(.text.spice_smartcard_reader_remove_card+0x1e):
undefined reference to `vcard_emul_force_card_remove'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function
`spice_smartcard_manager_get_readers':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:609:(.text.spice_smartcard_manager_get_readers+0x16):
undefined reference to `vreader_get_reader_list'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:614:(.text.spice_smartcard_manager_get_readers+0x2d):
undefined reference to `vreader_list_get_first'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:621:(.text.spice_smartcard_manager_get_readers+0x54):
undefined reference to `vreader_reference'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:616:(.text.spice_smartcard_manager_get_readers+0x6a):
undefined reference to `vreader_list_get_next'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:619:(.text.spice_smartcard_manager_get_readers+0x7a):
undefined reference to `vreader_list_get_reader'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:623:(.text.spice_smartcard_manager_get_readers+0xb4):
undefined reference to `vreader_list_delete'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `send_msg_generic_with_data':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:340:(.text.send_msg_generic_with_data+0x45):
undefined reference to `vreader_get_id'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:343:(.text.send_msg_generic_with_data+0x52):
undefined reference to `vreader_get_id'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `reader_added_cb':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:376:(.text.reader_added_cb+0x19):
undefined reference to `vreader_get_name'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:378:(.text.reader_added_cb+0x24):
undefined reference to `vreader_get_id'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `card_removed_cb':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:225:(.text.card_removed_cb+0x15):
undefined reference to `vreader_get_id'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `send_msg_atr':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:367:(.text.send_msg_atr+0x2d):
undefined reference to `vreader_get_id'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:368:(.text.send_msg_atr+0x45):
undefined reference to `vreader_power_on'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `card_inserted_cb':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:225:(.text.card_inserted_cb+0x15):
undefined reference to `vreader_get_id'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:239:(.text.card_inserted_cb+0x34):
undefined reference to `vreader_reference'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `handle_smartcard_msg':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:538:(.text.handle_smartcard_msg+0xf1):
undefined reference to `vreader_get_reader_by_id'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:541:(.text.handle_smartcard_msg+0x113):
undefined reference to `vreader_xfr_bytes'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:500:(.text.handle_smartcard_msg+0x23d):
undefined reference to `vreader_get_id'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:504:(.text.handle_smartcard_msg+0x261):
undefined reference to `vreader_set_id'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `reader_removed_cb':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:225:(.text.reader_removed_cb+0x15):
undefined reference to `vreader_get_id'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:262:(.text.reader_removed_cb+0x44):
undefined reference to `vreader_reference'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `smartcard_monitor_dispatch':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:262:(.text.smartcard_monitor_dispatch+0x5e):
undefined reference to `vreader_free'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:251:(.text.smartcard_monitor_dispatch+0x151):
undefined reference to `vreader_reference'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `smartcard_manager_init':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:443:(.text.smartcard_manager_init+0xee):
undefined reference to `vcard_emul_options'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/smartcard-manager.c:456:(.text.smartcard_manager_init+0x1a7):
undefined reference to `vcard_emul_init'
/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function
`spice_smartcard_channel_up_cb':
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:454:(.text.spice_smartcard_channel_up_cb+0x206):
undefined reference to `vreader_card_is_present'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:225:(.text.spice_smartcard_channel_up_cb+0x224):
undefined reference to `vreader_get_id'
/usr/bin/ld:
/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src=
/channel-smartcard.c:239:(.text.spice_smartcard_channel_up_cb+0x244):
undefined reference to `vreader_reference'
collect2: error: ld returned 1 exit status

BTW it would be really good to enable issue tracker on
https://gitlab.freedesktop.org/spice/spice-gtk/

kloczek
--=20
Tomasz K=C5=82oczko | LinkedIn: *http://lnkd.in/FXPWxH <http://lnkd.in/FXPW=
xH>*

--000000000000267ed40604ab7fb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">HI,</div><div class=3D"gmail_default" style=3D"font-family:mon=
ospace,monospace"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:monospace,monospace">Looks like it is some issue with 0.42.</div><div cl=
ass=3D"gmail_default" style=3D"font-family:monospace,monospace">Build fails=
 on linking=C2=A0libspice-client-glib with missing vevent_*=C2=A0 symbols.<=
/div><div class=3D"gmail_default" style=3D"font-family:monospace,monospace"=
>I&#39;m configuring source code with:</div><div class=3D"gmail_default" st=
yle=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:monospace,monospace">%meson \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 -D alignment-checks=3Dfalse \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -D =
builtin-mjpeg=3Dfalse \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -D gtk=3Denabled \<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -D introspection=3Denabled \<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 -D lz4=3Denabled \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -D polkit=
=3Denabled \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -D usb-acl-helper-dir=3D%{_libe=
xecdir}/spice-gtk-%{_arch}/ \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -D usb-ids-pat=
h=3D%{_datadir}/hwdata/usb.ids \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -D usbredir=
=3Denabled \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -D vapi=3Denabled \<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 -D webdav=3Denabled \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 %=
{nil}<br></div><div class=3D"gmail_default" style=3D"font-family:monospace,=
monospace"><br></div><div class=3D"gmail_default" style=3D"font-family:mono=
space,monospace">Here is meso output</div><div class=3D"gmail_default" styl=
e=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_default=
" style=3D"font-family:monospace,monospace">+ /usr/bin/meson setup --buildt=
ype=3Dplain --prefix=3D/usr --libdir=3D/usr/lib64 --libexecdir=3D/usr/libex=
ec --bindir=3D/usr/bin --sbindir=3D/usr/sbin --includedir=3D/usr/include --=
datadir=3D/usr/share --mandir=3D/usr/share/man --infodir=3D/usr/share/info =
--localedir=3D/usr/share/locale --sysconfdir=3D/etc --localstatedir=3D/var =
--sharedstatedir=3D/var/lib --wrap-mode=3Dnodownload --auto-features=3Denab=
led . x86_64-redhat-linux-gnu -D alignment-checks=3Dfalse -D builtin-mjpeg=
=3Dfalse -D gtk=3Denabled -D introspection=3Denabled -D lz4=3Denabled -D po=
lkit=3Denabled -D usb-acl-helper-dir=3D/usr/libexec/spice-gtk-x86_64/ -D us=
b-ids-path=3D/usr/share/hwdata/usb.ids -D usbredir=3Denabled -D vapi=3Denab=
led -D webdav=3Denabled<br>The Meson build system<br>Version: 1.2.1<br>Sour=
ce dir: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42<br>Build dir: /home/tk=
loczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu<br>Build type:=
 native build<br>Project name: spice-gtk<br>Project version: 0.42<br>C comp=
iler for the host machine: /usr/bin/gcc (gcc 13.2.1 &quot;gcc (GCC) 13.2.1 =
20230728 (Red Hat 13.2.1-1)&quot;)<br>C linker for the host machine: /usr/b=
in/gcc ld.bfd 2.41-5<br>Host machine cpu family: x86_64<br>Host machine cpu=
: x86_64<br>Library m found: YES<br><br>Executing subproject spice-common<b=
r><br>spice-common| Project name: spice-common<br>spice-common| Project ver=
sion: undefined<br>spice-common| C compiler for the host machine: /usr/bin/=
gcc (gcc 13.2.1 &quot;gcc (GCC) 13.2.1 20230728 (Red Hat 13.2.1-1)&quot;)<b=
r>spice-common| C linker for the host machine: /usr/bin/gcc ld.bfd 2.41-5<b=
r>spice-common| Has header &quot;alloca.h&quot; : YES<br>spice-common| Has =
header &quot;arpa/inet.h&quot; : YES<br>spice-common| Has header &quot;dlfc=
n.h&quot; : YES<br>spice-common| Has header &quot;inttypes.h&quot; : YES<br=
>spice-common| Has header &quot;netinet/in.h&quot; : YES<br>spice-common| H=
as header &quot;stdlib.h&quot; : YES<br>spice-common| Has header &quot;sys/=
socket.h&quot; : YES<br>spice-common| Has header &quot;sys/stat.h&quot; : Y=
ES<br>spice-common| Has header &quot;sys/types.h&quot; : YES<br>spice-commo=
n| Has header &quot;unistd.h&quot; : YES<br>spice-common| Has header &quot;=
regex.h&quot; : YES<br>spice-common| Has header &quot;sys/mman.h&quot; : YE=
S<br>spice-common| Checking for function &quot;alloca&quot; : YES<br>spice-=
common| Checking for function &quot;sigaction&quot; : YES<br>spice-common| =
Checking for function &quot;drand48&quot; : YES<br>spice-common| Checking f=
or function &quot;setlinebuf&quot; : YES<br>spice-common| Library m found: =
YES<br>spice-common| Found pkg-config: /usr/bin/pkg-config (1.9.5)<br>spice=
-common| Run-time dependency spice-protocol found: YES 0.14.4<br>spice-comm=
on| Run-time dependency glib-2.0 found: YES 2.77.3<br>spice-common| Run-tim=
e dependency pixman-1 found: YES 0.42.2<br>spice-common| Run-time dependenc=
y openssl found: YES 3.0.9-dev<br>spice-common| Run-time dependency gio-2.0=
 found: YES 2.77.3<br>spice-common| Run-time dependency opus found: YES 1.4=
<br>spice-common| Program python3 found: YES (/usr/bin/python3)<br>spice-co=
mmon| Message: Checking for python module six<br>spice-common| WARNING: You=
 should add the boolean check kwarg to the run_command call.<br>spice-commo=
n| It currently defaults to false,<br>spice-common| but it will default to =
true in future releases of meson.<br>spice-common| See also: <a href=3D"htt=
ps://github.com/mesonbuild/meson/issues/9300">https://github.com/mesonbuild=
/meson/issues/9300</a><br>spice-common| Message: Checking for python module=
 pyparsing<br>spice-common| Run-time dependency libcacard found: YES 2.8.1<=
br>spice-common| Compiler for C supports arguments -DG_LOG_DOMAIN=3D&quot;S=
pice&quot;: YES<br>spice-common| Compiler for C supports arguments -Wno-unu=
sed-parameter: YES<br>spice-common| Compiler for C supports arguments -DGLI=
B_VERSION_MIN_REQUIRED=3DGLIB_VERSION_2_38: YES<br>spice-common| Compiler f=
or C supports arguments -DGLIB_VERSION_MAX_ALLOWED=3DGLIB_VERSION_2_38: YES=
<br>spice-common| Run-time dependency gdk-pixbuf-2.0 found: YES 2.42.10<br>=
spice-common| Program asciidoc found: NO<br>spice-common| Configuring confi=
g.h using configuration<br>spice-common| Build targets in project: 14<br>sp=
ice-common| Subproject spice-common finished.<br><br><br>Executing subproje=
ct keycodemapdb<br><br>keycodemapdb| Project name: keycodemapdb<br>keycodem=
apdb| Project version: undefined<br>keycodemapdb| Program tools/keymap-gen =
found: YES (/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/subprojects/keycod=
emapdb/tools/keymap-gen)<br>keycodemapdb| Build targets in project: 14<br>k=
eycodemapdb| Subproject keycodemapdb finished.<br><br>Program tools/keymap-=
gen found: YES (overridden)<br>Has header &quot;termios.h&quot; : YES<br>Ha=
s header &quot;X11/XKBlib.h&quot; : YES<br>Has header &quot;sys/socket.h&qu=
ot; : YES (cached)<br>Has header &quot;sys/types.h&quot; : YES (cached)<br>=
Has header &quot;netinet/in.h&quot; : YES (cached)<br>Has header &quot;arpa=
/inet.h&quot; : YES (cached)<br>Has header &quot;valgrind/valgrind.h&quot; =
: NO<br>Has header &quot;sys/disk.h&quot; : NO<br>Has header &quot;epoxy/eg=
l.h&quot; : YES<br>Checking for function &quot;clearenv&quot; : YES<br>Chec=
king for function &quot;strtok_r&quot; : YES<br>Dependency spice-protocol f=
ound: YES 0.14.4 (cached)<br>Dependency glib-2.0 found: YES 2.77.3 (cached)=
<br>Dependency gio-2.0 found: YES 2.77.3 (cached)<br>Run-time dependency go=
bject-2.0 found: YES 2.77.3<br>Dependency pixman-1 found: YES 0.42.2 (cache=
d)<br>Dependency openssl found: YES 3.0.9-dev (cached)<br>Run-time dependen=
cy libjpeg found: YES 3.0.0<br>Run-time dependency zlib found: YES 1.2.13.z=
lib-ng<br>Run-time dependency json-glib-1.0 found: YES 1.6.6<br>Run-time de=
pendency gio-unix-2.0 found: YES 2.77.3<br>Dependency opus found: YES 1.4 (=
cached)<br>Run-time dependency gtk+-3.0 found: YES 3.24.38<br>Run-time depe=
ndency epoxy found: YES 1.5.10<br>Run-time dependency x11 found: YES 1.8.6<=
br>Run-time dependency libva-x11 found: YES 1.19.0<br>Has header &quot;gtk-=
3.0/gdk/gdkwayland.h&quot; : YES<br>Run-time dependency wayland-protocols f=
ound: YES 1.32<br>Found pkg-config: /usr/bin/pkg-config (1.9.5)<br>Build-ti=
me dependency wayland-scanner found: YES 1.22.0<br>Program /usr/bin/wayland=
-scanner found: YES (/usr/bin/wayland-scanner)<br>Run-time dependency wayla=
nd-server found: YES 1.22.0<br>Run-time dependency wayland-cursor found: YE=
S 1.22.0<br>Run-time dependency wayland-client found: YES 1.22.0<br>Run-tim=
e dependency libphodav-3.0 found: YES 3.0<br>Run-time dependency libsoup-3.=
0 found: YES 3.4.2<br>Run-time dependency gstreamer-1.0 found: YES 1.22.5<b=
r>Run-time dependency gstreamer-base-1.0 found: YES 1.22.5<br>Run-time depe=
ndency gstreamer-app-1.0 found: YES 1.22.5<br>Run-time dependency gstreamer=
-audio-1.0 found: YES 1.22.5<br>Run-time dependency gstreamer-video-1.0 fou=
nd: YES 1.22.5<br>Run-time dependency libusbredirparser-0.5 found: YES 0.13=
.0<br>Run-time dependency libusbredirhost found: YES 0.13.0<br>Run-time dep=
endency libusb-1.0 found: YES 1.0.26<br>Run-time dependency libcap-ng found=
: YES 0.8.3<br>Run-time dependency polkit-gobject-1 found: YES 123<br>Check=
ing for function &quot;acl_get_file&quot; : NO<br>Library acl found: YES<br=
>Checking for function &quot;acl_get_file&quot; with dependency -lacl: YES<=
br>Dependency gio-unix-2.0 found: YES 2.77.3 (cached)<br>Checking for funct=
ion &quot;makecontext&quot; : YES<br>Checking for function &quot;swapcontex=
t&quot; : YES<br>Checking for function &quot;getcontext&quot; : YES<br>Run-=
time dependency gobject-introspection-1.0 found: YES 1.76.1<br>Run-time dep=
endency vapigen found: YES 0.56.13<br>Run-time dependency liblz4 found: YES=
 1.9.4<br>Run-time dependency libsasl2 found: YES 2.1.29<br>Dependency libc=
acard found: YES 2.8.1 (cached)<br>Compiler for C supports arguments -DHAVE=
_CONFIG_H: YES<br>Compiler for C supports arguments -DSPICE_COMPILATION: YE=
S<br>Compiler for C supports arguments -DG_LOG_DOMAIN=3D&quot;GSpice&quot;:=
 YES<br>Compiler for C supports arguments -Wno-sign-compare: YES<br>Compile=
r for C supports arguments -Wno-unused-parameter: YES (cached)<br>Compiler =
for C supports arguments -Wno-cast-function-type: YES<br>Compiler for C sup=
ports arguments -DGLIB_VERSION_MIN_REQUIRED=3DGLIB_VERSION_2_52: YES<br>Com=
piler for C supports arguments -DGLIB_VERSION_MAX_ALLOWED=3DGLIB_VERSION_2_=
52: YES<br>Compiler for C supports arguments -DGDK_VERSION_MIN_REQUIRED=3DG=
DK_VERSION_3_22: YES<br>Compiler for C supports arguments -DGDK_VERSION_MAX=
_ALLOWED=3DGDK_VERSION_3_22: YES<br>Configuring config.h using configuratio=
n<br>src/meson.build:27: WARNING: Project targets &#39;&gt;=3D 0.56&#39; bu=
t uses feature introduced in &#39;0.58.0&#39;: str.replace.<br>Configuring =
spice-version.h using configuration<br>Program glib-genmarshal found: YES (=
/usr/bin/glib-genmarshal)<br>Program glib-mkenums found: YES (/usr/bin/glib=
-mkenums)<br>Program glib-mkenums found: YES (/usr/bin/glib-mkenums)<br>Com=
piler for C supports link arguments -Wl,--version-script=3D/home/tkloczko/r=
pmbuild/BUILD/spice-gtk-0.42/src/test-map-file: YES<br>Dependency gobject-i=
ntrospection-1.0 found: YES 1.76.1 (cached)<br>Dependency gobject-introspec=
tion-1.0 found: YES 1.76.1 (cached)<br>Program g-ir-scanner found: YES (/us=
r/bin/g-ir-scanner)<br>Dependency gobject-introspection-1.0 found: YES 1.76=
.1 (cached)<br>Program g-ir-compiler found: YES (/usr/bin/g-ir-compiler)<br=
>Program glib-mkenums found: YES (/usr/bin/glib-mkenums)<br>Program glib-mk=
enums found: YES (/usr/bin/glib-mkenums)<br>Program gtkdoc-scan found: YES =
(/usr/bin/gtkdoc-scan)<br>Dependency glib-2.0 found: YES 2.77.3 (cached)<br=
>Dependency gtk+-3.0 found: YES 3.24.38 (cached)<br>Program gtkdoc-scan fou=
nd: YES (/usr/bin/gtkdoc-scan)<br>Program gtkdoc-scangobj found: YES (/usr/=
bin/gtkdoc-scangobj)<br>Program gtkdoc-mkdb found: YES (/usr/bin/gtkdoc-mkd=
b)<br>Program gtkdoc-mkhtml found: YES (/usr/bin/gtkdoc-mkhtml)<br>Program =
gtkdoc-fixxref found: YES (/usr/bin/gtkdoc-fixxref)<br>Program pod2man foun=
d: YES (/usr/bin/pod2man)<br>Program msgfmt found: YES (/usr/bin/msgfmt)<br=
>Program msginit found: YES (/usr/bin/msginit)<br>Program msgmerge found: Y=
ES (/usr/bin/msgmerge)<br>Program xgettext found: YES (/usr/bin/xgettext)<b=
r>Program vapigen found: YES (/usr/bin/vapigen)<br>Program vapigen found: Y=
ES (/usr/bin/vapigen)<br>Build targets in project: 67<br>WARNING: Project s=
pecifies a minimum meson_version &#39;&gt;=3D 0.56&#39; but uses features w=
hich were added in newer versions:<br>=C2=A0* 0.58.0: {&#39;str.replace&#39=
;}<br><br>spice-gtk 0.42<br><br>=C2=A0 =C2=A0 prefix =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /usr<br>=
=C2=A0 =C2=A0 opus =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : YES<br>=C2=A0 =C2=A0 gtk =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0: YES<br>=C2=A0 =C2=A0 wayland-protocols =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0: YES<br>=C2=A0 =C2=A0 webdav =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : YES<br>=C2=
=A0 =C2=A0 builtin-mjpeg =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0: NO<br>=C2=A0 =C2=A0 usbredir =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : YES<br>=C2=A0 =C2=A0 libcap=
-ng =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0: YES<br>=C2=A0 =C2=A0 polkit =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : YES<br>=C2=A0 =C2=A0 pie =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0: YES<br>=C2=A0 =C2=A0 usb-acl-helper-dir =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /usr/libexec/spice-gtk-x86_64/<br>=C2=
=A0 =C2=A0 usb-ids-path =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 : /usr/share/hwdata/usb.ids<br>=C2=A0 =C2=A0 coroutine =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: uco=
ntext<br>=C2=A0 =C2=A0 introspection =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0: YES<br>=C2=A0 =C2=A0 vapi =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : YES=
<br>=C2=A0 =C2=A0 lz4 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: YES<br>=C2=A0 =C2=A0 sasl =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 : YES<br>=C2=A0 =C2=A0 smartcard =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: YES<br>=C2=A0 =C2=A0 =
valgrind =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 : NO<br>=C2=A0 =C2=A0 libspice-client-glib.so version: 8.8.2<br>=
=C2=A0 =C2=A0 libspice-client-gtk.so version : 5.1.1<br>=C2=A0 =C2=A0 gtk_d=
oc =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0: YES<br><br>=C2=A0 Subprojects<br>=C2=A0 =C2=A0 keycodemapdb =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : YES<br>=C2=
=A0 =C2=A0 spice-common =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 : YES 2 warnings<br><br>=C2=A0 User defined options<br>=C2=A0=
 =C2=A0 auto_features =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0: enabled<br>=C2=A0 =C2=A0 bindir =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /usr/bin<br>=C2=A0 =
=C2=A0 buildtype =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0: plain<br>=C2=A0 =C2=A0 datadir =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: /usr/share<=
br>=C2=A0 =C2=A0 includedir =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 : /usr/include<br>=C2=A0 =C2=A0 infodir =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: =
/usr/share/info<br>=C2=A0 =C2=A0 libdir =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /usr/lib64<br>=C2=A0 =C2=
=A0 libexecdir =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 : /usr/libexec<br>=C2=A0 =C2=A0 localedir =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: /usr/share/locale<=
br>=C2=A0 =C2=A0 localstatedir =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0: /var<br>=C2=A0 =C2=A0 mandir =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /usr/share/ma=
n<br>=C2=A0 =C2=A0 prefix =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /usr<br>=C2=A0 =C2=A0 sbindir =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0: /usr/sbin<br>=C2=A0 =C2=A0 sharedstatedir =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 : /var/lib<br>=C2=A0 =C2=A0 sysconfdir =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /etc<br>=
=C2=A0 =C2=A0 wrap_mode =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0: nodownload<br>=C2=A0 =C2=A0 alignment-checks =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : false<br>=C2=A0 =C2=A0 b=
uiltin-mjpeg =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
: false<br>=C2=A0 =C2=A0 gtk =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: enabled<br>=C2=A0 =C2=
=A0 introspection =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0: enabled<br>=C2=A0 =C2=A0 lz4 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: enabled<br>=C2=
=A0 =C2=A0 polkit =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 : enabled<br>=C2=A0 =C2=A0 usb-acl-helper-dir =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : /usr/libexec/spice-gtk-x86_64/<=
br>=C2=A0 =C2=A0 usb-ids-path =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 : /usr/share/hwdata/usb.ids<br>=C2=A0 =C2=A0 usbredir =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :=
 enabled<br>=C2=A0 =C2=A0 vapi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : enabled<br>=C2=A0 =C2=A0=
 webdav =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 : enabled<br></div><div><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><font face=3D"monospace, monospace"><br></font></div><div><font fa=
ce=3D"monospace, monospace">a<span class=3D"gmail_default" style=3D"font-fa=
mily:monospace,monospace">And above is filing on</span></font></div><div><f=
ont face=3D"monospace, monospace"><br></font></div><div>[tkloczko@pers-jace=
k x86_64-redhat-linux-gnu]$ ninja<br>[1/22] Linking target src/libspice-cli=
ent-glib-2.0.so.8.8.2<br>FAILED: src/libspice-client-glib-2.0.so.8.8.2<br>/=
usr/bin/gcc =C2=A0-o src/libspice-client-glib-2.0.so.8.8.2 src/libspice-cli=
ent-glib-2.0.so.8.8.2.p/meson-generated_.._spice-marshal.c.o src/libspice-c=
lient-glib-2.0.so.8.8.2.p/meson-generated_.._spice-glib-enums.c.o src/libsp=
ice-client-glib-2.0.so.8.8.2.p/channel-cursor.c.o src/libspice-client-glib-=
2.0.so.8.8.2.p/channel-display.c.o src/libspice-client-glib-2.0.so.8.8.2.p/=
channel-inputs.c.o src/libspice-client-glib-2.0.so.8.8.2.p/channel-main.c.o=
 src/libspice-client-glib-2.0.so.8.8.2.p/channel-playback.c.o src/libspice-=
client-glib-2.0.so.8.8.2.p/channel-port.c.o src/libspice-client-glib-2.0.so=
.8.8.2.p/channel-record.c.o src/libspice-client-glib-2.0.so.8.8.2.p/channel=
-smartcard.c.o src/libspice-client-glib-2.0.so.8.8.2.p/channel-usbredir.c.o=
 src/libspice-client-glib-2.0.so.8.8.2.p/channel-webdav.c.o src/libspice-cl=
ient-glib-2.0.so.8.8.2.p/qmp-port.c.o src/libspice-client-glib-2.0.so.8.8.2=
.p/smartcard-manager.c.o src/libspice-client-glib-2.0.so.8.8.2.p/spice-audi=
o.c.o src/libspice-client-glib-2.0.so.8.8.2.p/spice-channel.c.o src/libspic=
e-client-glib-2.0.so.8.8.2.p/spice-client.c.o src/libspice-client-glib-2.0.=
so.8.8.2.p/spice-option.c.o src/libspice-client-glib-2.0.so.8.8.2.p/spice-s=
ession.c.o src/libspice-client-glib-2.0.so.8.8.2.p/spice-util.c.o src/libsp=
ice-client-glib-2.0.so.8.8.2.p/spice-util-glib.c.o src/libspice-client-glib=
-2.0.so.8.8.2.p/usb-device-manager.c.o src/libspice-client-glib-2.0.so.8.8.=
2.p/bio-gio.c.o src/libspice-client-glib-2.0.so.8.8.2.p/channel-base.c.o sr=
c/libspice-client-glib-2.0.so.8.8.2.p/channel-display-gst.c.o src/libspice-=
client-glib-2.0.so.8.8.2.p/client_sw_canvas.c.o src/libspice-client-glib-2.=
0.so.8.8.2.p/decode-glz.c.o src/libspice-client-glib-2.0.so.8.8.2.p/decode-=
jpeg.c.o src/libspice-client-glib-2.0.so.8.8.2.p/decode-zlib.c.o src/libspi=
ce-client-glib-2.0.so.8.8.2.p/gio-coroutine.c.o src/libspice-client-glib-2.=
0.so.8.8.2.p/spice-file-transfer-task.c.o src/libspice-client-glib-2.0.so.8=
.8.2.p/spice-glib-main.c.o src/libspice-client-glib-2.0.so.8.8.2.p/spice-gs=
taudio.c.o src/libspice-client-glib-2.0.so.8.8.2.p/spice-uri.c.o src/libspi=
ce-client-glib-2.0.so.8.8.2.p/vmcstream.c.o src/libspice-client-glib-2.0.so=
.8.8.2.p/usb-acl-helper.c.o src/libspice-client-glib-2.0.so.8.8.2.p/giopipe=
.c.o src/libspice-client-glib-2.0.so.8.8.2.p/continuation.c.o src/libspice-=
client-glib-2.0.so.8.8.2.p/coroutine_ucontext.c.o src/libspice-client-glib-=
2.0.so.8.8.2.p/usbutil.c.o src/libspice-client-glib-2.0.so.8.8.2.p/usb-back=
end.c.o src/libspice-client-glib-2.0.so.8.8.2.p/usb-device-cd.c.o src/libsp=
ice-client-glib-2.0.so.8.8.2.p/cd-scsi.c.o src/libspice-client-glib-2.0.so.=
8.8.2.p/cd-usb-bulk-msd.c.o -Wl,--as-needed -Wl,--no-undefined -shared -fPI=
C -Wl,--start-group -Wl,-soname,libspice-client-glib-2.0.so.8 -Wl,--gc-sect=
ions -Wl,--as-needed -flto=3Dauto -flto-partition=3Dnone -fuse-linker-plugi=
n -Wl,-z,now -specs=3D/usr/lib/rpm/redhat/redhat-hardened-ld -Wl,--build-id=
=3Dsha1 -O2 -g -grecord-gcc-switches -pipe -Wall -Werror=3Dformat-security =
-Wp,-U_FORTIFY_SOURCE,-D_FORTIFY_SOURCE=3D3 -Wp,-D_GLIBCXX_ASSERTIONS -spec=
s=3D/usr/lib/rpm/redhat/redhat-hardened-cc1 -fstack-protector-strong -specs=
=3D/usr/lib/rpm/redhat/redhat-annobin-cc1 -fno-omit-frame-pointer -mno-omit=
-leaf-frame-pointer -m64 -mtune=3Dgeneric -fasynchronous-unwind-tables -fst=
ack-clash-protection -fcf-protection -fdata-sections -ffunction-sections -f=
lto=3Dauto -flto-partition=3Dnone subprojects/spice-common/common/libspice-=
common-client.a subprojects/spice-common/common/libspice-common.a -Wl,--ver=
sion-script=3D/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/src/map-file-gli=
b -lm /usr/lib64/<a href=3D"http://libglib-2.0.so">libglib-2.0.so</a> /usr/=
lib64/libpixman-1.so /usr/lib64/libssl.so /usr/lib64/libcrypto.so /usr/lib6=
4/libopus.so /usr/lib64/<a href=3D"http://libgio-2.0.so">libgio-2.0.so</a> =
/usr/lib64/<a href=3D"http://libgobject-2.0.so">libgobject-2.0.so</a> /usr/=
lib64/libjpeg.so /usr/lib64/libz.so /usr/lib64/<a href=3D"http://libjson-gl=
ib-1.0.so">libjson-glib-1.0.so</a> /usr/lib64/<a href=3D"http://libphodav-3=
.0.so">libphodav-3.0.so</a> /usr/lib64/<a href=3D"http://libsoup-3.0.so">li=
bsoup-3.0.so</a> -Wl,--export-dynamic /usr/lib64/<a href=3D"http://libgmodu=
le-2.0.so">libgmodule-2.0.so</a> -pthread /usr/lib64/<a href=3D"http://libg=
streamer-1.0.so">libgstreamer-1.0.so</a> /usr/lib64/<a href=3D"http://libgs=
tbase-1.0.so">libgstbase-1.0.so</a> /usr/lib64/<a href=3D"http://libgstapp-=
1.0.so">libgstapp-1.0.so</a> /usr/lib64/<a href=3D"http://libgstaudio-1.0.s=
o">libgstaudio-1.0.so</a> /usr/lib64/<a href=3D"http://libgstvideo-1.0.so">=
libgstvideo-1.0.so</a> /usr/lib64/libusbredirparser.so /usr/lib64/libusbred=
irhost.so /usr/lib64/<a href=3D"http://libusb-1.0.so">libusb-1.0.so</a> /us=
r/lib64/liblz4.so /usr/lib64/libsasl2.so -Wl,--end-group<br>../subprojects/=
spice-common/common/canvas_base.c: In function =E2=80=98canvas_draw_stroke=
=E2=80=99:<br>../subprojects/spice-common/common/canvas_base.c:2945:55: war=
ning: writing 1 byte into a region of size 0 [-Wstringop-overflow=3D]<br>=
=C2=A02945 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gc.base.dash[stroke-=
&gt;attr.style_nseg - 1] =3D fix_to_int(style[0]);<br>=C2=A0 =C2=A0 =C2=A0 =
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/usr/bin/ld: /tmp/cc4Z1SP9.l=
to.o: in function `spice_smartcard_channel_init&#39;:<br>/home/tkloczko/rpm=
build/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard=
.c:116:(.text.spice_smartcard_channel_init+0x25): undefined reference to `v=
reader_free&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `spice_sm=
artcard_manager_finalize&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0=
.42/x86_64-redhat-linux-gnu/../src/smartcard-manager.c:119:(.text.spice_sma=
rtcard_manager_finalize+0x2e): undefined reference to `vreader_free&#39;<br=
>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `spice_smartcard_reader_get_=
type_once&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redh=
at-linux-gnu/../src/smartcard-manager.c:63:(.text.spice_smartcard_reader_ge=
t_type_once+0x13): undefined reference to `vreader_free&#39;<br>/usr/bin/ld=
: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../s=
rc/smartcard-manager.c:63:(.text.spice_smartcard_reader_get_type_once+0x1a)=
: undefined reference to `vreader_reference&#39;<br>/usr/bin/ld: /tmp/cc4Z1=
SP9.lto.o: in function `smartcard_source_finalize&#39;:<br>/home/tkloczko/r=
pmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/smartcard-manag=
er.c:341:(.text.smartcard_source_finalize+0x19): undefined reference to `ve=
vent_delete&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `smartcar=
d_source_dispatch&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86=
_64-redhat-linux-gnu/../src/smartcard-manager.c:329:(.text.smartcard_source=
_dispatch+0x3d): undefined reference to `vevent_delete&#39;<br>/usr/bin/ld:=
 /tmp/cc4Z1SP9.lto.o: in function `smartcard_source_prepare&#39;:<br>/home/=
tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/smart=
card-manager.c:302:(.text.smartcard_source_prepare+0x34): undefined referen=
ce to `vevent_get_next_vevent&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in =
function `smartcard_source_check&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spi=
ce-gtk-0.42/x86_64-redhat-linux-gnu/../src/smartcard-manager.c:302:(.text.s=
martcard_source_check+0x2d): undefined reference to `vevent_get_next_vevent=
&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `spice_smartcard_rea=
der_is_software&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_6=
4-redhat-linux-gnu/../src/smartcard-manager.c:541:(.text.spice_smartcard_re=
ader_is_software+0xe): undefined reference to `vreader_get_name&#39;<br>/us=
r/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `spice_smartcard_reader_insert_c=
ard&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-lin=
ux-gnu/../src/smartcard-manager.c:561:(.text.spice_smartcard_reader_insert_=
card+0x1e): undefined reference to `vcard_emul_force_card_insert&#39;<br>/u=
sr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `spice_smartcard_reader_remove_=
card&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-li=
nux-gnu/../src/smartcard-manager.c:583:(.text.spice_smartcard_reader_remove=
_card+0x1e): undefined reference to `vcard_emul_force_card_remove&#39;<br>/=
usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `spice_smartcard_manager_get_r=
eaders&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-=
linux-gnu/../src/smartcard-manager.c:609:(.text.spice_smartcard_manager_get=
_readers+0x16): undefined reference to `vreader_get_reader_list&#39;<br>/us=
r/bin/ld: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-=
gnu/../src/smartcard-manager.c:614:(.text.spice_smartcard_manager_get_reade=
rs+0x2d): undefined reference to `vreader_list_get_first&#39;<br>/usr/bin/l=
d: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../=
src/smartcard-manager.c:621:(.text.spice_smartcard_manager_get_readers+0x54=
): undefined reference to `vreader_reference&#39;<br>/usr/bin/ld: /home/tkl=
oczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/smartcar=
d-manager.c:616:(.text.spice_smartcard_manager_get_readers+0x6a): undefined=
 reference to `vreader_list_get_next&#39;<br>/usr/bin/ld: /home/tkloczko/rp=
mbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/smartcard-manage=
r.c:619:(.text.spice_smartcard_manager_get_readers+0x7a): undefined referen=
ce to `vreader_list_get_reader&#39;<br>/usr/bin/ld: /home/tkloczko/rpmbuild=
/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/smartcard-manager.c:62=
3:(.text.spice_smartcard_manager_get_readers+0xb4): undefined reference to =
`vreader_list_delete&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function =
`send_msg_generic_with_data&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gt=
k-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard.c:340:(.text.send_m=
sg_generic_with_data+0x45): undefined reference to `vreader_get_id&#39;<br>=
/usr/bin/ld: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-lin=
ux-gnu/../src/channel-smartcard.c:343:(.text.send_msg_generic_with_data+0x5=
2): undefined reference to `vreader_get_id&#39;<br>/usr/bin/ld: /tmp/cc4Z1S=
P9.lto.o: in function `reader_added_cb&#39;:<br>/home/tkloczko/rpmbuild/BUI=
LD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard.c:376:(.=
text.reader_added_cb+0x19): undefined reference to `vreader_get_name&#39;<b=
r>/usr/bin/ld: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-l=
inux-gnu/../src/channel-smartcard.c:378:(.text.reader_added_cb+0x24): undef=
ined reference to `vreader_get_id&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o:=
 in function `card_removed_cb&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-=
gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard.c:225:(.text.card=
_removed_cb+0x15): undefined reference to `vreader_get_id&#39;<br>/usr/bin/=
ld: /tmp/cc4Z1SP9.lto.o: in function `send_msg_atr&#39;:<br>/home/tkloczko/=
rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartc=
ard.c:367:(.text.send_msg_atr+0x2d): undefined reference to `vreader_get_id=
&#39;<br>/usr/bin/ld: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-r=
edhat-linux-gnu/../src/channel-smartcard.c:368:(.text.send_msg_atr+0x45): u=
ndefined reference to `vreader_power_on&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.=
lto.o: in function `card_inserted_cb&#39;:<br>/home/tkloczko/rpmbuild/BUILD=
/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard.c:225:(.te=
xt.card_inserted_cb+0x15): undefined reference to `vreader_get_id&#39;<br>/=
usr/bin/ld: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linu=
x-gnu/../src/channel-smartcard.c:239:(.text.card_inserted_cb+0x34): undefin=
ed reference to `vreader_reference&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o=
: in function `handle_smartcard_msg&#39;:<br>/home/tkloczko/rpmbuild/BUILD/=
spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard.c:538:(.tex=
t.handle_smartcard_msg+0xf1): undefined reference to `vreader_get_reader_by=
_id&#39;<br>/usr/bin/ld: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_6=
4-redhat-linux-gnu/../src/channel-smartcard.c:541:(.text.handle_smartcard_m=
sg+0x113): undefined reference to `vreader_xfr_bytes&#39;<br>/usr/bin/ld: /=
home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/=
channel-smartcard.c:500:(.text.handle_smartcard_msg+0x23d): undefined refer=
ence to `vreader_get_id&#39;<br>/usr/bin/ld: /home/tkloczko/rpmbuild/BUILD/=
spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard.c:504:(.tex=
t.handle_smartcard_msg+0x261): undefined reference to `vreader_set_id&#39;<=
br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `reader_removed_cb&#39;:<b=
r>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../s=
rc/channel-smartcard.c:225:(.text.reader_removed_cb+0x15): undefined refere=
nce to `vreader_get_id&#39;<br>/usr/bin/ld: /home/tkloczko/rpmbuild/BUILD/s=
pice-gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard.c:262:(.text=
.reader_removed_cb+0x44): undefined reference to `vreader_reference&#39;<br=
>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `smartcard_monitor_dispatch&=
#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-g=
nu/../src/smartcard-manager.c:262:(.text.smartcard_monitor_dispatch+0x5e): =
undefined reference to `vreader_free&#39;<br>/usr/bin/ld: /home/tkloczko/rp=
mbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/smartcard-manage=
r.c:251:(.text.smartcard_monitor_dispatch+0x151): undefined reference to `v=
reader_reference&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: in function `sma=
rtcard_manager_init&#39;:<br>/home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x=
86_64-redhat-linux-gnu/../src/smartcard-manager.c:443:(.text.smartcard_mana=
ger_init+0xee): undefined reference to `vcard_emul_options&#39;<br>/usr/bin=
/ld: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/.=
./src/smartcard-manager.c:456:(.text.smartcard_manager_init+0x1a7): undefin=
ed reference to `vcard_emul_init&#39;<br>/usr/bin/ld: /tmp/cc4Z1SP9.lto.o: =
in function `spice_smartcard_channel_up_cb&#39;:<br>/home/tkloczko/rpmbuild=
/BUILD/spice-gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard.c:45=
4:(.text.spice_smartcard_channel_up_cb+0x206): undefined reference to `vrea=
der_card_is_present&#39;<br>/usr/bin/ld: /home/tkloczko/rpmbuild/BUILD/spic=
e-gtk-0.42/x86_64-redhat-linux-gnu/../src/channel-smartcard.c:225:(.text.sp=
ice_smartcard_channel_up_cb+0x224): undefined reference to `vreader_get_id&=
#39;<br>/usr/bin/ld: /home/tkloczko/rpmbuild/BUILD/spice-gtk-0.42/x86_64-re=
dhat-linux-gnu/../src/channel-smartcard.c:239:(.text.spice_smartcard_channe=
l_up_cb+0x244): undefined reference to `vreader_reference&#39;<br>collect2:=
 error: ld returned 1 exit status<br></div><div><font face=3D"monospace, mo=
nospace"><br></font></div><div><font face=3D"monospace, monospace">B<span c=
lass=3D"gmail_default" style=3D"font-family:monospace,monospace">TW it woul=
d be really good to enable issue tracker on=C2=A0</span></font><a href=3D"h=
ttps://gitlab.freedesktop.org/spice/spice-gtk/">https://gitlab.freedesktop.=
org/spice/spice-gtk/</a></div><div><br></div><div><font face=3D"monospace, =
monospace">k<span class=3D"gmail_default" style=3D"font-family:monospace,mo=
nospace">loczek</span></font></div><div><font face=3D"monospace, monospace"=
>--=C2=A0</font></div><div dir=3D"ltr"><font face=3D"monospace, monospace">=
Tomasz K=C5=82oczko | LinkedIn:=C2=A0<b style=3D"font-weight:normal"><a hre=
f=3D"http://lnkd.in/FXPWxH" style=3D"text-decoration:none" target=3D"_blank=
"><span style=3D"font-size:13px;color:rgb(17,85,204);background-color:trans=
parent;text-decoration:underline;vertical-align:baseline;white-space:pre-wr=
ap">http://lnkd.in/FXPWxH</span></a></b></font></div></div></div></div></di=
v></div>

--000000000000267ed40604ab7fb2--
