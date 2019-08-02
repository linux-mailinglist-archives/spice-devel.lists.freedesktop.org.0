Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E687F4DE
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 12:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A266EDA8;
	Fri,  2 Aug 2019 10:19:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FEAC6EDA8
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:19:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DE3515AFD9
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 10:19:01 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 883B71001959;
 Fri,  2 Aug 2019 10:19:01 +0000 (UTC)
Date: Fri, 2 Aug 2019 12:19:00 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802101900.ueewh4bhe5lxqrmn@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-12-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-12-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 02 Aug 2019 10:19:01 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 12/13] red-channel-client:
 Reduce indentation of some code
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
Content-Type: multipart/mixed; boundary="===============0157760652=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0157760652==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yr73orioe7qq4ysj"
Content-Disposition: inline


--yr73orioe7qq4ysj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 30, 2019 at 03:22:53PM +0100, Frediano Ziglio wrote:
> Just a style change, return earlier to avoid some indentation.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Looks fine,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/red-channel-client.c | 37 +++++++++++++++----------------------
>  1 file changed, 15 insertions(+), 22 deletions(-)
>=20
> diff --git a/server/red-channel-client.c b/server/red-channel-client.c
> index 4978f3567..3fd51d78b 100644
> --- a/server/red-channel-client.c
> +++ b/server/red-channel-client.c
> @@ -690,25 +690,21 @@ static void red_channel_client_ping_timer(void *opa=
que)
>      red_channel_client_cancel_ping_timer(rcc);
> =20
>  #ifdef HAVE_LINUX_SOCKIOS_H /* SIOCOUTQ is a Linux only ioctl on sockets=
=2E */
> -    {
> -        int so_unsent_size =3D 0;
> +    int so_unsent_size =3D 0;
> =20
> -        /* retrieving the occupied size of the socket's tcp snd buffer (=
unacked + unsent) */
> -        if (ioctl(rcc->priv->stream->socket, SIOCOUTQ, &so_unsent_size) =
=3D=3D -1) {
> -            red_channel_warning(red_channel_client_get_channel(rcc),
> -                                "ioctl(SIOCOUTQ) failed, %s", strerror(e=
rrno));
> -        }
> -        if (so_unsent_size > 0) {
> -            /* tcp snd buffer is still occupied. rescheduling ping */
> -            red_channel_client_start_ping_timer(rcc, PING_TEST_IDLE_NET_=
TIMEOUT_MS);
> -        } else {
> -            red_channel_client_push_ping(rcc);
> -        }
> +    /* retrieving the occupied size of the socket's tcp snd buffer (unac=
ked + unsent) */
> +    if (ioctl(rcc->priv->stream->socket, SIOCOUTQ, &so_unsent_size) =3D=
=3D -1) {
> +        red_channel_warning(red_channel_client_get_channel(rcc),
> +                            "ioctl(SIOCOUTQ) failed, %s", strerror(errno=
));
>      }
> -#else /* ifdef HAVE_LINUX_SOCKIOS_H */
> +    if (so_unsent_size > 0) {
> +        /* tcp snd buffer is still occupied. rescheduling ping */
> +        red_channel_client_start_ping_timer(rcc, PING_TEST_IDLE_NET_TIME=
OUT_MS);
> +        return;
> +    }
> +#endif /* ifdef HAVE_LINUX_SOCKIOS_H */
>      /* More portable alternative code path (less accurate but avoids bog=
us ioctls)*/
>      red_channel_client_push_ping(rcc);
> -#endif /* ifdef HAVE_LINUX_SOCKIOS_H */
>  }
> =20
>  static inline int red_channel_client_waiting_for_ack(RedChannelClient *r=
cc)
> @@ -1140,16 +1136,13 @@ static int red_peer_receive(RedStream *stream, ui=
nt8_t *buf, uint32_t size)
>                  break;
>              } else if (errno =3D=3D EINTR) {
>                  continue;
> -            } else if (errno =3D=3D EPIPE) {
> -                return -1;
> -            } else {
> +            } else if (errno !=3D EPIPE) {
>                  g_warning("%s", strerror(errno));
> -                return -1;
>              }
> -        } else {
> -            size -=3D now;
> -            pos +=3D now;
> +            return -1;
>          }
> +        size -=3D now;
> +        pos +=3D now;
>      }
>      return pos - buf;
>  }
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--yr73orioe7qq4ysj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EDhQACgkQl9kSPeN6
SE+z0BAAjYdvi7sliYjVLm5mk2OYAsuyJNwbkUWE/dDPXJ81U33tUHfGbG3T1ZDK
OPJxL3bIEWChZsoickNiQvd+b5SjwCjL4f/fg8yUohXrsU73n1Gqza0ATOZ8LpmY
SK9JmVxiA5+cOujyYPDW6Pj2O/kzrpqsvZDRWfRCwGO4sOEApLDqM5Q7btRY8+ex
pIx1BT3xnQBNZ1qPFRl1/ZIoy4mEqchAjXOjPaRiUbJXm23gfB7bFh9dyLdjCc8y
e6DONT0HpVJXeEfLr5KiqgbtPrjSRXGQbpNiVvPAJQ0V3SySHRNgS0Aew6ukw23u
VtST6pXjmHhM+CMYe0ysOFBDd0rL1NDizpSouYrztrcvcziamgONQt8FH7186T3s
6/IwEZxgfyjvUXypMIybBE2+SynGq4GQeDN6TihwidoaIhfI9nwTL9eJseuk018r
pzOe68O/1+aa1CiNgTzo82uuYo8xuCiAMwu8hV/oBc6zf1z2yC49NbqTTyvvFkkR
6zvHvdxWSW0gJR6LwL0VQvUiGf0D4i5QPPQ7IQNxNiqnTlQktK5qbpFY48ORC4Rq
BEjouOOuisFNKlhTB/JqWWfuReCo/qw7UAJy8Lbt7BBQ1PsEfXq6eSI0cjChHf3U
ywmZhfy9QALkQu1J46/PUN2v+BNlaeyiyBl5/O7Fe7g9F9Yvu0U=
=xWqi
-----END PGP SIGNATURE-----

--yr73orioe7qq4ysj--

--===============0157760652==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0157760652==--
