Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB60AD3ED
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 09:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F12D898C6;
	Mon,  9 Sep 2019 07:32:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13F30898C6
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 07:32:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 98F5930A00CF
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 07:32:35 +0000 (UTC)
Received: from localhost (unknown [10.32.181.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 417BF19C78;
 Mon,  9 Sep 2019 07:32:35 +0000 (UTC)
Date: Mon, 9 Sep 2019 09:32:34 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190909073234.ovafiyaaygjiq6bf@wingsuit>
References: <20190906152704.5515-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190906152704.5515-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Mon, 09 Sep 2019 07:32:35 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-session: Fix SWAP_STR
 macro
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0348234404=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0348234404==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jd7lpk3yjanagne4"
Content-Disposition: inline


--jd7lpk3yjanagne4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 06, 2019 at 04:27:04PM +0100, Frediano Ziglio wrote:
> Really swap "x" and "y", not temporary copies.
> The issue was introduced by 01c6343 "Use macro to swap
> data in spice_session_start_migrating()".
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  src/spice-session.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>=20
> Removed RFC.
> Tested, the original session is updated with the new values
> after all connections are established.
> As usually there are no other connection after these the
> problem is not noted.
Acked-by: Victor Toso <victortoso@redhat.com>
>=20
> diff --git a/src/spice-session.c b/src/spice-session.c
> index 04ba124a..d0d9e541 100644
> --- a/src/spice-session.c
> +++ b/src/spice-session.c
> @@ -1742,12 +1742,9 @@ void spice_session_switching_disconnect(SpiceSessi=
on *self)
>  }
> =20
>  #define SWAP_STR(x, y) G_STMT_START { \
> -    const gchar *tmp;                 \
> -    const gchar *a =3D x;               \
> -    const gchar *b =3D y;               \
> -    tmp =3D a;                          \
> -    a =3D b;                            \
> -    b =3D tmp;                          \
> +    gchar *tmp =3D x;                   \
> +    x =3D y;                            \
> +    y =3D tmp;                          \
>  } G_STMT_END
> =20
>  G_GNUC_INTERNAL
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--jd7lpk3yjanagne4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl12ABIACgkQl9kSPeN6
SE8C7g/+LThuzzPPKYjwk5zgVJzW0lbsImMh3lgqk2NywXUSti8Br0Ez19ir3xJh
n3X5ox62uL0upMxygbfC1bCa9XMhuh5h2W9Lf8ka7ggKoQXyXdgKFt+up6I3T6l3
UrUKm+qNhANSoLPpVzuLNSsqEmA/9gjgJGpYE9yMVcCzWhzXaipOEhuJ1v7UXX9d
15FR6SeWzKb6/zUY76Zc/hZxgB30LG9ynwiDkJa5xkU8jav/MeoGpxTYPe8BhuNr
ggozVij0Z7hOjSz2a/4pTWC18fg7THNFd0CVtDZap5OIk/Hx3yaT84JrEU1lW5OQ
bxKP/jfnOIcheqEVnZAbqF7tYSHLVmIjArzZQPvKijZk/qFMpdfYBCSuhPKmHHj8
ZgCafab3WWQp7MQOwH3vUT+80LXCjDajQopayIkocW9iTqFJDzkWuXWq1J8J8JoZ
s8M4Sqct/B2uopYxIHzLBC6EzLbJeiEmvFr6A1CjP8vZeRzHmFBvFl3ZLtpiKVJW
6lsbv2MRCBTkQP9kuc92GQ15rogol55qZye5HUaDbYYQRoXD/hRD1d5MncB0CB/k
0Wv9wpFoSGekWnY/1HEiJHuebyIpdeXSNNItTe50J7l8iBUL4t7QXlonFoXX98X9
GK224yia3fuV+B83Yiar7UqxybJJJZmFFBR17/UOby+M4PI1LAo=
=sc6K
-----END PGP SIGNATURE-----

--jd7lpk3yjanagne4--

--===============0348234404==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0348234404==--
