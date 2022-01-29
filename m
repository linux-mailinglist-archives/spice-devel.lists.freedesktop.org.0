Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EEF4A2E2C
	for <lists+spice-devel@lfdr.de>; Sat, 29 Jan 2022 12:23:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD022898D9;
	Sat, 29 Jan 2022 11:23:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2AC10F417
 for <spice-devel@lists.freedesktop.org>; Sat, 29 Jan 2022 11:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643455428;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZEgc6utgmuE8VxjkpFaTgGk5aPx10/eaKSc394JBfUg=;
 b=Fz4OjijYLIxIVvo5CHril8aYFNmYcH66R00247EmGa6hYiXS3d49+ARbyEB6f3wSbJUj12
 RWDFUZTS6KXh0Li6RQ+ouIOIrtFqeYZWJAVHZMSL7EVwtnNsRr3oOVEjulF+If3teT/0Q1
 48o5IxBxCEfd9DAEF7VmXbEhN+Tyxtk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-257-PrYPTcrbN1ShU4mgTrTbeA-1; Sat, 29 Jan 2022 06:23:45 -0500
X-MC-Unique: PrYPTcrbN1ShU4mgTrTbeA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44B75809CD9;
 Sat, 29 Jan 2022 11:23:44 +0000 (UTC)
Received: from localhost (unknown [10.40.192.90])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B666F78DD2;
 Sat, 29 Jan 2022 11:23:43 +0000 (UTC)
Date: Sat, 29 Jan 2022 12:23:42 +0100
From: Victor Toso <victortoso@redhat.com>
To: Neal Piche <phirestalker@gmail.com>
Message-ID: <20220129112342.tryfzbmvqqygrzgd@tapioca>
References: <CANkOWoyorOVg6GfqN=LJSqY=Km7TYo686T+PSWpXKTvi2TAz4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="5c7gecsyhwecn6u7"
Content-Disposition: inline
In-Reply-To: <CANkOWoyorOVg6GfqN=LJSqY=Km7TYo686T+PSWpXKTvi2TAz4g@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Subject: Re: [Spice-devel] Following audio device changes
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--5c7gecsyhwecn6u7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Neal,

On Fri, Jan 28, 2022 at 01:48:17PM -0700, Neal Piche wrote:
> I am on macOS. Most applications are able to accept changes to
> the audio device from the system and output sound to that
> device.
>=20
> I use QEMU, and if I leave spice extensions disabled, the guest
> OS is able to accept changes to the audio device multiple
> times. When I turn on spice extensions, QEMU will try to
> continue outputting sound to the original device. No matter
> what I change the output device to, it will keep whatever it
> had originally. I don't know if it is QEMU using spice
> incorrectly, a misconfiguration, or a bug in one of the spice
> packages.

I'm not sure I understood either. It is either what Frediano
asked or you are saying that QEMU is ignoring the preference to
redirect audio through Spice.

Note that, as far as I know, this kind of setting needs a
shutdown + start again to the VM, in order to change the audio
driver.

Either way, it should help if you provide the qemu command line
(of the setting you think there is a bug) and information on
which spice client are you using.

> Oh, I have tried with a Debian bullseye and Whonix guest with
> the same results.
>=20
> Has anyone found a workaround? Should I file a bug, and if so where?

Cheers,
Victor

--5c7gecsyhwecn6u7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmH1I74ACgkQl9kSPeN6
SE+bMhAAujBekOz2dGX9wPfHfGGBlt3x8PDrxiiCJBdZ0wy+W2v07xDoFGMbZdUZ
63FA2LIqI9W7u2VvnyCh+QSTCUT78HzXAl1K7m/MgATrMiLI1ZUSsEGXd1iwjPuh
SeS1GXqWrTJd2/dLdxnwIfGR+ORmwyEf8nCk7fwd1XF59+Wm/IwYr4QgszW0Xon7
oH0NSzcTB6dF51/1C6xY9udowwbz+iIyDllOSXYu388jRY6aT/0LhFmwkwaTKUj8
P00g0kuCAI0N/5DfPNulnGlA9oyrssHTDgLPq0mSS+mHgTq6nJINql9RKWQ7Q6O6
N/2DGMwHNYXRVZ5z0vaSJkrk0VqqjMi61TE+3G6qZl9ljz6McLz7Kg6A+tnILd05
HFLj32KIFwssj0d+CjQ5vDx8M4O/PSLjlLUHMfIMgNbN7LZ5JFHGENCZZxcavkmJ
AW0LPd2e0TZCaWw68ftZ3AdOG0PqCTq9t8QdIZR5cW8mY+FHRipLRhSeuo2mlt4i
mIYmoX/ULlQaA/H9NZF8+HCPYznNfmvsaMfWeN1TIn7sBeiiYC2JYaLhqAgP6Yuo
k+kvNgChYxs3ryOVW9Kk1qqux69K/+vOSag/V9GnAJPnyCMTwE/UGONXbISzw1Tr
QfKHBCMzPklkA87WEy9vulUlXdlQfZ88YiBeYT0EREr///kvWuY=
=Tfgf
-----END PGP SIGNATURE-----

--5c7gecsyhwecn6u7--

