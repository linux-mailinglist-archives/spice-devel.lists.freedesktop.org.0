Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C70A269627F
	for <lists+spice-devel@lfdr.de>; Tue, 14 Feb 2023 12:32:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E229210E88E;
	Tue, 14 Feb 2023 11:32:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B862810E08C
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Feb 2023 11:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676374343;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=G6yiivrBNpBAVBeYM0CcvTh65wfUpc9SGzN5fpnJN5I=;
 b=JjFZwV6HGijjxz1iKevPNp/AShpwPfwbJMOKHL/Z+3ew/YbOtPQ4lJMIDvYEHE54MrOduc
 VRjzH3Y7ovNO2Wyr/vDXd9cLMjys/11pZxj7tIlKpK/FPEGgY2abb+v08niManBbvkhLKL
 9akpNYeTgMbIhWHH9fsvlqBA1ofTCF0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-SeTvJqzhNhKDAAknWKBrZA-1; Tue, 14 Feb 2023 06:32:19 -0500
X-MC-Unique: SeTvJqzhNhKDAAknWKBrZA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5429858F09;
 Tue, 14 Feb 2023 11:32:18 +0000 (UTC)
Received: from localhost (ovpn-193-2.brq.redhat.com [10.40.193.2])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5F1D6492B03;
 Tue, 14 Feb 2023 11:32:17 +0000 (UTC)
Date: Tue, 14 Feb 2023 12:32:16 +0100
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <20230214113216.ll3xhuzpthqdu4lh@tapioca>
References: <SYZP282MB3252532513FAB75D92C10DC8C9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4fwa1r7f4gm5=_p2Q4cYHPdE5Dsk2484=O-9sNC1Wq2sA@mail.gmail.com>
 <SYZP282MB325243B7EB9CEF5B87E9AF9FC9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
 <CAHt6W4d+HUBhJzCZGK7GWOampMZ7iVnPzhONyCd8=FjjbvTMYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="lklulibgk3tqp7ux"
Content-Disposition: inline
In-Reply-To: <CAHt6W4d+HUBhJzCZGK7GWOampMZ7iVnPzhONyCd8=FjjbvTMYQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
Subject: Re: [Spice-devel] [PATCH] reset qxl to vga mode
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
 admin <admin@atmgnd.cn>, qi zhou <atmgnd@outlook.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--lklulibgk3tqp7ux
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Freddy,

On Tue, Feb 14, 2023 at 11:08:21AM +0000, Frediano Ziglio wrote:
> Il giorno mar 14 feb 2023 alle ore 10:50 qi zhou <atmgnd@outlook.com>
> ha scritto:
> >
> > > Hi,
> > >   It looks good to me. Why it was QXL_IO_MEMSLOT_ADD I don't know. On
> > > Linux is QXL_IO_RESET too.
> >
> > May be a typo ?, here you can use sysinternal's notmyfault to test this=
 bug.
> > 1. launch qemu use legacy bios mode. make sure qxl driver is active, th=
en open notmyfault64.exe click on crash button. It will trigger a bsod
> > 2. without reset/patch, we cannot see bluescreen shown
> >
> > before qxl revision 5, even DodResetDevice does nothing, the qemu will =
do reset after detect qxl mode mismatch. see https://github.com/qemu/qemu/b=
lob/ed71c09ffd6fbd01c2a487d47291ae57b08671ea/hw/display/qxl.c#L1315
> >
> > But qxl revison 5+ requires explicit reset
> >
> > reference:
> > not myfault: https://learn.microsoft.com/en-us/sysinternals/downloads/n=
otmyfault
> > DXGKDDI_RESET_DEVICE : https://learn.microsoft.com/en-us/windows-hardwa=
re/drivers/ddi/dispmprt/nc-dispmprt-dxgkddi_reset_device#remarks
>=20
> Merged.
>=20
> Now the question is about release and build.
>=20
> Uri, Victor, should we pack a new release?

I'm not sure how to release it. We used to bundle it in
spice-guest-tools but there was a signing process too.

I see that virtio-win also bundles spice-guest-tools so, they
ship our ancient release... I see something in preinst for
amd64/w8 on qxldod [0]. Vadim, does virtio-win build/sign qxldod for
some Windows releases with fixes?

[0] https://fedorapeople.org/groups/virt/unattended/drivers/preinst/virtio-=
win/0.1.225/amd64/w8/

Cheers,
Victor

--lklulibgk3tqp7ux
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmPrcT8ACgkQl9kSPeN6
SE+AjA/+LHXGpt3n/KTfKBMvX5odcYEfUy0KP3cNL6M2F3X6cNcra8+dev1OwgEa
Ycba740NQnwLIgkzHeZlaFTj3ZQC+jISOPzWkiaZDlj8hCjLHyeA68iCau8Uogmm
rulMFlKtVZoVgM57M8v8iIbrWwsEepbrYutxHY19dQa0SNzWDqrb4RzwuQ3gVTqZ
/IZUpzGk3wqRbL+7O717xKbyx2NquJL28Ckl9cEaqsUufrLGE4Eyyb1sVHhBopT1
2r/m2F66gwhA9dkY1m0Y14z+SRmonj+I8xFtEvn2X7Bbqu4kNCDsyXfACHMeel7p
YW4wzgVUXE3QcoZSo/lhspdX1/9hWMDi11/HS0IiTGeJ7Lf8cs2PSh0uA0/lpqQH
A2+/I+RJnblw2ceBtF2qh2fxD73JYIVq6sGpOUoMO6GBXudPKakO9zqqlSLsobjN
6LSC0JN5i42rxmBd3MDYG8CHq1RDmeIBlL2dwAItTepBdyp4FRkAn/CDBYfYuMXA
U3bYWRKrw79O8/bmGnh0BZiI6bS1N3G5mhirXeoWo/cKtq1+PGzbvzdBCHcGFjNP
l6CFkWlr+r70H7g9RMizC6N/pYi13kJEXzf/V6JxzuKxVAkGLze12Ujdw49ulRR9
Ignf2/o/E3r0Sml1cWiDndWiU8ZGI/kN714htw1lylxgT/qPq5k=
=VMko
-----END PGP SIGNATURE-----

--lklulibgk3tqp7ux--

