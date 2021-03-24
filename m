Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A06347938
	for <lists+spice-devel@lfdr.de>; Wed, 24 Mar 2021 14:05:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2934B6EA03;
	Wed, 24 Mar 2021 13:05:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C313F6EA03
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Mar 2021 13:05:21 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id f17so7895234plr.0
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Mar 2021 06:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yX7wjZWwEcSOSJsBMffFowYCJGZFyevokl6UEpkpREk=;
 b=g/Zb9SvYBfX3hx4mJHgppITmvMDOioNE7h/zgW/K8ZUu/9ehDmtKsSKY2E88e2E95R
 R91oRsTuIS76Nc73xWxaXVFnL0W0tRHSKqJY9fd/y98sff6DgRjlJC1PrNGlZW/ixbPl
 pmmqdGtML/2JGGKYnkRPa2fhB1wTITHIucd3gu9ucEgG6CYqVXL765aZZWn4b0ChDDii
 qduRx9RJdYKblR34UUouDv+OMiu0ppnyT9Ii/SMGgjq8tAqzxCzHpPv1ZtHhcshXRNok
 vOdTFCsMJAD8I8KngP7BCofA957ZTchvcE6aJ9pPbDFs7+j/uZSoHe0LJW2q+q7z5/4N
 86qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yX7wjZWwEcSOSJsBMffFowYCJGZFyevokl6UEpkpREk=;
 b=U5pVPeOhswSSZ3hQr980oWZOgGDrGdmCVhlmbJPDGYRCvSj/RP1b0cQC/HmIN8aOyZ
 ikrlfbdwBswKpFV81p2SKaUuCkydd1VWM9fWl2NqkS7vPEMa4u26eCIm1hUpZjzZ1tzU
 C5NYSHLfFCvnOSvZXLDe8Fn3KKtZ1+r3pZ3/XuhTvv0EIwY/IQ+ohzyHxcbzHFxcNESB
 7XuBh8sNuUErooHwjv3H1Vh6FDyQDqfe82iv1b2F4PyIz/Daex+LEr2jn+SnBcw743rl
 YdK03D8LYlRKenP3ABHzYc+27nhKmrYTMMWHYHbNZn2GeAzha592pz5QXGh5Wp191TLD
 zdLQ==
X-Gm-Message-State: AOAM531OpU+VBKddpQgIyw8zAUx09CL4UaFSE2tOit9BMenxMQquMdAO
 9lZXLIIJHMKpJPeZasC8rDFzdVZddVLhfXwifF+8i0himoOmaw==
X-Google-Smtp-Source: ABdhPJwc5toW4tFQp1vAZTDAyOycFG+dg6Fz4eYd4yQzjsjDYVGFcTd3i2dkafH0WcJ286QSXdzqkeuLsAk6CJD+rxM=
X-Received: by 2002:a17:902:6845:b029:e4:4d0f:c207 with SMTP id
 f5-20020a1709026845b02900e44d0fc207mr3581294pln.36.1616591121137; Wed, 24 Mar
 2021 06:05:21 -0700 (PDT)
