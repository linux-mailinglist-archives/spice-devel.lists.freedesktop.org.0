Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D231F9514
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jun 2020 13:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3F089CE2;
	Mon, 15 Jun 2020 11:13:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9429289CE2
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jun 2020 11:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592219609;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Kxc6N3tbfl7V1Jgm7vMSlOxN9s6LP55TOM4BAMaJNMI=;
 b=cmBE/UeGMoEiwxkJAt/0dim9ezLM4Jg+lMnfwJY/FF8Q3lXs/WvLZctrIZykqlzzOyBRWC
 4HrRddCGLFyteq2qJwX17npwUGEtLBBbTU8ELxFnIsPV7kkStolOQGp3u2RO5YUMk5xfbr
 /6PGCqZSy1JgoercAaYRcMdJcWE6Yn4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-393-VEDYNRNeOrK-WW80sJGWaQ-1; Mon, 15 Jun 2020 07:13:24 -0400
X-MC-Unique: VEDYNRNeOrK-WW80sJGWaQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3EDC418A8223
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jun 2020 11:13:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 38E977F4F9
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jun 2020 11:13:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 32A3A1809542;
 Mon, 15 Jun 2020 11:13:23 +0000 (UTC)
Date: Mon, 15 Jun 2020 07:13:22 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1239063427.30559640.1592219602905.JavaMail.zimbra@redhat.com>
In-Reply-To: <CADJ1XR2az5F2qvwMrFxo_--SfwYFRP_Dw8=6ii8dLYryzZF96g@mail.gmail.com>
References: <CADJ1XR3kFo__t5DsGf3xVJCxF=QSrYge1RWG9qN4kW48eBYpLQ@mail.gmail.com>
 <CADJ1XR2az5F2qvwMrFxo_--SfwYFRP_Dw8=6ii8dLYryzZF96g@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.26]
Thread-Topic: Review of the C++ patches
Thread-Index: /EV61gwDwCIZTLVFdGcp6M5fplyxUA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Review of the C++ patches
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> commit 7b3637417062fe657c0bf1fced5ef59a489dbdc3
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Mon Mar 9 10:04:24 2020 +0000
>
>   Adjust some warnings
>
>   Remove -Werror and add -fpermissive, this will allow to compile C code with
>   a GNU C++ compiler.
>
>   Ignore warnings as our code use some feature like empty arrays.
>
>   Remove warnings not available in C++.
>
>   Bump GLIB_VERSION_MAX_ALLOWED to reduce the warning, looks like the
>   GLib headers for C++ are not able to handle them correctly.
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch adds multiple warning to the build systems.
>
> I understand that they ease the transition from C to 'C + C++', but
> without a deeper look it's hard to tell which ones should be
> eventually removed and which ones (if any) must stay because of the
> C/C++ cooperation.
>
> Minor: the explicit-cast fix in `server/red-client.c` doesn't seem to
> belong to this patch. I wonder if it's a patch split issue or if there
> is a link with build system patch.
>
>
> Apart from this minor comment, the patch looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

Yes, could be a split issue. Not that changes much at the end of the series
but probably was a split.

>
> commit e788e6e4762fc1c9a13a44b05907fb109bef9cde
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Wed May 22 07:45:30 2019 +0100
>
>   Remove conversion warnings
>
>   Use casts to avoid all that warning.
>   They should go away once you use more type safe types.
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch adds explicit casting in many (many many) places.
>
> Minor style inconsistency: pointer cast types are sometimes written `(type
> *)`, sometimes `(type*)`, and once `(type* )`.
>

It was a pity, sorry about that

> There is a type changed from `RedChannelClient *rcc` to
> `CursorChannelClient *ccc` in function
> `cursor_channel_client_reset_cursor_cache`. I'm not sure this belonged
> to this patch. But the change seems to be consistent, with `ccc =
> CURSOR_CHANNEL_CLIENT(rcc)`
>
>
> Besides that, the patch looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

