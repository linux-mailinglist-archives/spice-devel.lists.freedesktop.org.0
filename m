Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 654DD7F22F
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA25A6ED97;
	Fri,  2 Aug 2019 09:46:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30BE6ED97
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:46:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4E9B2307D868
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:46:01 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EEA6B60BEC;
 Fri,  2 Aug 2019 09:46:00 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:46:00 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802094600.eugrnutrpsh7nop6@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-7-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-7-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 02 Aug 2019 09:46:01 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 07/13] cache-item: Remove
 only written fields
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
Content-Type: multipart/mixed; boundary="===============1301829864=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1301829864==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2h5ghulqekac62o7"
Content-Disposition: inline


--2h5ghulqekac62o7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2019 at 03:22:48PM +0100, Frediano Ziglio wrote:
> cursor_cache_items and palette_cache_items where only written
> but never used.

Acked-by: Victor Toso <victortoso@redhat.com>

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/cache-item.tmpl.c       | 3 ---
>  server/cursor-channel-client.c | 1 -
>  server/dcc-private.h           | 1 -
>  3 files changed, 5 deletions(-)
>=20
> diff --git a/server/cache-item.tmpl.c b/server/cache-item.tmpl.c
> index f119a9ee4..6968d20db 100644
> --- a/server/cache-item.tmpl.c
> +++ b/server/cache-item.tmpl.c
> @@ -72,7 +72,6 @@ static void FUNC_NAME(remove)(CHANNELCLIENT *channel_cl=
ient, RedCacheItem *item)
>          now =3D &(*now)->u.cache_data.next;
>      }
>      ring_remove(&item->u.cache_data.lru_link);
> -    channel_client->priv->VAR_NAME(items)--;
>      channel_client->priv->VAR_NAME(available) +=3D item->u.cache_data.si=
ze;
> =20
>      red_pipe_item_init(&item->u.pipe_data, RED_PIPE_ITEM_TYPE_INVAL_ONE);
> @@ -97,7 +96,6 @@ static int FUNC_NAME(add)(CHANNELCLIENT *channel_client=
, uint64_t id, size_t siz
>          }
>          FUNC_NAME(remove)(channel_client, tail);
>      }
> -    ++channel_client->priv->VAR_NAME(items);
>      item->u.cache_data.next =3D channel_client->priv->CACHE_NAME[(key =
=3D CACHE_HASH_KEY(id))];
>      channel_client->priv->CACHE_NAME[key] =3D item;
>      ring_item_init(&item->u.cache_data.lru_link);
> @@ -120,7 +118,6 @@ static void FUNC_NAME(reset)(CHANNELCLIENT *channel_c=
lient, long size)
>      }
>      ring_init(&channel_client->priv->VAR_NAME(lru));
>      channel_client->priv->VAR_NAME(available) =3D size;
> -    channel_client->priv->VAR_NAME(items) =3D 0;
>  }
> =20
> =20
> diff --git a/server/cursor-channel-client.c b/server/cursor-channel-clien=
t.c
> index fec26c097..a15f78cee 100644
> --- a/server/cursor-channel-client.c
> +++ b/server/cursor-channel-client.c
> @@ -38,7 +38,6 @@ struct CursorChannelClientPrivate
>      RedCacheItem *cursor_cache[CURSOR_CACHE_HASH_SIZE];
>      Ring cursor_cache_lru;
>      long cursor_cache_available;
> -    uint32_t cursor_cache_items;
>  };
> =20
>  G_DEFINE_TYPE_WITH_PRIVATE(CursorChannelClient, cursor_channel_client,
> diff --git a/server/dcc-private.h b/server/dcc-private.h
> index 848d42702..0c8efc4b6 100644
> --- a/server/dcc-private.h
> +++ b/server/dcc-private.h
> @@ -44,7 +44,6 @@ struct DisplayChannelClientPrivate
>      RedCacheItem *palette_cache[PALETTE_CACHE_HASH_SIZE];
>      Ring palette_cache_lru;
>      long palette_cache_available;
> -    uint32_t palette_cache_items;
> =20
>      struct {
>          FreeList free_list;
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--2h5ghulqekac62o7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EBlcACgkQl9kSPeN6
SE/PrBAAoz0kZJ4HpnLgFDyTssCha99WuU6Xc23qryKCNxtED/rGxU5Veikgj2hx
xMouTyrNrZruS6EFpStoHy0kNZr4hbyXmnYKsBa4id2Zo0cYFWHmPR1kKaerOqjc
+1DqMHfjHIEflEq7yMsY/jQc+b4e1G0FJjrcxSxxfiNO4EllwnahwA2cQTWENWM9
+3uCaSYyY5jnwZiFyacA4lP8okFnf7ckDL6Y+OI+GSoFXQgWaQRAWTWiwEutpjEJ
sFF2uo/QxR7lXN7bv+rbaOSWFFlipEtJL+LjVlS7wNLv9TYF6LRE6pF1kBjTTPmq
EbU2uT4FUt1CvyzDP50RgQ7AH3LgSTCUvYvoblZKpqVsF2mZVCh6aGCq7x5Sc/JV
ER8ST+rXpWU9CbiowaKDQwr8LYoTQwjg0u+fto8miBXRqPTTvtaXM4Ejp6jYGIUr
80iQ79VMlq+MAgztVPYN7wj8/LvPD0FaqW0HlW1V7BZAKECyg+7OyiNJ0jw38zRB
tnu5ZI9hNCqpDZfknXBFq0Plp1FC0oR9hl86EKaL8U0vMPqD8oEnX0ldAIa41cKp
HTeskMXw8jZy5j2viKpfJrAb92B6mhz6H/9IXGAUvthmowOm08WBwJkyptO0BgYn
xI1xvvN8N9xIG7zJ0irL4VL3pe8/ZXhKD9C+S1WZ+MsqSWDDDTU=
=hXod
-----END PGP SIGNATURE-----

--2h5ghulqekac62o7--

--===============1301829864==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1301829864==--
