Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A32DE5B8
	for <lists+spice-devel@lfdr.de>; Mon, 21 Oct 2019 10:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D6489B00;
	Mon, 21 Oct 2019 08:01:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB4C89B00
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 08:01:20 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-80-U3M16UleOPCzNh3csoxdMg-1; Mon, 21 Oct 2019 04:01:16 -0400
X-MC-Unique: U3M16UleOPCzNh3csoxdMg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 493FE801E5C
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 08:01:15 +0000 (UTC)
Received: from localhost (ovpn-204-94.brq.redhat.com [10.40.204.94])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CD3AD5D6B0;
 Mon, 21 Oct 2019 08:01:14 +0000 (UTC)
Date: Mon, 21 Oct 2019 10:01:13 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191021080113.xxpc754ked4hep7i@wingsuit>
References: <20191014092217.24405-1-fziglio@redhat.com>
 <20191014092217.24405-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191014092217.24405-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571644879;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=D2KguBb1Vl49BZfKzq11UPDyBvDhfaopAQhJ8BpDZAk=;
 b=TrkNtkSqCfxMYcRW1+oxQI4/nidBnq2gLoYFgTXmSf9CkMyZtnp7HKpS++XFSPhDajzZNk
 jTBmFOrBpZJgZ6+SjzWV+u0iPtbLa7l9BBQTYoo4FFDDxTrOzpJL8SkP2VyDAW9KnW4Swg
 hdPBVLOs0PRpOALLTLHKP5kUcIkl5Tg=
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/7] smart-channel-client:
 Remove spicec client reference from comment
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
Cc: spice-devel@lists.freedesktop.org, cfergeau@redhat.com
Content-Type: multipart/mixed; boundary="===============2086863138=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2086863138==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zguabe5j6mabjqxq"
Content-Disposition: inline

--zguabe5j6mabjqxq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 14, 2019 at 10:22:11AM +0100, Frediano Ziglio wrote:
> spicec is an obsolete client.

Should be fine to remove the other last referece (that my grep
could find) in this commit too?

server/red-channel-client.c:1187:     * after spicec disconnect
(but not with spice-gtk) repeatedly. */

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/smartcard-channel-client.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/server/smartcard-channel-client.c b/server/smartcard-channel=
-client.c
> index 43df902f5..da472a2a7 100644
> --- a/server/smartcard-channel-client.c
> +++ b/server/smartcard-channel-client.c
> @@ -252,8 +252,7 @@ bool smartcard_channel_client_handle_message(RedChann=
elClient *rcc,
>      SmartCardChannelClient *scc =3D SMARTCARD_CHANNEL_CLIENT(rcc);
> =20
>      if (type !=3D SPICE_MSGC_SMARTCARD_DATA) {
> -        /* Handles seamless migration protocol. Also handles ack's,
> -         * spicy sends them while spicec does not */
> +        /* Handles seamless migration protocol. Also handles ack's */
>          return red_channel_client_handle_message(rcc, type, size, messag=
e);
>      }
> =20
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--zguabe5j6mabjqxq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2tZckACgkQl9kSPeN6
SE8uBQ/+MHrg95iRnYUSEKs/nfqDXDFIxS9OOfckAdulNy3ZxVFEYlaM9K+5QVWk
ibUEYG2FyshutmFWVoXIjxdgnY3vGWLLxeHLvxD06A7eWjumkde/JdV50p4rQWbH
c+pyXpcmTo/XkocUkLbaXM+zMHUByKi8aDsK6LjWpfvGaMHQpA4kbzlEHhOqOuHL
cvKY+QdxwdNHq/XLYoL/AtG13S0FqpmAiAc/mqlwc8nH6Ep3GQKCz2D7TtRTxRrg
KNLzmQ31gyJg+ZSzuwV/pbsE4FbbjcpM7EFaXj+NxoshYURvIBaFfmhJ14cr/FIS
cU19h85YnsLU4CC1QBq33nE0YSJurbg42iQyKKtRGAvo442Lu4apv6E+/GeBVn/m
f8M4hL8z9Qv8iUkHYLaue4RdbhflHbS3QJnDJgt29oUeEdmDAQY+f9qw+VFgD1VD
CmUPUL8BM3oA+h2YLmcZwoXwx8rnrc35Nya28JmKAJYdkJOvVlnFREq+52Zy6fdZ
lCNDxwP/7VIsRJN70muZ/Nqex815q4Qq+Kyx8zZmjbR4Zr1tGbZ0LknWohkGai1j
IupikO9Sr7w2QOGRsjos8h/0h5QTadZZv44R0DSXTtSCguaH/sBpvNGQFhpdsflW
2ACbwoHX/VJEM6L15F0kyWBxrJQ43BJYRwpFrh6ZAq353Kpqis4=
=qyjS
-----END PGP SIGNATURE-----

--zguabe5j6mabjqxq--


--===============2086863138==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2086863138==--

