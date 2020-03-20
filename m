Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B2918C6FC
	for <lists+spice-devel@lfdr.de>; Fri, 20 Mar 2020 06:27:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F038D6E102;
	Fri, 20 Mar 2020 05:27:45 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
X-Greylist: delayed 379 seconds by postgrey-1.36 at gabe;
 Fri, 20 Mar 2020 05:27:44 UTC
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E246E102
 for <spice-devel@freedesktop.org>; Fri, 20 Mar 2020 05:27:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68C66107ACC4;
 Fri, 20 Mar 2020 05:21:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EEFB9081;
 Fri, 20 Mar 2020 05:21:24 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 13AE61809563;
 Fri, 20 Mar 2020 05:21:24 +0000 (UTC)
Date: Fri, 20 Mar 2020 01:21:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?Q?Marc-Andr=C3=A9?= Lureau <marcandre.lureau@gmail.com>
Message-ID: <2121591056.17755756.1584681683491.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAJ+F1CJcW4Eua+Z6pUYa1QmqsD1FPSG3Lr+3csd4EaFuYJ3oUA@mail.gmail.com>
References: <20200319170555.672E67610F@kemper.freedesktop.org>
 <CAJ+F1CJcW4Eua+Z6pUYa1QmqsD1FPSG3Lr+3csd4EaFuYJ3oUA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.23]
Thread-Topic: src/channel-main.c
Thread-Index: CUtuk7j5vX/mXZZ5wq1Ultae+qhyNg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Spice-devel] [Spice-commits] src/channel-main.c
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
Cc: spice-commits@lists.freedesktop.org, spice-devel@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> 
> Hi
> 
> On Thu, Mar 19, 2020 at 6:05 PM GitLab Mirror
> <gitlab-mirror@kemper.freedesktop.org> wrote:
> >
> >  src/channel-main.c |   36 +++++++++++++++++++-----------------
> >  1 file changed, 19 insertions(+), 17 deletions(-)
> >
> > New commits:
> > commit 1defa5c0f0107b8496b7696408aad064c65947a5
> > Author: Frediano Ziglio <fziglio@redhat.com>
> > Date:   Tue Mar 17 21:27:19 2020 +0000
> >
> >     channel-main: Fix indentation
> >
> >     Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> >     Acked-by: Victor Toso <victortoso@redhat.com>
> >
> > diff --git a/src/channel-main.c b/src/channel-main.c
> > index 1e85a36..0a0b9ca 100644
> > --- a/src/channel-main.c
> > +++ b/src/channel-main.c
> > @@ -283,13 +283,13 @@ static void spice_main_get_property(GObject
> > *object,
> >      switch (prop_id) {
> >      case PROP_MOUSE_MODE:
> >          g_value_set_int(value, c->mouse_mode);
> > -       break;
> > +    break;
> >      case PROP_AGENT_CONNECTED:
> >          g_value_set_boolean(value, c->agent_connected);
> > -       break;
> > +    break;
> >      case PROP_AGENT_CAPS_0:
> >          g_value_set_int(value, c->agent_caps[0]);
> > -       break;
> > +    break;
> 
> Hmm, this looks weird:
> 
> https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/channel-main.c#L283
>

Indeed, thanks

https://gitlab.freedesktop.org/spice/spice-gtk/-/merge_requests/38

Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