MIME-Version: 1.0
References: <ae975f23-85d9-5390-54fc-6afe0f6ab4d0@konetzka.de>
In-Reply-To: <ae975f23-85d9-5390-54fc-6afe0f6ab4d0@konetzka.de>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 24 Mar 2021 13:05:08 +0000
Message-ID: <CAHt6W4eRPm9AHn+cuZPGfM8kYnjGz1gbfW4yGSD6F226=gegvA@mail.gmail.com>
To: Helge Konetzka <helge@konetzka.de>
Subject: Re: [Spice-devel] Qemu with Spice support on Windows10 host: a
 report
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mar 23 mar 2021 alle ore 20:33 Helge Konetzka
<helge@konetzka.de> ha scritto:
>
> Hello!
>
> Please excuse my english - I am no natural speaker!
>
> Thank you very much for providing spice! I use it in my daily work on a
> qemu/kvm debian host.
>
> I am trying to run my debian qemu setup on windows10.
> For windows a qemu distribution exists in https://qemu.weilnetz.de/, but
> it is missing spice support.
> While reading the changelog of spice 0.14.3 I happily realized that the
> integration is possible now!
>
> Intention of this posting is to document the issues on my way to a
> working install and the first steps
> testing it. I hope, this is the correct list to send it to...
>
> Using a cygwin64 environment I built qemu with x86_64-w64-mingw32
> toolchain.
> Resulting qemu seems to work as good as the distribution version.
>
> To integrate spice support into qemu, I used spice-protocol-0.14.3.tar.xz
> and spice-0.14.3.tar.bz2 as well as spice-0.14.91.tar.bz2
>
> I was able to build and deploy spice-protocol and spice-server to the
> x86_64-w64-mingw32
> sys-root. For the spice-server build I created a patch and added a
> compiler flag to get rid of compile
> and link errors. After a rebuild of qemu spice-support was enabled.
>
> Starting qemu with "-vga qxl -spice
> port=5905,addr=127.0.0.1,disable-ticketing" works well!
> I start spicy having a xserver in background with
> spicy -h 127.0.0.1 -p 5905
> and I am able to connect to qemu and my VM desktop is visible.
>
> The mouse seems to act strange when trying to enter the spicy window,
> but the host mouse pointer
> just stays visible, the guest mouse pointer is working.
>
> Sadly problems occur after adding more spice with:
> "-device virtio-serial-pci -device
> virtserialport,chardev=spicechannel0,name=com.redhat.spice.0 -chardev
> spicevmc,id=spicechannel0,name=vdagent"
> qemu starts logging warnings in a loop and is no longer usable:
> D:\cygwin64\x86_64-w64-mingw32\qemu-5.2.0\qemu-system-x86_64.exe:
> warning: GLib: Too many handles to wait for!
>
> It seems to me this is a problem of qemu which I found independent from
> spice in the distributed version, too.
> It occurs when option "-device virtio-serial-pci" is added.
>
> Below I attach my build path, my patch and reasons for the used compiler
> flags.
> I hope it is useful for improving the ease of build for spice on windows.
>
> Regards, Helge Konetzka.
>
> --------------------------
>
> I deployed spice-protocol and spice-server this way:
>
> spice-protocol-0.14.3$ meson setup builddir
> spice-protocol-0.14.3$ meson configure --prefix
> /usr/x86_64-w64-mingw32/sys-root/mingw builddir
> spice-protocol-0.14.3$ meson install -C builddir
>
> # Add -fstack-protector to automatically added FLAGS
> spice-0.14.91$ export CFLAGS="-g -O2 -fstack-protector"
> spice-0.14.91$ export CXXFLAGS="-g -O2 -fno-exceptions -fno-check-new
> -fstack-protector"
> # Patch to include red-common.h before jpeglib.h
> spice-0.14.91$ patch -p1 < ../spice-0.14.3-cygwin64.patch
> spice-0.14.91$ ./configure --host=x86_64-w64-mingw32
> --prefix=/usr/x86_64-w64-mingw32/sys-root/mingw \
>                  --without-sasl --enable-extra-checks --disable-silent-rules

Surely you don't want --enable-extra-checks for the final product, but
good to test with.

> spice-0.14.91$ make -j4
> spice-0.14.91$ make install
>
> --------------------------
>
> Patch is necessary, because INT32 is defined twice - in
> /usr/x86_64-w64-mingw32/sys-root/mingw/include/basetsd.h
> and /usr/x86_64-w64-mingw32/sys-root/mingw/include/jmorecfg.h
>

We  use CI to check that always compile for Windows using MingW, which
distro are you using?

