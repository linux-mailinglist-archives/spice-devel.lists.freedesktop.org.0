Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4199657A9
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49AC66E218;
	Thu, 11 Jul 2019 13:09:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6E246E218
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:09:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8664F308A98D
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:09:32 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 319B01802E;
 Thu, 11 Jul 2019 13:09:31 +0000 (UTC)
Date: Thu, 11 Jul 2019 15:09:31 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190711130931.kivl4yk37hpirovw@wingsuit>
References: <20190711125857.17701-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190711125857.17701-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 11 Jul 2019 13:09:32 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] channel-usbredir: Remove leak
 of decompressed buffer
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
Content-Type: multipart/mixed; boundary="===============1676581252=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1676581252==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bd37u4lyd3rsslje"
Content-Disposition: inline


--bd37u4lyd3rsslje
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 11, 2019 at 01:58:57PM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Nice,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  src/channel-usbredir.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>=20
> diff --git a/src/channel-usbredir.c b/src/channel-usbredir.c
> index 76534180..04acf0bd 100644
> --- a/src/channel-usbredir.c
> +++ b/src/channel-usbredir.c
> @@ -724,6 +724,7 @@ static void usbredir_handle_msg(SpiceChannel *c, Spic=
eMsgIn *in)
>          if (try_handle_compressed_msg(compressed_data_msg, &buf, &size))=
 {
>              /* uncompressed ok*/
>          } else {
> +            buf =3D NULL;
>              r =3D USB_REDIR_ERROR_READ_PARSE;
>          }
>      } else { /* Regular SPICE_MSG_SPICEVMC_DATA msg */
> @@ -733,17 +734,12 @@ static void usbredir_handle_msg(SpiceChannel *c, Sp=
iceMsgIn *in)
>      spice_usbredir_channel_lock(channel);
>      if (r =3D=3D 0)
>          r =3D spice_usb_backend_read_guest_data(priv->host, buf, size);
> -    if (r !=3D 0) {
> +    if (r !=3D 0 && priv->spice_device !=3D NULL) {
>          SpiceUsbDevice *spice_device =3D priv->spice_device;
>          device_error_data err_data;
>          gchar *desc;
>          GError *err;
> =20
> -        if (spice_device =3D=3D NULL) {
> -            spice_usbredir_channel_unlock(channel);
> -            return;
> -        }
> -
>          desc =3D spice_usb_device_get_description(spice_device, NULL);
>          err =3D spice_usb_backend_get_error_details(r, desc);
>          g_free(desc);
> @@ -764,6 +760,9 @@ static void usbredir_handle_msg(SpiceChannel *c, Spic=
eMsgIn *in)
>      } else {
>          spice_usbredir_channel_unlock(channel);
>      }
> +    if (spice_msg_in_type(in) =3D=3D SPICE_MSG_SPICEVMC_COMPRESSED_DATA)=
 {
> +        g_free(buf);
> +    }
>  }
> =20
>  #else
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--bd37u4lyd3rsslje
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0nNQoACgkQl9kSPeN6
SE8pQBAAuLffvukuR7FkwwraQjeubwTZnZBeT2Unkz0Mpjq656YT/EmKfc9lsZFr
xkNUaPwE7cigX5gnutPEQtMjPtg+7xHuHDUVfel02UQn9fASbskMk/tOaWRJOhd4
VvNl53HiHeeHnKCFa8IN+RTDunoHV8svk1uVSlIALLDhzn70XsIDXpTUsjw2ALbk
5ZtP2QWctjKg1M5Rvx1xm3PWkq+UdFN90VfCAHUowiC10IxS23DaLjQMljQG4Nap
kSVElikWg7RsPMyz7wXg3NeCP5vFrguVBytKnaMlo2j1MGS0rjijbjgWGH6zK3ZZ
t3lkZgKtqlSqSaHuXQhhoeRlnkg+b9z1zcx1BAg6rGls0Hfs0entyklW0OVv3ah/
wKADXcqbH0J53IpIicP2gAF5vBU5Vn6YXFgIW7YwRn6qK0YI1G2RKBj/Ji9G0Cf2
U/elRP9pmTzNnrXUWhwpE9K4J/lUltF2pMzkdTte3RakDvTwT/yCiE2VI1gGEq2G
jnzDxWSm3h9QmnxdDBBlPufU3yoz5k21LWamQaYYR0IXRbdzYHRLvr8NrYFtaD7m
g+n1MPb39biGavRjjUh2dPsEChljG+A6WMwp+IyCa5fXcRCibKfrE/r7wG2wtpul
LH8WM6rZ8Qv4/O+fKBog3dggENbtk5PsuGapyyrihmtaYEn6CmI=
=AsMT
-----END PGP SIGNATURE-----

--bd37u4lyd3rsslje--

--===============1676581252==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1676581252==--
