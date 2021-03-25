Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA42349984
	for <lists+spice-devel@lfdr.de>; Thu, 25 Mar 2021 19:32:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4606EE05;
	Thu, 25 Mar 2021 18:32:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 342 seconds by postgrey-1.36 at gabe;
 Thu, 25 Mar 2021 18:32:21 UTC
Received: from relay.yourmailgateway.de (relay.yourmailgateway.de
 [188.68.61.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA146EE05
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Mar 2021 18:32:21 +0000 (UTC)
Received: from mors-relay-8403.netcup.net (localhost [127.0.0.1])
 by mors-relay-8403.netcup.net (Postfix) with ESMTPS id 4F5tq014Mkz8hHD;
 Thu, 25 Mar 2021 19:26:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=konetzka.de; s=key2;
 t=1616696796; bh=Z5EEQSNuAmUWodYxfOfeVScmPFedReLNB7tDkkSZGYY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=V8TeVb06UsnYfFLZuRw6ye6xts7aHSBCUUkyGCJbMWKLBexO6NsJcR/whzlPxaeAI
 +UkuwpAfA3olXKP/Y4Vu44C6dK4Wqfqi+WipaCCRQOlb7cdiPaL+19Co1SvdDAMy/R
 GMLXLofUGbs6No9NLYb7dQ/5x0TC8PsFzBnRgjAaCRKvRUhcuYkaKpMx5SHGLlcRFA
 4gsO6s4V8uJIRdnIHb720FKmO9D6GB5v0LT23bskLf86kEomisM8glOArBt7AqyYbq
 K309w6MIZct3iKZ2w06uVBcgWkhxwfToTT/GwefxZZ4kMIIdGbXH2QArOy8LwVxdDX
 fWXnIuCVqenfg==
Received: from policy02-mors.netcup.net (unknown [46.38.225.35])
 by mors-relay-8403.netcup.net (Postfix) with ESMTPS id 4F5tq00h48z8hH9;
 Thu, 25 Mar 2021 19:26:36 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at policy02-mors.netcup.net
X-Spam-Flag: NO
X-Spam-Score: -2.9
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=6.31 tests=[ALL_TRUSTED=-1,
 BAYES_00=-1.9, SPF_PASS=-0.001, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from mx2f6e.netcup.net (unknown [10.243.12.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by policy02-mors.netcup.net (Postfix) with ESMTPS id 4F5tpy1Q3gz8sWr;
 Thu, 25 Mar 2021 19:26:34 +0100 (CET)
Received: from [192.168.54.9] (ip-88-152-10-47.hsi03.unitymediagroup.de
 [88.152.10.47])
 by mx2f6e.netcup.net (Postfix) with ESMTPSA id 5572365E41;
 Thu, 25 Mar 2021 19:26:33 +0100 (CET)
Authentication-Results: mx2f6e;
 spf=pass (sender IP is 88.152.10.47) smtp.mailfrom=helge@konetzka.de
 smtp.helo=[192.168.54.9]
Received-SPF: pass (mx2f6e: connection is authenticated)
To: Frediano Ziglio <freddy77@gmail.com>
References: <ae975f23-85d9-5390-54fc-6afe0f6ab4d0@konetzka.de>
 <CAHt6W4eRPm9AHn+cuZPGfM8kYnjGz1gbfW4yGSD6F226=gegvA@mail.gmail.com>
From: Helge Konetzka <helge@konetzka.de>
Message-ID: <87c981de-2ad7-73ae-37a0-81e59229b405@konetzka.de>
Date: Thu, 25 Mar 2021 19:26:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <CAHt6W4eRPm9AHn+cuZPGfM8kYnjGz1gbfW4yGSD6F226=gegvA@mail.gmail.com>
Content-Language: en-US
X-PPP-Message-ID: <161669679353.21594.5714841869896488727@mx2f6e.netcup.net>
X-PPP-Vhost: konetzka.de
X-NC-CID: tb3cK290egBDzYs9TG/qgGlSEDtoWd7nmRHg45/kgUB6
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Am 24.03.21 um 14:05 schrieb Frediano Ziglio:
> Il giorno mar 23 mar 2021 alle ore 20:33 Helge Konetzka ha scritto:
>> I deployed spice-protocol and spice-server this way:
>>
>> spice-protocol-0.14.3$ meson setup builddir
>> spice-protocol-0.14.3$ meson configure --prefix
>> /usr/x86_64-w64-mingw32/sys-root/mingw builddir
>> spice-protocol-0.14.3$ meson install -C builddir
>>
>> # Add -fstack-protector to automatically added FLAGS
>> spice-0.14.91$ export CFLAGS="-g -O2 -fstack-protector"
>> spice-0.14.91$ export CXXFLAGS="-g -O2 -fno-exceptions -fno-check-new
>> -fstack-protector"
>> # Patch to include red-common.h before jpeglib.h
>> spice-0.14.91$ patch -p1 < ../spice-0.14.3-cygwin64.patch
>> spice-0.14.91$ ./configure --host=x86_64-w64-mingw32
>> --prefix=/usr/x86_64-w64-mingw32/sys-root/mingw \
>>                   --without-sasl --enable-extra-checks --disable-silent-rules
> Surely you don't want --enable-extra-checks for the final product, but
> good to test with.
I must admit that I wasn't aware of the impact on the resulting libraries.
>> spice-0.14.91$ make -j4
>> spice-0.14.91$ make install
>>
>> --------------------------
>>
>> Patch is necessary, because INT32 is defined twice - in
>> /usr/x86_64-w64-mingw32/sys-root/mingw/include/basetsd.h
>> and /usr/x86_64-w64-mingw32/sys-root/mingw/include/jmorecfg.h
>>
> We  use CI to check that always compile for Windows using MingW, which
> distro are you using?
Cygwin64. I had no header problems compiling because of INT32 with 
Msys2. Didn't know MingW-Distribution yet.
>> $ cat spice-0.14.3-cygwin64.patch
>> diff -Naur spice-0.14.91.orig/server/jpeg-encoder.c
>> spice-0.14.91.patched/server/jpeg-encoder.c
>> --- spice-0.14.91.orig/server/jpeg-encoder.c    2020-10-26
>> 13:18:53.000000000 +0100
>> +++ spice-0.14.91.patched/server/jpeg-encoder.c    2021-03-23
>> 12:27:18.696134500 +0100
>> @@ -17,9 +17,9 @@
>>    #include <config.h>
>>
>>    #include <stdio.h>
>> +#include "red-common.h"
>>    #include <jpeglib.h>
>>
>> -#include "red-common.h"
>>    #include "jpeg-encoder.h"
>>
>>    struct JpegEncoderContext {
>> diff -Naur spice-0.14.91.orig/server/mjpeg-encoder.c
>> spice-0.14.91.patched/server/mjpeg-encoder.c
>> --- spice-0.14.91.orig/server/mjpeg-encoder.c    2020-10-26
>> 13:18:53.000000000 +0100
>> +++ spice-0.14.91.patched/server/mjpeg-encoder.c    2021-03-23
>> 12:27:22.501484000 +0100
>> @@ -20,9 +20,9 @@
>>    #include <stdio.h>
>>    #include <inttypes.h>
>>    #include <jerror.h>
>> +#include "red-common.h"
>>    #include <jpeglib.h>
>>
>> -#include "red-common.h"
>>    #include "video-encoder.h"
>>    #include "utils.h"
>>
>> ---------------------------
> I think it would be better to move Jpeg includes at the end and add a
> comment instead.

I just wanted to drop a helpful patch, in case anyone wants to build 
spice-server in cygwin64 environment.

But because cygwin64's glib package is too old to support using qemu 
with spice, I guess this patch is obsolete. With Msys2 I was able to 
create a working integration.


>> Additional Compiler-Flag -fstack-protector is necessary in CFLAGS and
>> CXXFLAGS to get rid of linker errors
>> see
>> https://sourceforge.net/p/mingw-w64/mailman/message/36764708/
>> https://github.com/msys2/MINGW-packages/issues/5803
>>
>> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
>> ./.libs/libserver.a(sys-socket.o): in function `socket_newpair':
>> /mnt/d/Qemu/src/spice-0.14.91/server/sys-socket.c:284: undefined
>> reference to `__stack_chk_fail'
>> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
>> ./.libs/libserver.a(sys-socket.o): in function `socket_win32_init':
>> /mnt/d/Qemu/src/spice-0.14.91/server/sys-socket.c:209: undefined
>> reference to `__stack_chk_fail'
>> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
>> ./.libs/libserver.a(sys-socket.o):sys-socket.c:(.rdata$.refptr.__stack_chk_guard[.refptr.__stack_chk_guard]+0x0):
>> undefined reference to `__stack_chk_guard'
>> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
>> ./.libs/libserver.a(tree.o):/usr/x86_64-w64-mingw32/sys-root/mingw/include/string.h:208:
>> undefined reference to `__memset_chk'
>> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
>> ./.libs/libserver.a(utils.o): in function `red_dump_openssl_errors':
>> /mnt/d/Qemu/src/spice-0.14.91/server/utils.c:128: undefined reference to
>> `__stack_chk_fail'
>> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
>> ./.libs/libserver.a(websocket.o): in function `websocket_read':
>> /mnt/d/Qemu/src/spice-0.14.91/server/websocket.c:447: undefined
>> reference to `__stack_chk_fail'
>> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
>> ./.libs/libserver.a(websocket.o): in function `memcpy':
>> /usr/x86_64-w64-mingw32/sys-root/mingw/include/string.h:202: undefined
>> reference to `__memcpy_chk'
>> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
>> ./.libs/libserver.a(websocket.o): in function `sprintf':
>> /usr/x86_64-w64-mingw32/sys-root/mingw/include/stdio.h:372: undefined
>> reference to `__chk_fail'
>> /usr/lib/gcc/x86_64-w64-mingw32/10/../../../../x86_64-w64-mingw32/bin/ld:
>> ./.libs/libserver.a(websocket.o): in function `websocket_new':
>> /mnt/d/Qemu/src/spice-0.14.91/server/websocket.c:792: undefined
>> reference to `__stack_chk_fail'
>> collect2: error: ld returned 1 exit status
>> make[4]: *** [Makefile:790: libspice-server.la] Error 1
>> make[4]: Leaving directory '/cygdrive/d/Qemu/src/spice-0.14.91/server'
>> make[3]: *** [Makefile:942: all-recursive] Error 1
>> make[3]: Leaving directory '/cygdrive/d/Qemu/src/spice-0.14.91/server'
>> make[2]: *** [Makefile:704: all] Error 2
>> make[2]: Leaving directory '/cygdrive/d/Qemu/src/spice-0.14.91/server'
>> make[1]: *** [Makefile:539: all-recursive] Error 1
>> make[1]: Leaving directory '/cygdrive/d/Qemu/src/spice
> I suppose the FORTIFY definition requires -fstack-protector ito get
> the right libraries.

It turned out mandatory for successful builds in both, Cygwin64 and Msys2.

Thanks for your remarks and hints.

Helge Konetzka.

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