thanks

>
> commit e6e6ded681ff154f236f260f071389c4c8c0d944
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Sun May 26 15:10:28 2019 +0100
>
>   Use C++ IS-A relationship for RedChannelClient and RedChannel
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
>
> The code modifications of this patch uses inheritance for structure
> types with a parent:
>
>     struct CommonGraphicsChannel
>     {
>         RedChannel parent;
>
>         ...
>     };
>
> becomes:
>
>     struct CommonGraphicsChannel: public RedChannel
>     {
>         CommonGraphicsChannelPrivate *priv;
>     };
>
>
> Minor: this patch renames 19 files from C to C++ without any
> modification, they could have been in a dedicated patch. Likewise,
> some modifications are purly C-to-C++ transition (eg,
> `s/inttypes.h/ctypes/`).
>
> Minor: some of the modifications could have been included in the
> previous patch (casts) or elsewhere (eg, assert-before-ref check).
>
> Besides that, the patch looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

Probably the files included some headers that requires C++.

>
> commit 874e7450887375730a4b3675b9b1b7002b440ea8
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Tue May 28 05:03:01 2019 +0100
>
>   Move all red_channel_client_* functions in header as methods
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This (big) patch rewrites `red_channel_client_*(rcc, ...)` functions
> and calls into object methods.
>
> One aspect that could be discussed is the usage of the implicit
> `this`:
>
>     red_channel_client_push(rcc); // old
>     push(); // new, inside another RedChannelClient method
>
> my preference would be for avoiding this implicit `this`:
>
>     this->push();
>
> I think it makes the code easier to read, as you immediately know that
> `push` belongs (or is inherited) to the current class.
>
> I don't know how common this is in C++, but a Python motto is
> `Explicit is better than implicit`.
>
> Besides that, the patch looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

The use of "this" usually is pretty limited in C++ general styl,
to distinguish in case were is ambiguous or to retrieve just the
pointer to the object.
Other languages have much more explicit usage of this/self but for
other reasons (Python being a dynamic language, other because they
are not much object oriented).
I was discussion the distinguish and I found a "-Wshadow" warning in
gcc which could avoid this issue.

>
> commit 38cd152952968e37d0cc96e95e3e5e47a2f66c2f
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Sun Mar 1 19:38:38 2020 +0000
>
>   automake: Link with C++ linker
>
>   If automake sees no C++ files in the source it assumes have to
>   use C linker settings not linking C++ library.
>   This was not a problem as code did not use C++ libraries but next
>   patch will use pure virtual function call.
>   It could be provided but as later we will use RTTI use C++ library.
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch adds a `dummy.cpp` in the SOURCES files in order to trick
> the linker to use C++ linking. The linker is aware of this trick and
> doesn't complain about the missing file.
>
> The patch looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

yes, crazy trick, but it was on Automake manuals!

> 
> 
> On Mon, Jun 8, 2020 at 5:10 PM Kevin Pouget <kpouget@redhat.com> wrote:
> >
> > Hello spice-devel
> >
> > I worked on the review of Frediano's C++ patches during the last weeks,
> > I tried to understand the gist of the commits and summarize it in the
> > review message.
> > It's not an in-depth review, and I only spotted minor details.
> >
> > A few patches are not acked, mostly because they were too big for me to
> > study carefully enough.
> >
> > Overall, I really appreciate the effort made to adapt the code to C++, from
> > my point of view it is greatly beneficial for the code as it reduces a lot
> > the amount of code duplication (boilerplate code) by leveraging C++
> > inheritance, polymorphism, virtual methods, etc.
> > Likewise, the ref-counting is made simpler and safer with custom classes
> > (share_ptr). These custom classes mimic existing ones AFAICT, but they are
> > more "C-safe" as they cannot throw exceptions.
> >
> > 3 mails will follow with the reviews.
> >
> > Best regards,
> >
> > Kevin
> 
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
