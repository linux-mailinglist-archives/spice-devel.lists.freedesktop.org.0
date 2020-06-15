Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DFC1F9517
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jun 2020 13:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DE46E05D;
	Mon, 15 Jun 2020 11:14:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EAE16E05D
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jun 2020 11:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592219693;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8XIPd7Lnl56vRIbwiy+pSQ2U2Gtkk1aFM7orYJp6ZPg=;
 b=dRivoso8qffpQlxf6GtFxfNqOhD3vnZlIofoN94AjIMcNw13srYQuRxROWOxKF9pMtjzkC
 IY+hdpR0T9voF6QbIUfvh7onX9LpKfEG/tTmNdvb6ReVpidkV+TEG/mXltp87uP0cMq8aB
 m8HdUXlecFJ//PS95J0TbFQcWSKvaXY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-S4m9vKVQOFCpDBBXb9Bfog-1; Mon, 15 Jun 2020 07:14:41 -0400
X-MC-Unique: S4m9vKVQOFCpDBBXb9Bfog-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AE47100CCC6
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jun 2020 11:14:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 351DC768AE
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jun 2020 11:14:38 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2EBF6833A0;
 Mon, 15 Jun 2020 11:14:38 +0000 (UTC)
Date: Mon, 15 Jun 2020 07:14:38 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <2028661974.30559670.1592219678158.JavaMail.zimbra@redhat.com>
In-Reply-To: <CADJ1XR3yhwLdVMkHbk1-Z51COUkPgvQq5Tm0zdJnTQgkLp+=kQ@mail.gmail.com>
References: <CADJ1XR3kFo__t5DsGf3xVJCxF=QSrYge1RWG9qN4kW48eBYpLQ@mail.gmail.com>
 <CADJ1XR3yhwLdVMkHbk1-Z51COUkPgvQq5Tm0zdJnTQgkLp+=kQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.26]
Thread-Topic: Review of the C++ patches
Thread-Index: Pegeg0JiPa/9jqcjz0ompq2iUHh1Mg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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

>
> commit 61affed2a2e36b59e6935e608d7d80242f976c7e
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Mon May 20 16:49:17 2019 +0100
>
>   red-channel-client: Better private initialisation
>
>   Initialise RedChannelClientPrivate fields from the new
>   constructor instead from RedChannelClient.
>   Also change some fields to constants (actually many of them).
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch moves constructor/destructor code from `RedChannelClient`
> to `RedChannelClientPrivate`.
>
> Minor: the diff of this patch is confusing, as the constructor and
> destructor are mixed up as the order of the function has changed :#]
>

Not clear. What do you mean? I usually tried to reduce the diff size.


>
> Minor: I don't see "many" fields changed to `const`, only 3 of them
> ...?
>
> Besides these minor comments, the patch looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

>
> commit 2b04f644f670af79fef9332deb75722f056c5819
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Fri May 24 20:00:01 2019 +0100
>
>   red-channel-client: Move handle_migrate_data as virtual function
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch rewrites the `handle_migrate_date` attribute callback into
> a virtual function of the `RedChannelClient` class.
>
> After a short investigation, I don't understand where
> `channel_class->handle_migrate_data` used to be defined, so I cannot
> double check that it was actually removed ...
>
> Part from this, the patch looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

Part of the virtual method were in RedChannel and not in RedChannelClient
which was pretty confusing. Before GObject client and channel code
were pretty close (same file) and all virtual methods (callback in C)
were in RedChannel.

>
> commit bd4b1caeb8e629286457714e0ab412918d13e9c1
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Mon Mar 9 18:31:20 2020 +0000
>
>   Use template to make adding timers/watches safer
>
>   Instead of forcibly cast functions cast only if data pointer and
>   function pointers match. This also allows to remove dangerous
>   casts all over the place.
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch improves the type safety of timers/watches functions, by
> relying on C++ templates.
>
> Minor: I don't understand why the definitions are protected with
> `#ifdef __cplusplus`: if we're not compiling with C++, these functions
> are not available? seems strange to me to have 2 different sets of
> function available after a `#include` based on C/C++ distinction ...?
>
> With a solution/answer for this concern:
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

I would say it's normal, but maybe it got obsolete (meaning the file
is now only compatible with C++).
Similar pattern in spice-common/common/rect.h (no, I didn't write it,
it was there since... I don't know!)

>
> commit 435ea33540941e93fdf942a1cd16222f3cbbbcbd
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Tue Mar 3 14:47:53 2020 +0000
>
>   Reduce C++ symbols visibility
>
>   This allows the compiler to do some more optimisations on the
>   produced binary.
>   To allows possible future portability include header/footer in
>   some helper header files.
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> *This patch encapsulates the visibility macros
>  (`G_BEGIN_DECLS`/`G_END_DECLS`) into dedicated header files
>  (`push-visibility.h`/`pop-visibility.h`).
>
> It also changes the visibility to this:
>
>     #if defined(__GNUC__) && __GNUC__ >= 4 && !defined(__MINGW32__)
>     #pragma GCC visibility push(hidden)
>     #endif
>
> and
>
>     #if defined(__GNUC__) && __GNUC__ >= 4 && !defined(__MINGW32__)
>     #pragma GCC visibility pop
>     #endif
>
> I don't really know the implication of these last changes, so I cannot
> ack...

The reason about it is not that easy, there is a long webpage on GCC manuals
which is pretty good. They reduce symbols visibility allowing some additional
optimizations of the code. Semantically they declare the various classes
as internal to the module.

>
> commit 13f27ab8e9ad4d412cba3398e3de206b04699d7f
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Wed May 29 08:56:32 2019 +0100
>
>   sound: Make on_message_done a virtual function
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch makes `on_message_done` method virtual, with a default
> empty body, and changes the rest of code accordingly.
>
> Looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

I got a recent MR to improve this. The history of SoundChannel is pretty
weird, I remember I almost rewrote the classes. They were using RedChannelClient
but at the same time replacing these objects with other code.

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

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
