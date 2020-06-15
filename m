Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4221F9519
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jun 2020 13:15:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED3E6E0BC;
	Mon, 15 Jun 2020 11:15:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E3AC6E0BC
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jun 2020 11:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592219710;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/oYO/YwT0FEXn86GK05QzxvL9iwXB9ceZ4OzdXp1VsY=;
 b=UKLyomGkNd0Xc3E8NVN/QD+73VrDMjlyEulBtKA9kgVSZawh4ZBdbSZoFsKR+TNRduZnvu
 KYcmDrPXsJN2VcPrj3FQfP+H8q76f88idvw/zNWx8mGlnIb/uUzn8cpmIwnz2mT9owKucj
 2t7XJfDQ4UdUXPicDJoJ8KeTZdkXCNk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-509-2sWLI7wcPC-RpTAvSKz-Eg-1; Mon, 15 Jun 2020 07:15:08 -0400
X-MC-Unique: 2sWLI7wcPC-RpTAvSKz-Eg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EFA029116E
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jun 2020 11:15:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E89E619D7D
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jun 2020 11:15:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E15581809542;
 Mon, 15 Jun 2020 11:15:07 +0000 (UTC)
Date: Mon, 15 Jun 2020 07:15:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1123560576.30559684.1592219707895.JavaMail.zimbra@redhat.com>
In-Reply-To: <CADJ1XR1P_O9GUs1uHO-w3NCfar61iiVd_GS3HomZFmC=+zAhjQ@mail.gmail.com>
References: <CADJ1XR3kFo__t5DsGf3xVJCxF=QSrYge1RWG9qN4kW48eBYpLQ@mail.gmail.com>
 <CADJ1XR1P_O9GUs1uHO-w3NCfar61iiVd_GS3HomZFmC=+zAhjQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.26]
Thread-Topic: Review of the C++ patches
Thread-Index: zS4nFqBYGpgbTv863Ce1c7sfrAL4PQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
> commit 43c6bf91b7c53ee9f93f7ea1cead5bba94c61f88
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Thu Mar 5 13:01:27 2020 +0000
>
>   reds: Remove a weak pointer usage
>
>   RedCharDevice can all be removed just calling unref, beside
>   the agent that needs special threatment.
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> The logic of the code before/after the patch is not fully clear to me.
>
> I understand that the clean-up of `RedCharDevice`-based objects is
> simplified thanks to inheritance (`smartcard_device_disconnect` and
> `spicevmc_device_disconnect`'s behavior is now identical, so the
> cleanup is done in `reds_remove_char_device`.
>
> Seems fine to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

It's a pretty "standard" way to implement weak/strong references.
I think it's the same used by standard C++. It uses 2 counters, one
for weak pointers, the other for strong ones.

>
> commit ab7486a9e8667160390811abc677dfdc5ee33028
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Tue Mar 17 19:11:18 2020 +0000
>
>   main-channel-client: Automatically convert
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch converts C functions to C++ methods, and updates the code
> accordingly.
>
> Looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

The "Automatic" patches are almost helped by a series of really ugly scripts
(a mix of Coccinelle, Python, Bash and Perl!).

>
> commit fe0298a2905121a02ee64f429e9f88148d17c6ee
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Fri Mar 6 04:03:24 2020 +0000
>
>   safe-list: Add a class to implement a list with safe iterators
>
>   The reason to not using STL is that our code from how was designed requires
>   the iterator to be safe to the delete of the element pointed by the iterator.
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch defines a `safe_list` class. As far as I understand (and as
> the name/commit/comments suggest), this class allows the deletion of
> the current iterator, while traversing the list.
>
>     /* Implementation of a list with more "safe" iterators.
>      * Specifically the item under an iterator can be removed while scanning
>      * the list. This to allow objects in the list to delete themselves from
>      * the list.
>      */
>
> I'm not a C++ export, but what I can read looks good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

Unfortunately the code was and is relaying on this behaviour.
Better safe than sorry!

>
> commit 767a9caded058fbde64fa4cc8e719c6ccef5f707
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Fri Mar 6 04:13:00 2020 +0000
>
>   Allow to compile without C++ library
>
>   Provide a suitable allocator using GLib
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch defines a class-wrapper `Mallocator` around GLib
> `g_malloc/g_free` functions. This class is used with the `safe_list`
> class. The `==` and `!=` operators of the class are defined to return
> `true` / `false`, respectively.
>
> The purpose of this class and the operator overloading is unclear to
> me, but what I can read looks good.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

Mainly the purpose is allowing to tell other container how to handle
memory allocations replacing default allocations.

>
> commit 54c083091943f61a8ebe0b4d420c3311c37df3e6
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Sun Mar 8 18:54:23 2020 +0000
>
>   input-channels: Improve encapsulation
>
>   Update member access to limit it.
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch changes the visibility of multiple methods.
>
> Seems safe to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

Yes, I think some warnings are raised if you don't have these
changes.

>
> commit 597461e443962fa0294794b1db3d2f1c0fb18812
> Author: Frediano Ziglio <fziglio@redhat.com>
> Date:   Sun Mar 8 05:46:56 2020 +0000
>
>   Add and use red::make_shared
>
>   Allow to create an object already contained in a shared pointer
>   to avoid having not owned objects.
>
>   Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>
> This patch uses more `share_ptr` pointer wrappers.
>
> Minor: seems that some TODOs are left in the code:
>
>     // XXX make_shared
>
> Seems good to me.
>
> Acked-by: Kevin Pouget <kpouget@redhat.com>

Yes, there are a bit of "XXX", but none are regressions.

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
