Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A664B3B45D
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jun 2019 14:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F6F89130;
	Mon, 10 Jun 2019 12:09:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C85089130
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 12:09:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 37EA930872E2
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 12:09:26 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D96415B684;
 Mon, 10 Jun 2019 12:09:25 +0000 (UTC)
Date: Mon, 10 Jun 2019 12:09:25 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190610120925.anbwpwzwkbnolpv4@toolbox>
References: <20190603073930.19429-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190603073930.19429-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 10 Jun 2019 12:09:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] common-graphics-channel:
 Avoid closing server if client send huge messages
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
Content-Type: multipart/mixed; boundary="===============1261871541=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1261871541==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xxfv4432yqc7acup"
Content-Disposition: inline


--xxfv4432yqc7acup
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 03, 2019 at 08:39:30AM +0100, Frediano Ziglio wrote:
> The Cursor/DisplayChannel is not expecting large messages (which are
> protocol violations).
>=20
> This fixes https://gitlab.freedesktop.org/spice/spice-server/issues/11.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Sure,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/common-graphics-channel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/server/common-graphics-channel.c b/server/common-graphics-ch=
annel.c
> index 92349ce4d..cea805d09 100644
> --- a/server/common-graphics-channel.c
> +++ b/server/common-graphics-channel.c
> @@ -53,7 +53,7 @@ static uint8_t *common_alloc_recv_buf(RedChannelClient =
*rcc, uint16_t type, uint
>      }
> =20
>      if (size > CHANNEL_RECEIVE_BUF_SIZE) {
> -        spice_critical("unexpected message size %u (max is %d)", size, C=
HANNEL_RECEIVE_BUF_SIZE);
> +        spice_warning("unexpected message size %u (max is %d)", size, CH=
ANNEL_RECEIVE_BUF_SIZE);
>          return NULL;
>      }
>      return common->priv->recv_buf;
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--xxfv4432yqc7acup
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlz+SHUACgkQl9kSPeN6
SE8XwBAAwADkmRp5t0U0oIeREEpf30aSSYvLHON89lupjM6gFsLatundpYMChA0d
XkyctRYdo9mwhJVnGNDBdfunDei6nC5mnBWqKjbxx8DJoECFIX3tT6L32Z5d4CjC
1NxwHCoJ6BshhH0mx4WknjcSFRU8XaSF/fNRYceW5oik8TWa+g812CWOExI17D60
d9EdXXfM9NtzVphpEVLSdSUVYRVrB1VgR5RFOKJvboj/uUGYsBd6mNo4BoDT+h60
DVNPouxbGU5kmESQBK7LhFgBLYzdvbGZf4XKXC4HEVQ4S61elS+LitYtS6GDpxap
WQpQwea3ZZMPcqtDbdAtaRU3ynKSmMiwv1e38Ovh0sWWbScsYS9MgChSDA7vbyl4
r7OhiCBTGN1O9JyGFOLMh3r4SQlWI3lpECqQgZ5R3fL9rzNBtxUysSj/vbP4+KGM
O9seDAzZUWhv5PdB7S1ERPT4HOkQPEUbpC+50ITLyAl8dF39yaAQV/OLbiqKwGOS
lF7wztOMf7zIuvYp7cOqtaPrA4VdjRqTSY/M/clis4BcD9/wOh/QInGBfw3TfaOo
He2kj4rzL+hJkyvi09Tp3EFrS6eAfc4kXbtRkMOnzqPnq34ndXJAKWXr4Qwq/P0h
YHkXUxOdoDss1TrIIjzHmRwUnI694reIwZKWCdoYnlyMRCkbiP4=
=wIl2
-----END PGP SIGNATURE-----

--xxfv4432yqc7acup--

--===============1261871541==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1261871541==--
