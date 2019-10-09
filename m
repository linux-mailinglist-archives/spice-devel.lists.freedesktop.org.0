Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B58D08AB
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 09:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6597F6E2BD;
	Wed,  9 Oct 2019 07:44:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8506E2BD
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 07:44:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5F42D30013A1
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 07:44:43 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D8B8600CD;
 Wed,  9 Oct 2019 07:44:42 +0000 (UTC)
Date: Wed, 9 Oct 2019 09:44:42 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191009074442.gbkpj6vx54mzjaw7@wingsuit>
References: <20191008173924.12388-1-fziglio@redhat.com>
 <20191008173924.12388-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191008173924.12388-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 09 Oct 2019 07:44:43 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/7]
 smartcard-channel-client: Remove properties code
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
Content-Type: multipart/mixed; boundary="===============0669438155=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0669438155==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tsptie56ccuplxx3"
Content-Disposition: inline


--tsptie56ccuplxx3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 08, 2019 at 06:39:18PM +0100, Frediano Ziglio wrote:
> Not used
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Yes, these are basically what default implementation does and if
no plans to extend it are in place, removing should be fine

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/smartcard-channel-client.c | 26 --------------------------
>  1 file changed, 26 deletions(-)
>=20
> diff --git a/server/smartcard-channel-client.c b/server/smartcard-channel=
-client.c
> index f71b65238..d47b442e4 100644
> --- a/server/smartcard-channel-client.c
> +++ b/server/smartcard-channel-client.c
> @@ -47,30 +47,6 @@ smartcard_channel_client_release_msg_rcv_buf(RedChanne=
lClient *rcc, uint16_t typ
>                                               uint32_t size, uint8_t *msg=
);
>  static void smartcard_channel_client_on_disconnect(RedChannelClient *rcc=
);
> =20
> -static void smart_card_channel_client_get_property(GObject *object,
> -                                                   guint property_id,
> -                                                   GValue *value,
> -                                                   GParamSpec *pspec)
> -{
> -    switch (property_id)
> -    {
> -        default:
> -            G_OBJECT_WARN_INVALID_PROPERTY_ID(object, property_id, pspec=
);
> -    }
> -}
> -
> -static void smart_card_channel_client_set_property(GObject *object,
> -                                                   guint property_id,
> -                                                   const GValue *value,
> -                                                   GParamSpec *pspec)
> -{
> -    switch (property_id)
> -    {
> -        default:
> -            G_OBJECT_WARN_INVALID_PROPERTY_ID(object, property_id, pspec=
);
> -    }
> -}
> -
>  static void smart_card_channel_client_finalize(GObject *object)
>  {
>      SmartCardChannelClient *self =3D SMARTCARD_CHANNEL_CLIENT(object);
> @@ -90,8 +66,6 @@ static void smart_card_channel_client_class_init(SmartC=
ardChannelClientClass *kl
>      client_class->release_recv_buf =3D smartcard_channel_client_release_=
msg_rcv_buf;
>      client_class->on_disconnect =3D smartcard_channel_client_on_disconne=
ct;
> =20
> -    object_class->get_property =3D smart_card_channel_client_get_propert=
y;
> -    object_class->set_property =3D smart_card_channel_client_set_propert=
y;
>      object_class->finalize =3D smart_card_channel_client_finalize;
>  }
> =20
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--tsptie56ccuplxx3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2dj+oACgkQl9kSPeN6
SE9A1hAAgKeh5vkOi6XSCLj/4dmAEUWXat3rJg5I79S5THzlMoquOegIRwWfgkZ8
K3v6RBCK8DYsk2zGrHYXCqCcfAOPo0pI2IbNHef+7buxab0r68UZwsldRrE/qAob
D6dW8usLQi5pO0dVaj6CU1j6ykmj9cDpTHd9NTewqd0YTzgTxiKzBBh3RzuZpWc/
/3tpjTa7PptpQkYf/uNTosQhZVpHozUxe9vl4KB4hxwhjpqX6Gk6t0YRETyHsz0U
FNC0VVxh/Ndykl72nkSuwylWWOKwowe4rVSDO1l1rp+I2laYwQJoBrjFfDHYO6jv
Sn9Bpa7Tp++jn44BV1XMSGOYFEzeR6ZjttYZJi9gWAdvbmYcQN0DnVkbnrZvhOW5
BM87qP0SgfLNcUFM4JbdmErs5VeDkunUaWhbVCkpLosU7tkR3mV3PpRmbEp42cQM
wBloekzbQFgYTTLuLYeS5BOhntgDmfD+BDO/ykrDR2fL9o0s49dDldpnBF0MhAzr
nX3GLjG6gLD3hpZqg/nw8FsVlZrcl4c7ZrC7kytPaOfhKrudhwX5FXe7wgBtrkir
SuWugjGRt4PDMOL0XGteOAfVwMfbXZwCBARh8k4kgH91CE70xlVosFCKBqepIpkF
3HXl4ffj3LjgXde24sq0/csxrKHSkCHBpFEnD68fr3WVj/3x+ms=
=u3KD
-----END PGP SIGNATURE-----

--tsptie56ccuplxx3--

--===============0669438155==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0669438155==--
