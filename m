Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81531CFB38
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 15:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEF296E7B5;
	Tue,  8 Oct 2019 13:22:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743586E7B5
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 13:22:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E2828AC6F9
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 13:22:00 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BF58D600CE;
 Tue,  8 Oct 2019 13:21:59 +0000 (UTC)
Date: Tue, 8 Oct 2019 15:21:59 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191008132159.zn6xtxjtuu5ow46n@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007103906.30517-4-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191007103906.30517-4-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Tue, 08 Oct 2019 13:22:00 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 3/8]
 smartcard-channel-client: Remove unused parameter
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
Content-Type: multipart/mixed; boundary="===============0059328408=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0059328408==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="byda7do63ozcjve2"
Content-Disposition: inline


--byda7do63ozcjve2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 07, 2019 at 11:39:01AM +0100, Frediano Ziglio wrote:
> "name" parameter of smartcard_channel_client_add_reader it's not
> used.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

I guess it was used for debugging?

    Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/smartcard-channel-client.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/server/smartcard-channel-client.c b/server/smartcard-channel=
-client.c
> index 0b8644c7..08af49df 100644
> --- a/server/smartcard-channel-client.c
> +++ b/server/smartcard-channel-client.c
> @@ -219,8 +219,7 @@ static void smartcard_channel_client_push_error(RedCh=
annelClient *rcc,
>      red_channel_client_pipe_add_push(rcc, &error_item->base);
>  }
> =20
> -static void smartcard_channel_client_add_reader(SmartCardChannelClient *=
scc,
> -                                                uint8_t *name)
> +static void smartcard_channel_client_add_reader(SmartCardChannelClient *=
scc)
>  {
>      if (!scc->priv->smartcard) { /* we already tried to attach a reader =
to the client
>                                            when it connected */
> @@ -288,7 +287,7 @@ bool smartcard_channel_client_handle_message(RedChann=
elClient *rcc,
>      spice_assert(size =3D=3D vheader->length + sizeof(VSCMsgHeader));
>      switch (vheader->type) {
>          case VSC_ReaderAdd:
> -            smartcard_channel_client_add_reader(scc, msg + sizeof(VSCMsg=
Header));
> +            smartcard_channel_client_add_reader(scc);
>              return TRUE;
>              break;
>          case VSC_ReaderRemove:
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--byda7do63ozcjve2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2cjXYACgkQl9kSPeN6
SE/xohAArnriw6Kx7W2B89BCF2XdMKhsI86PIB25Et3UB/KfxaSGumZNBvDbeAf8
mp/RXmhg8BNz8Iq7LNQjid6FZf8dn4jyEKwRqFLZX06APD7C1rRbX02l8KHGKehs
RIhdBOYwwSJGPdLkHdxYo8//FljsuPJ09ZELje1UFcIUKrHvPAmfQMj6D3EhDwGX
qiOqoTHkd1qo6wfDW521N67/lqV+34BTelCnfjY4F3oeiKLlfRrnHDOrB9wK0ruE
0K5eoJcAaJbI0nq1cWWTeFx8xHDy+ugFKgVKcwAM4nFDAJSbed0M9AX9vgWNl+d2
CMUB46ZPM0u8p8EkBDqzxdf4AlWPupcC1kZVu2Glh1C0YiD9/eNVQsgLKv4Hfs1/
9uuW741VTnc7H8hHVlLq/rG3uTpbyiIZDaH34C3FLrh14hkc7b4MhNBsrBoZp/Fu
gqPsQxm74n0yxFMQWKbvZadP/5ue6k3ZBwdplAf7cv9Oq+s2qZzzxPyoq0QYnQVF
OIer8KaKeoA0JgXiN9A0VQvJ7NoYglNzaAMOcXbyrl4x5WOtFaPfSe6Eh7T27t+F
SvmYJkIwUYpbPRl3IDiBoR+cxrI5+4Eo5r/ja1UK9XZU61VvfsRfy3BfA5eWNOKh
2YukGeoaFg/xZMOwbdtdxOfZ+M1NIdirQH1L28QGz+1mGOnnM0s=
=DOCE
-----END PGP SIGNATURE-----

--byda7do63ozcjve2--

--===============0059328408==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0059328408==--