> $ grep "^\s*typedef.*\bINT32\b"
> /usr/x86_64-w64-mingw32/sys-root/mingw/include/* 2>/dev/null
> /usr/x86_64-w64-mingw32/sys-root/mingw/include/basetsd.h:  typedef
> signed int INT32,*PINT32;
> /usr/x86_64-w64-mingw32/sys-root/mingw/include/jmorecfg.h:typedef long
> INT32;
> Both header files are included transitionally. jpeglib.h includes
> jmorecfg.h, red-common.h includes basetsd.h
> If basetsd.h is processed first (via red-common.h), "#ifndef
> _BASETSD_H_" in jmorecfg.h prevents second definition of INT32
>
> $ cat spice-0.14.3-cygwin64.patch
> diff -Naur spice-0.14.91.orig/server/jpeg-encoder.c
> spice-0.14.91.patched/server/jpeg-encoder.c
> --- spice-0.14.91.orig/server/jpeg-encoder.c    2020-10-26
> 13:18:53.000000000 +0100
> +++ spice-0.14.91.patched/server/jpeg-encoder.c    2021-03-23
> 12:27:18.696134500 +0100
> @@ -17,9 +17,9 @@
>   #include <config.h>
>
>   #include <stdio.h>
> +#include "red-common.h"
>   #include <jpeglib.h>
>
> -#include "red-common.h"
>   #include "jpeg-encoder.h"
>
>   struct JpegEncoderContext {
> diff -Naur spice-0.14.91.orig/server/mjpeg-encoder.c
> spice-0.14.91.patched/server/mjpeg-encoder.c
> --- spice-0.14.91.orig/server/mjpeg-encoder.c    2020-10-26
> 13:18:53.000000000 +0100
> +++ spice-0.14.91.patched/server/mjpeg-encoder.c    2021-03-23
> 12:27:22.501484000 +0100
> @@ -20,9 +20,9 @@
>   #include <stdio.h>
>   #include <inttypes.h>
>   #include <jerror.h>
> +#include "red-common.h"
>   #include <jpeglib.h>
>
> -#include "red-common.h"
>   #include "video-encoder.h"
>   #include "utils.h"
>
> ---------------------------

I think it would be better to move Jpeg includes at the end and add a
comment instead.

>
> Additional Compiler-Flag -fstack-protector is necessary in CFLAGS and
> CXXFLAGS to get rid of linker errors
> see
> https://sourceforge.net/p/mingw-w64/mailman/message/36764708/
> https://github.com/msys2/MINGW-packages/issues/5803
>
> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
> ./.libs/libserver.a(sys-socket.o): in function `socket_newpair':
> /mnt/d/Qemu/src/spice-0.14.91/server/sys-socket.c:284: undefined
> reference to `__stack_chk_fail'
> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
> ./.libs/libserver.a(sys-socket.o): in function `socket_win32_init':
> /mnt/d/Qemu/src/spice-0.14.91/server/sys-socket.c:209: undefined
> reference to `__stack_chk_fail'
> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
> ./.libs/libserver.a(sys-socket.o):sys-socket.c:(.rdata$.refptr.__stack_chk_guard[.refptr.__stack_chk_guard]+0x0):
> undefined reference to `__stack_chk_guard'
> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
> ./.libs/libserver.a(tree.o):/usr/x86_64-w64-mingw32/sys-root/mingw/include/string.h:208:
> undefined reference to `__memset_chk'
> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
> ./.libs/libserver.a(utils.o): in function `red_dump_openssl_errors':
> /mnt/d/Qemu/src/spice-0.14.91/server/utils.c:128: undefined reference to
> `__stack_chk_fail'
> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
> ./.libs/libserver.a(websocket.o): in function `websocket_read':
> /mnt/d/Qemu/src/spice-0.14.91/server/websocket.c:447: undefined
> reference to `__stack_chk_fail'
> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
> ./.libs/libserver.a(websocket.o): in function `memcpy':
> /usr/x86_64-w64-mingw32/sys-root/mingw/include/string.h:202: undefined
> reference to `__memcpy_chk'
> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
> ./.libs/libserver.a(websocket.o): in function `sprintf':
> /usr/x86_64-w64-mingw32/sys-root/mingw/include/stdio.h:372: undefined
> reference to `__chk_fail'
> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
> ./.libs/libserver.a(websocket.o): in function `websocket_new':
> /mnt/d/Qemu/src/spice-0.14.91/server/websocket.c:792: undefined
> reference to `__stack_chk_fail'
> collect2: error: ld returned 1 exit status
> make[4]: *** [Makefile:790: libspice-server.la] Error 1
> make[4]: Leaving directory '/cygdrive/d/Qemu/src/spice-0.14.91/server'
> make[3]: *** [Makefile:942: all-recursive] Error 1
> make[3]: Leaving directory '/cygdrive/d/Qemu/src/spice-0.14.91/server'
> make[2]: *** [Makefile:704: all] Error 2
> make[2]: Leaving directory '/cygdrive/d/Qemu/src/spice-0.14.91/server'
> make[1]: *** [Makefile:539: all-recursive] Error 1
> make[1]: Leaving directory '/cygdrive/d/Qemu/src/spice

I suppose the FORTIFY definition requires -fstack-protector ito get
the right libraries.

Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
