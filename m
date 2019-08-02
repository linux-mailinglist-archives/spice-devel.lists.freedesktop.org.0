Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6AA7F205
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365F16ED8F;
	Fri,  2 Aug 2019 09:44:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A35C6ED8F
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:44:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 08C0630FB8CE
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:44:24 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AA1805C207;
 Fri,  2 Aug 2019 09:44:23 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:44:22 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802094422.mjo6xj3erhx7vyij@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-6-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-6-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 02 Aug 2019 09:44:24 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 06/13] red-channel: Inline
 red_channel_pipes_create_batch
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
Content-Type: multipart/mixed; boundary="===============0074674259=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0074674259==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xqr5wa6bztnqrjbk"
Content-Disposition: inline


--xqr5wa6bztnqrjbk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2019 at 03:22:47PM +0100, Frediano Ziglio wrote:
> The function is called only by red_channel_pipes_new_add.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  server/red-channel.c | 20 ++++----------------
>  1 file changed, 4 insertions(+), 16 deletions(-)
>=20
> diff --git a/server/red-channel.c b/server/red-channel.c
> index 82e522395..4872d2807 100644
> --- a/server/red-channel.c
> +++ b/server/red-channel.c
> @@ -598,32 +598,27 @@ static bool red_channel_no_item_being_sent(RedChann=
el *channel)
>   * TODO - inline? macro? right now this is the simplest from code amount
>   */
> =20
> -typedef void (*rcc_item_t)(RedChannelClient *rcc, RedPipeItem *item);
> -
>  /**
> - * red_channel_pipes_create_batch:
> + * red_channel_pipes_new_add:
>   * @channel: a channel
>   * @creator: a callback to create pipe item (not null)
>   * @data: the data to pass to the creator
> - * @pipe_add: a callback to add non-null pipe items (not null)
>   *
>   * Returns: the number of added items
>   **/
> -static int red_channel_pipes_create_batch(RedChannel *channel,
> -                                new_pipe_item_t creator, void *data,
> -                                rcc_item_t pipe_add)
> +int red_channel_pipes_new_add(RedChannel *channel,
> +                              new_pipe_item_t creator, void *data)
>  {
>      RedChannelClient *rcc;
>      RedPipeItem *item;
>      int num =3D 0, n =3D 0;
> =20
>      spice_assert(creator !=3D NULL);
> -    spice_assert(pipe_add !=3D NULL);
> =20
>      FOREACH_CLIENT(channel, rcc) {
>          item =3D (*creator)(rcc, data, num++);
>          if (item) {
> -            (*pipe_add)(rcc, item);
> +            red_channel_client_pipe_add(rcc, item);
>              n++;
>          }
>      }
> @@ -631,13 +626,6 @@ static int red_channel_pipes_create_batch(RedChannel=
 *channel,
>      return n;
>  }
> =20
> -int red_channel_pipes_new_add(RedChannel *channel,
> -                              new_pipe_item_t creator, void *data)
> -{
> -    return red_channel_pipes_create_batch(channel, creator, data,
> -                                          red_channel_client_pipe_add);
> -}
> -
>  uint32_t red_channel_max_pipe_size(RedChannel *channel)
>  {
>      RedChannelClient *rcc;
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--xqr5wa6bztnqrjbk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EBfYACgkQl9kSPeN6
SE9TQxAAq669yiSWaD0f8kJshyWzQNviaT83rpQBEvjWMXCcf0SV22XNuDHB4F3m
e/K4zrwjn+BKZfMqrXvdF2gz48t24GKNdltHVtdS11sJtz7FPAaW3La36pMP/ARz
rwGcRQxGYyasincSB5II3FacXkCH8foLNJuF0JO0n31U2R6EDmCCcXK5osp1p/oc
GrWNGQn1+CA2KDeHuMLW3sBXrWCJJjXPhsITXOVzEPaQKeAxzHckkmg+HNXFl92y
dbkYYtbgyn6N2dYzxVLNZ66T6H+tvFlFJ2yVCPfRtnm0ssWeFvSJi8eV4guSntUd
XiaHxQN5F1Odn8gqikU8oEoo81Oaj6k2EBDJOAhaMz94NN/HVwKbcDktvd9r52Se
mNomP/QnRLe9ncAf1cD/wyWS4p70FxPyfYpd66hFMEHn/5ipJIt0j5aWf+2g8pfU
sr3CbJcXDQ+iaMRKTuvHNoNPba4VWeBizD2MYlUbJzvu5P8gOQvBBwCX7gsxm48x
ev4m5R3Z0Z1hOdKUobTyVSsbGh7+Xe/SnTfykjp9dyn5eJ39PQKbSuXKgjVe3w0g
iH1OFq3A9MoNDtCEtA0mdZ9Awh4t7UO3JDx1SCqJas6m4Z9ibtS9aZbz/HepFZvK
UEwQUh1PHB95oBfknalR7CvpiKC55NstLJzRDZNMTvt7GFWVT1c=
=YaKl
-----END PGP SIGNATURE-----

--xqr5wa6bztnqrjbk--

--===============0074674259==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0074674259==--
