Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82447D09F3
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 10:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C266E929;
	Wed,  9 Oct 2019 08:33:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69DBC6E929
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 08:33:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 11AFD9B28C
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 08:33:28 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B1C8E5D9E2;
 Wed,  9 Oct 2019 08:33:24 +0000 (UTC)
Date: Wed, 9 Oct 2019 10:33:23 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191009083323.sut4v3ypvya3tayl@wingsuit>
References: <20191008173924.12388-1-fziglio@redhat.com>
 <20191008173924.12388-5-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191008173924.12388-5-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 09 Oct 2019 08:33:28 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 4/7] smartcard: Fix
 parsing multiple messages from the device
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
Content-Type: multipart/mixed; boundary="===============0817121984=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0817121984==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tlt7g6gjqrf2obva"
Content-Disposition: inline


--tlt7g6gjqrf2obva
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Code seems fine, I'd change a bit the commit log just to be
straight forward with what this is fixing/improving. I'm
suggesting to split what might be a bugfix but feel free to
correct me if I'm mistaken ;)

On Tue, Oct 08, 2019 at 06:39:21PM +0100, Frediano Ziglio wrote:
> If the server is busy or the guest write multiple requests with
> a single operation it could happen that we receive multiple
> requests with a single read.

This patch handles the scenario when a single read to guest
device brings multiple requests to be handled. When this happens,
we will iterate till all requests are handled and no more
requests can be read from guest device.

> This will make "remaining" > 0.
> Use memmove instead of memcpy as the buffer can overlap if the
> second request if bigger than the first.
> "buf_pos" points to the point of the buffer after we read, if
> we want the first part of the next request is "buf_pos - remaining".
> Same consideration setting "buf_pos" for the next iteration.
> Also check the loop condition. If the remaining buffer contains
> a full request we don't need to read other bytes (note that there
> could be no bytes left), just parse the request.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/smartcard.c | 27 ++++++++++++++++++---------
>  1 file changed, 18 insertions(+), 9 deletions(-)
>=20
> diff --git a/server/smartcard.c b/server/smartcard.c
> index 4c5bba07d..340118e18 100644
> --- a/server/smartcard.c
> +++ b/server/smartcard.c
> @@ -130,19 +130,28 @@ static RedPipeItem *smartcard_read_msg_from_device(=
RedCharDevice *self,
>      RedCharDeviceSmartcard *dev =3D RED_CHAR_DEVICE_SMARTCARD(self);
>      SpiceCharDeviceInterface *sif =3D spice_char_device_get_interface(si=
n);
>      VSCMsgHeader *vheader =3D (VSCMsgHeader*)dev->priv->buf;
> -    int n;
>      int remaining;
>      int actual_length;
> =20
> -    while ((n =3D sif->read(sin, dev->priv->buf_pos, dev->priv->buf_size=
 - dev->priv->buf_used)) > 0) {
> +    while (true) {
>          RedMsgItem *msg_to_client;
> =20
> -        dev->priv->buf_pos +=3D n;
> -        dev->priv->buf_used +=3D n;
> -        if (dev->priv->buf_used < sizeof(VSCMsgHeader)) {
> -            continue;
> +        // it's possible we already got a full message from a previous p=
artial
> +        // read. In this case we don't need to read any byte
> +        if (dev->priv->buf_used < sizeof(VSCMsgHeader) ||
> +            dev->priv->buf_used - sizeof(VSCMsgHeader) < ntohl(vheader->=
length)) {
> +            int n =3D sif->read(sin, dev->priv->buf_pos, dev->priv->buf_=
size - dev->priv->buf_used);
> +            if (n <=3D 0) {
> +                break;
> +            }
> +            dev->priv->buf_pos +=3D n;
> +            dev->priv->buf_used +=3D n;
> +
> +            if (dev->priv->buf_used < sizeof(VSCMsgHeader)) {
> +                continue;
> +            }
> +            smartcard_read_buf_prepare(dev, vheader);
>          }
> -        smartcard_read_buf_prepare(dev, vheader);
>          actual_length =3D ntohl(vheader->length);
>          if (dev->priv->buf_used - sizeof(VSCMsgHeader) < actual_length) {
>              continue;
> @@ -150,9 +159,9 @@ static RedPipeItem *smartcard_read_msg_from_device(Re=
dCharDevice *self,
>          msg_to_client =3D smartcard_char_device_on_message_from_device(d=
ev, vheader);
>          remaining =3D dev->priv->buf_used - sizeof(VSCMsgHeader) - actua=
l_length;
>          if (remaining > 0) {
> -            memcpy(dev->priv->buf, dev->priv->buf_pos, remaining);
> +            memmove(dev->priv->buf, dev->priv->buf_pos - remaining, rema=
ining);

This should be addressed in a separated patch as bug, If I
understand correctly. Even before remaining could be > 0 but what
was being memcpy was trash instead bytes being read by
sif->read()

>          }
> -        dev->priv->buf_pos =3D dev->priv->buf;
> +        dev->priv->buf_pos =3D dev->priv->buf + remaining;

This as well, again, If I'm not missing anything.

Cheers,


>          dev->priv->buf_used =3D remaining;
>          if (msg_to_client) {
>              return &msg_to_client->base;
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--tlt7g6gjqrf2obva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2dm1MACgkQl9kSPeN6
SE8aXQ//aA8b+vBciLAtPqBOcDnn4dBvvKr1M0TSSdcSfiIhnsRBquPCfUvHJZrN
p2XfS4hYBCyjgCSBOdYeCIFF5zbfvL2+LDO3po1T4oTJQvwYpn1qQH4DpBRwe43G
bZTJTbuNLyOzm+IlaU6X1SUsPaOb8h/9LqBzu7/ZnPWALkVPhVtRDGWVZ2no0Frn
Rvd8oNNvJyUljgY2cdsskg9H4r6qY97uaFRYajUbxDEqUZequHihO9/uvjrTDJlt
b6VPO5dEd8O3lHoLf7QbXV72VIlxBwBVI4yru5nM4aQahMjzPPl9q6v2owDwC7BQ
vuFi8judgkWVd9gUuFMopcv8xbFKG9eqAiO31QTz8G3QkbQoXIA+nOAA8kAdPJNK
8BXrdNBwHE5dwSsIHhYbT9PzQd5itv3yHzMzMKigmRTWe/HytwpFqnO1kFTcaVH7
y6RvNGsy3sExb/sfEqnHSMV0jBvwJMPuOJDoVBa4BEEC7TStha8JfJ25K5HdO2Du
mjeMdtX2UnPVycbp3hWMg/BIthbFdf954h4cvkTVRJXuzrR5fqbYvFT3ckwxyfW+
M8mWC5prlSOHvLUfAdK45mO6fmZjVpl7Exb8eSx7zvs7kNfISYV2eBLR3dQA8Lqz
DVjEV77WwAphGaElxmRYc3L3C5KVpmxkapKBu3gDirQeQtXm9xg=
=W3jW
-----END PGP SIGNATURE-----

--tlt7g6gjqrf2obva--

--===============0817121984==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0817121984==--
