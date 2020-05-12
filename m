Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7691F1CEC6F
	for <lists+spice-devel@lfdr.de>; Tue, 12 May 2020 07:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 986606E82A;
	Tue, 12 May 2020 05:26:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38EFC6E82A
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 05:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589261175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Wh3+oxLaz5AmCb8KFU5FvLFr5bFQt+8sl89l4ex+sSM=;
 b=WEYLVM3yO2HtZGlgjHYc9lmxKo552p66hp6dAMGZWsnGzgrwGndo/BT0aECDUtKEnFNNnv
 AFQM+IaAbe8lO7wDr+MWI3vp5Dj/uJ+tr64VdXtU4Ig4u8Xd5i6cmLrYmU51d9tDCL62k/
 NFOATi9NISpL7i6863YTuAY2ydN1Lig=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-78-YZ6wqHEcPxS6HafTxa65Qg-1; Tue, 12 May 2020 01:26:10 -0400
X-MC-Unique: YZ6wqHEcPxS6HafTxa65Qg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D45601005510;
 Tue, 12 May 2020 05:26:09 +0000 (UTC)
Received: from localhost (ovpn-112-131.ams2.redhat.com [10.36.112.131])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 754DC1000320;
 Tue, 12 May 2020 05:26:00 +0000 (UTC)
Date: Tue, 12 May 2020 07:25:59 +0200
From: Victor Toso <victortoso@redhat.com>
To: bruts@netc.fr
Message-ID: <20200512052559.3cqwgmrlugzqdbld@wingsuit>
References: <9f3f0810-bc2f-50c6-d324-4c6cbd740200@redhat.com>
 <ea-mime-5eb9d74e-6a24-301848c1@www-1.mailo.com>
MIME-Version: 1.0
In-Reply-To: <ea-mime-5eb9d74e-6a24-301848c1@www-1.mailo.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice-vdagent: how to enable additional mouse
 buttons?
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
Content-Type: multipart/mixed; boundary="===============1348623746=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1348623746==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="odmkikhcomf4xj2a"
Content-Disposition: inline

--odmkikhcomf4xj2a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 12, 2020 at 12:53:02AM +0200, bruts@netc.fr wrote:
>=20
>=20
> Uri (and others),
>=20
> I found the similar question in a few corners of the internet
> and I think adding at least the additional default mouse
> buttons should not be all that much work.

You can take a look at this proposal to adding horizontal wheel
support to Spice

=09https://lists.freedesktop.org/archives/spice-devel/2017-October/040558.h=
tml

> With some guidance I could probably do it myself, though the
> guidance would need to be quite substantial :)
>=20
> The mouse and the main buttons is already forwarded and that is
> the main part.
>=20
> with xev it is clear to see which buttons work on the host, but
> not on the guest.
>=20
> Anyone with some spare time (which I know is always limited for
> everyone), but help me where to fix this in the code and i will
> write a patch - or give me a good start - or start yourself.
>=20
> a semi working mouse in the guest is very annoying and can be
> one of the critical points why to use spice (or not) - at least
> i know it is in my case.
>=20
> Thanks!!

Cheers,
Victor

--odmkikhcomf4xj2a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl66M2cACgkQl9kSPeN6
SE/tCRAApDij6i3GOvXb7kYqpmXpDD0IMt9oQzoqGOZBX0J0G225O7G/4lxzbXV/
frDwaOeQhAIGp6IXhW5FoL15GNDOHtAj+OzonvaGdCA78axl9TNJVCI/CZoD5SvV
cyWe5XH2QvFgKT6ZHy1TlBGy4LISG+QcfykByzLMD4UbBYVYZaiuCodDbeObAVNj
ZjdCy6mMdaUn2VT94fX9KKwCHEnhR+XQC0tFTfie3pS/2E73mw7ktsq99Ce1R778
tEAk2dWYxvz5V/ck4EYzoQRwoHx/H5XA1wNHyiBbFYqfA/V845LSG8G8qf0Q6NDI
KybBLmF/QxXCrfnp7JTvaQyySAH0gbHFdYkb3kB8tI514A2j9zTWC4aD+yS5ynjF
i5Jj1KyRQEdIbKsN+mcB7lmqNWX1gMpOWEO2ayC7oIJk8eWEIAqvtmh8X41cHEkh
k/pYKqdHAT4Tt7idQGQGnqZdKrSczXKbhw167RSBDNBFLODt00hWPSA/RitgA6A+
hGM3GX3J6F2n+UfuPjTxBRWZJFRwBb2GfNE7FE5biJd9W25fkB76Vg/k9p71RKH4
jmOPKSuZVO7idMUa6J2cxXOEsTkMZgkJj4y8WRR9uWOohO9QhDlcLD9SN7IGNfy/
S2HkoDm/76WPa2Ypu/Gl4qM5Xd8fwpnwX/Jxw4aZt4Jvs+m6/JQ=
=hnVY
-----END PGP SIGNATURE-----

--odmkikhcomf4xj2a--


--===============1348623746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1348623746==--

