Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4245B3F64
	for <lists+spice-devel@lfdr.de>; Fri,  9 Sep 2022 21:20:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1DA10EDE0;
	Fri,  9 Sep 2022 19:20:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695CA10EDE0
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Sep 2022 19:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1662751251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=E1Vh1WCUwOEG12P8mWUZChyJR2HoUvuALMumKwmGd1g=;
 b=cXqxn430qOgi456741q3qw2e5nJIsA//+V0FU6ATuOG4MT8f4NBFEVBYbsGfezMLVouP1X
 zaUq+H8TPZRx7D9zCF7X5f5G8vTfnYIU9cLr37POdzVbqRv7rHvY/30VnQkr2Wo5vagZj9
 mkM1g8UU+QlHcVvoXRDL3eA5ANl3STY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-304-75dIHbBgNq6f7gPrU8M41Q-1; Fri, 09 Sep 2022 15:20:48 -0400
X-MC-Unique: 75dIHbBgNq6f7gPrU8M41Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97F531C07540;
 Fri,  9 Sep 2022 19:20:47 +0000 (UTC)
Received: from localhost (unknown [10.40.194.248])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 41A5540E80E3;
 Fri,  9 Sep 2022 19:20:47 +0000 (UTC)
Date: Fri, 9 Sep 2022 21:20:45 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <20220909192045.axn7rp26g7thpkpb@tapioca>
References: <SYZP282MB3252EF544B06AD8AAF2E7746C97E9@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4epn7RK3-etaz+BKR5w+svWLhQKeLSkjE4XODQ0a3OiRg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="tq45xo4p567qhekn"
Content-Disposition: inline
In-Reply-To: <CAHt6W4epn7RK3-etaz+BKR5w+svWLhQKeLSkjE4XODQ0a3OiRg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Subject: Re: [Spice-devel] [PATCH] unhide cursor if pos_x is negative
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "Lublin, Uri" <ulublin@redhat.com>, qi zhou <atmgnd@outlook.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--tq45xo4p567qhekn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Sep 06, 2022 at 08:37:15AM +0100, Frediano Ziglio wrote:
> Il giorno mar 6 set 2022 alle ore 06:03 qi zhou <atmgnd@outlook.com> ha scritto:
> >
> > From e1cb184f71e698509c5ae50c20c687130325da52 Mon Sep 17 00:00:00 2001
> > From: Qi Zhou <atmgnd@outlook.com>
> > Date: Tue, 6 Sep 2022 12:14:49 +0800
> > Subject: [PATCH] unhide cursor if pos_x is negative
> >
> > It is valid if position of cursor is negative(not hotspot coordinates). for
> > example: precision section, resize, move, north east arrow...
> >
> > Signed-off-by: Qi Zhou <atmgnd@outlook.com>
> > ---
> >  qxldod/QxlDod.cpp | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp
> > index 341518e..f498115 100755
> > --- a/qxldod/QxlDod.cpp
> > +++ b/qxldod/QxlDod.cpp
> > @@ -4920,7 +4920,7 @@ NTSTATUS QxlDevice::SetPointerPosition(_In_ CONST DXGKARG_SETPOINTERPOSITION* pS
> >          return STATUS_INSUFFICIENT_RESOURCES;
> >      }
> >
> > -    if (pSetPointerPosition->X < 0 || !pSetPointerPosition->Flags.Visible) {
> > +    if (!pSetPointerPosition->Flags.Visible) {
> >          cursor_cmd->type = QXL_CURSOR_HIDE;
> >      } else {
> >          cursor_cmd->type = QXL_CURSOR_MOVE;
> > --
> > 2.32.0.windows.2
> >
> Hi,
>    merged.
>
> Now the issue is getting it compiled and signed. Uri, Victor,
> can somebody do it?

Sorry, I don't know the process but I hope it is still doable (to
get it signed).

Cheers,
Victor

--tq45xo4p567qhekn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmMbkg0ACgkQl9kSPeN6
SE+IDQ//T64rOXKTb7814jd/G5+YbKPoultvtMDkYhyHzBOAZQcd7MukuxKZ60x2
2pMRDmboqRbWEghyEJgV/Yk8IsmEQR7OBPs+PlfNToXEgRHeftCSGLuisoY1AJs9
NdNfMhrFJcLnaMJQzvtHJkMcTmeWm4kwFIqdCpPQ97zeR1OIGnUYiaI5b0JSK6IG
WJfC6qkzYMIpVcp8K0ziWtC0AJPqVRH/4Q3Q8bU9gUFAAXCKV9sRtHSAss0CQRbI
CfFv9Cp20i5ybyWwF3iYqSh/+n8XvunvEpl5p9kx3FC5Fnprkmtb3nGN7jqPUh8h
QU6egLppQORPhiF04rnSxfMnO+nmzqP/wZMjCRAkYw0krPAGQx+MMRkWz+qqRR/V
DTEFPTk6NNx4lwl4UylNZqQUE61o67ejIQhqVo0Ta61CCkB10b1GKVpxKa+VaDtv
iYFLnBJIYDx+6rb8bytg7uAS++dh/qusDO1YHKuIoSeT9gJfGSkl/lfnq6tHvflt
F2RqFyJr116W5hFxeTOUOfkkD6D1jLB77y9suHp7dTsUKsLIjsqaZbcWHQHetzh9
0hkFCNNs4sItO0LBvHJNrCarOVw3lz2uwvZtuYnChBRW8QXqDSetWPz4zoI5g99y
Dv5t7pDBV0xfhANwDQj+v2ntkKBFIYnS0ExWYtK+oigUcduz7cM=
=BA21
-----END PGP SIGNATURE-----

--tq45xo4p567qhekn--

