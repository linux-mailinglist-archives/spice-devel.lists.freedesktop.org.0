Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F4D14C7F3
	for <lists+spice-devel@lfdr.de>; Wed, 29 Jan 2020 10:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EFF66F4B2;
	Wed, 29 Jan 2020 09:19:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E4D6F4B2
 for <spice-devel@lists.freedesktop.org>; Wed, 29 Jan 2020 09:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580289549;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Hs5CG5AnpOxrZKhexc/5lnlfYJ+KFglsK9JSdqpOOmc=;
 b=jB5pwfz9+79JveJHF0EQbxyuclwJPxAFxeK/093EOPQaA4InrLOItxyRm7hSKvYrLQ4siA
 YFohG/AaWjG0Fm2P9zeSfsK2dHtNOgZJs6LINtlZrghIxxNdCaab9T/YzOELxDmcuVEZZd
 n00JrRv9mmfnadDN/u9uXk5wRu6ExJk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-291-YKEmU5XWN2Gk11fXvAKH4A-1; Wed, 29 Jan 2020 04:19:07 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46EA21005512
 for <spice-devel@lists.freedesktop.org>; Wed, 29 Jan 2020 09:19:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E0535C219
 for <spice-devel@lists.freedesktop.org>; Wed, 29 Jan 2020 09:19:06 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 336BD85775;
 Wed, 29 Jan 2020 09:19:06 +0000 (UTC)
Date: Wed, 29 Jan 2020 04:19:05 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: Daniel =?utf-8?Q?P=2E_Berrang=C3=A9?= <berrange@redhat.com>
Message-ID: <1226770435.9970264.1580289545530.JavaMail.zimbra@redhat.com>
In-Reply-To: <20200123171442.GH657556@redhat.com>
References: <6038cad0-6cfa-22cd-f3df-3a4f82e0e9c1@redhat.com>
 <20200123171442.GH657556@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.25]
Thread-Topic: help debugging: Assertion `!xcb_xlib_threads_sequence_lost'
 failed.
Thread-Index: yaabFOKTaNWXrBSYdct6IuXP23CE0Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: YKEmU5XWN2Gk11fXvAKH4A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] help debugging: Assertion
 `!xcb_xlib_threads_sequence_lost' failed.
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> 
> On Thu, Jan 23, 2020 at 11:54:50AM -0500, Cole Robinson wrote:
> > Hi all,
> > 
> > For the past year+ we have had a steady trickle of virt-manager X11
> > threading crashes. This is the f31 bug I've duped all the other ones
> > too, but there were a handful that were auto closed by Fedora
> > end-of-life bug cleanup:
> > https://bugzilla.redhat.com/show_bug.cgi?id=1756065
> > 
> > The message that goes along with this is:
> > 
> > [xcb] Unknown sequence number while processing queue
> > [xcb] Most likely this is a multi-threaded client and XInitThreads has
> > not been called
> > [xcb] Aborting, sorry about that.
> > remote-viewer: xcb_io.c:263: poll_for_event: Assertion
> > `!xcb_xlib_threads_sequence_lost' failed.
> > Aborted (core dumped)
> > 
> > That may not apply to all the poll_for_error() bugs but it's most of the
> > ones I have dug into.
> > 
> > I figured there was some threading issue in virt-manager and I was
> > mostly ignoring the bugs until I found time to try and diagnose. I'm not
> > really finding anything in virt-manager though, and some similar issues
> > make me think maybe this is spice-gtk or something lower.
> > 
> > This user can reproduce the same error with remote-viewer + spice + X11
> > ssh forwarding: https://bugzilla.redhat.com/show_bug.cgi?id=1758384
> > 
> > This user can reproduce the virt-manager crash multiple times a day, and
> > it's always when interacting with a spice-gtk console:
> > https://bugzilla.redhat.com/show_bug.cgi?id=1792576
> > 
> > Anyone have any ideas how to debug this further? What spice-gtk
> > debugging info would be helpful?
> 
> FWIW if you're trying to reproduce this yourself, the key factor here
> is that they are using X11, not Wayland. Given that Fedora defaults
> to Wayland this likely explains why only certain people are seeing
> it.
> 
> The error message strongly suggests that there are multiple threads
> making X11 calls at the same time. This in turn means multiple threads
> are making GTK calls at the same time, and this is expressly forbidden
> by GTK - GTK APIs are only permitted to be invoked from the main thread
> which runs the event loop.
> 
> It does look like a probable spice issue given the common crash in
> remote-viewer, as aside from GTK itself and GTK-VNC, that's the only
> UI library both apps use.
> 
> Regards,
> Daniel

Hi,
  found the root cause, a bug in libX11, see updates to
https://bugzilla.redhat.com/show_bug.cgi?id=1758384.
As it's not specifically related to virt-manager/virt-viewer which
Product/Component should the bug moved to?

Regards,
  Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
