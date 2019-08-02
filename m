Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3037F4CA
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 12:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2E76EDA8;
	Fri,  2 Aug 2019 10:11:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BAA6EDA8
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:11:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3EC8E796ED
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:11:24 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DE7AD60623;
 Fri,  2 Aug 2019 10:11:23 +0000 (UTC)
Date: Fri, 2 Aug 2019 12:11:23 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802101123.dzltkjzkfkpi424e@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-10-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-10-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 02 Aug 2019 10:11:24 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 10/13] inputs-channel-client:
 Remove unused declarations
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
Content-Type: multipart/mixed; boundary="===============0322074791=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0322074791==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="grt7k2jpfl7n3jyo"
Content-Disposition: inline


--grt7k2jpfl7n3jyo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2019 at 03:22:51PM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/inputs-channel-client.h | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/server/inputs-channel-client.h b/server/inputs-channel-clien=
t.h
> index c22288980..1afc22bd4 100644
> --- a/server/inputs-channel-client.h
> +++ b/server/inputs-channel-client.h
> @@ -61,9 +61,6 @@ RedChannelClient* inputs_channel_client_create(RedChann=
el *channel,
>                                                 RedStream *stream,
>                                                 RedChannelCapabilities *c=
aps);
> =20
> -uint16_t inputs_channel_client_get_motion_count(InputsChannelClient* sel=
f);
> -/* only for migration */
> -void inputs_channel_client_set_motion_count(InputsChannelClient* self, u=
int16_t count);

My grep tells me this was pushed already, hehe
very late ack ;)

>  void inputs_channel_client_on_mouse_motion(InputsChannelClient* self);
>  void inputs_channel_client_send_migrate_data(RedChannelClient *rcc,
>                                               SpiceMarshaller *m, RedPipe=
Item *item);
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--grt7k2jpfl7n3jyo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EDEsACgkQl9kSPeN6
SE/gDRAAvlm64LeaRa7AvL88YdH96SkcL/eIPwBmstg4RbtWarmdjxUzZBlN0QJz
cY+yTdgMKYtLxcchdJlPb+owTd+na/lj2k1DMR6sezae4zBygIguciv8pNsxkJSG
1tyefp62nDBD04X04nnf9OBjMFINI8X7Pwgy98Gs8v8UVmuP4vprA0pc/cFU0Hqh
n7v31ScYja3r5bn+cLX4pErO8BnYjPYd7pIASpjBt0mbKPLBUnw/qOfBHLhXT5D7
h4Ugf4iVMRQxhkMm3tfUwFKlb1D0Du4ILM1k9T3fFRo1eRSyYyxU/tBhPAzurQJo
c+ldLM5esRSheUimsZ821KtGKPKCPzGeSvKaJrwrAbEjG464X/aCuBcjEAbbYuoW
lWV98QheEHeoUPhWRt+1zlxBKsrdd7AgDeTxqBHi+CrAffErgKwBAM7m9qjCf9WM
mbrHf8Buu8xw9ZJ9qLS5q7XdHVMRy067gvbgYc99Yn4SrrxYLu09UAEEJFQ/zOd8
nlkcVYxQkieat1hzPA0MxmVwk9BZaucO6Qa+o3tCAc93Mm07vfC5OHZ5zrli1lrl
AyVtLPeu96l63BSAPYvX1boXxBY2pD+33I6az2RY/0lOBFMIfjnsSopkMwYEeaYP
gdgMYDjlnaCJVlLf/IGhvt6J9OknQKD422zO1W2U7R+354b7tJE=
=QYUF
-----END PGP SIGNATURE-----

--grt7k2jpfl7n3jyo--

--===============0322074791==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0322074791==--
