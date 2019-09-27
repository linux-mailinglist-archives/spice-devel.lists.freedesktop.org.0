Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16628C02D5
	for <lists+spice-devel@lfdr.de>; Fri, 27 Sep 2019 12:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB5D6EEF5;
	Fri, 27 Sep 2019 10:04:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDF346EEF5
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 10:04:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5051291766
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 10:04:03 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F1F175D6B0
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 10:04:02 +0000 (UTC)
Date: Fri, 27 Sep 2019 12:04:02 +0200
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <20190927100402.ehpjboj25nbvdo7r@wingsuit>
References: <20190919141133.10691-1-victortoso@redhat.com>
 <20190919141133.10691-20-victortoso@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190919141133.10691-20-victortoso@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 27 Sep 2019 10:04:03 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v8 19/20] test-cd-emu: Make sure we can
 call spice_usb_backend_channel_flush_writes
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1054831728=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1054831728==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s2si7xhmlndl76ik"
Content-Disposition: inline


--s2si7xhmlndl76ik
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry if I wasn't clear before but I'm completely fine with the
tests patches as well. I take that only one patch (the command
line option one) isn't going to be merged as some work on the
design is pending, correct?

Cheers,

On Thu, Sep 19, 2019 at 04:11:32PM +0200, Victor Toso wrote:
> From: Frediano Ziglio <fziglio@redhat.com>
>=20
> Currently we call this function when the SPICE channel is up
> however this function should continue to work as in theory
> the channel could avoid to handle the message and stop the flow
> (for instance to implement some kind of flow limitation)
> and so will need to call this function again.
> This was failing in the first USB emulation implementation
> causing a crash.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  tests/cd-emu.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/tests/cd-emu.c b/tests/cd-emu.c
> index fb023a9..690423b 100644
> --- a/tests/cd-emu.c
> +++ b/tests/cd-emu.c
> @@ -164,6 +164,10 @@ device_iteration(const int loop, const bool attach_o=
n_connect)
>      g_assert_cmpint(hellos_sent, =3D=3D, hellos_expected);
>      g_assert_cmpint(messages_sent, >=3D, messages_expected);
> =20
> +    spice_usb_backend_channel_flush_writes(usb_ch);
> +    g_assert_cmpint(hellos_sent, =3D=3D, hellos_expected);
> +    g_assert_cmpint(messages_sent, >=3D, messages_expected);
> +
>      // send hello reply
>      if (loop =3D=3D 0) {
>          DATA_START
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--s2si7xhmlndl76ik
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2N3pIACgkQl9kSPeN6
SE9lbg//csVqtBsr7QJZ9nWtTo+omhbhyUXvUaFVivGn9PVo0DeEm77PfLf0i6zZ
RJhJCVjhRnVUxC4yZZTGG+n7B7Qu2G1dhf2d5/WznV4M+LWN65+OhGABJxgitNTd
A4qD/lET9iqf3sM5qOZISdnyYWv5VIGWURLg43o3PItGer6RmCcmdqe/OZD73Wrt
hQFX3nvZL89SDYlZ08WagfGGU4ShT5jCqfTxL8F207nvs2HcpnHXsrAC7uZXttT0
mUrE0utthLs2Uy+FTRZEILwf/VmuzftEQkYpxqHFNocKb9gHQkGtqAMeamY55HhK
3CQNqu1VWh/DxPMt3Id00OwR+agOXepozznCXEVIEneiVlZMKIO34iXlDvagYBoU
lTW1X4unaarEY9YJkJgu7jltazbCSthA+2ZTKXKQ32kEFjNinMjybvE2TloOS7w5
Q1DgkUVFZrpUkBpc1gqc53hBC9y+YQmcnv/Zlm3nL6Pvc0X/ukwP2moaVL3YBqJi
vV66PbVF9fiAXZ4FwJhz9wBF/HSahb+BNvBLZHtBQ/KN9TiJtiy1ciFVG3W7CIu7
5lTkrybP0Ocs+uL6f1EBYCNGbi/Mnm19D2Ta7WAx9lJZPHslQ3ik7kDLpYYl+y7J
tqlhRm2SyrbgHsITPkYtM5EEk6u3ryvx5i7gbpODoNsLdqeOURo=
=uThQ
-----END PGP SIGNATURE-----

--s2si7xhmlndl76ik--

--===============1054831728==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1054831728==--
