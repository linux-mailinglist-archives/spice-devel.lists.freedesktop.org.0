Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FC0719B7
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 15:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8406E2A6;
	Tue, 23 Jul 2019 13:49:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A71B6E2A6
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 13:49:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3026F2F8BDC;
 Tue, 23 Jul 2019 13:49:06 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CFA825DA34;
 Tue, 23 Jul 2019 13:49:05 +0000 (UTC)
Date: Tue, 23 Jul 2019 15:49:05 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190723134905.zkhg6ihukj56vjpm@wingsuit>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
 <20190723072708.2575-10-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190723072708.2575-10-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 23 Jul 2019 13:49:06 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 9/9] usb-redir: use
 g_thread_try_new instead of g_thread_new
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0717438379=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0717438379==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f2qwdxcppcahmp53"
Content-Disposition: inline


--f2qwdxcppcahmp53
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 23, 2019 at 10:27:08AM +0300, Yuri Benditovich wrote:
> Newer API (glib 2.32) is safe, in case of error it does not
> abort the process and returns error information.
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/usb-backend.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index bbd3b67..272d72a 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -469,9 +469,9 @@ gboolean spice_usb_backend_register_hotplug(SpiceUsbB=
ackend *be,
>      }
> =20
>      g_atomic_int_set(&be->event_thread_run, TRUE);
> -    be->event_thread =3D g_thread_new("usb_ev_thread",
> -                                    handle_libusb_events,
> -                                    be);
> +    be->event_thread =3D g_thread_try_new("usb_ev_thread",
> +                                        handle_libusb_events,
> +                                        be, error);
>      if (!be->event_thread) {
>          g_warning("Error starting event thread");
>          spice_usb_backend_deregister_hotplug(be);

Actually, this if() should be moved from 8/9 to 9/9 as it would
just abort() if thread was not created, etc.

Feel free to fix it in the next iteration, still,
Acked-by: Victor Toso <victortoso@redhat.com>

--f2qwdxcppcahmp53
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl03EFEACgkQl9kSPeN6
SE8YWRAAlGEfIBihlzFzv93Xmg2XL3AZIaTlY9F2OvT9XnxxvhxxVaamk7hd2CkE
wEwhcamqfX6+ecBRIIyQTOF7Oom6qtkJkGbIrnVLNabRLCCfl+2VTsPALOJ0DAi7
TFij2ch/O/iPc8SjI7aXpYHRE3Mypu+9EEw8DisQu3iX9jhnT0ilTYZoj8BSO1p9
cTWE5szo8NC8OELBKeye+v3t6e+VtoMtmOGP5WMOcSZ91+yDgYvQlxo4qxaGYQIO
UQd53hnN02e38eTOwa8wJjjTFWmrUtGyuCC7WqQS7zhUSowlEn0vNRmcGqsAA5qb
h3P4wN1JpV9bD8qU9IKKrySaaLi/PoWmTE8UrJMIkUMksfcQLm6AF2u9aD2fNcUc
s6PpXhi7s2IzVruX8gPFHo1/V/qJobGIlXDJaRao3T0IiK48gguT0HOngfIOLdZ8
J52+DDfo3azX8K7gMmsCLiDkZta1a8hJl+1NAPvgBqsRabSnXEGluzt3ZtCHaFow
ZJFybu15YhVfFlunY7L4894Q/q18Zi7dqhYR/IACbWpUb9dAD58oRDIYakHvTsuN
jvaFUGHVSKZsHOyvxQADBieH9YmlQylsHFOOlZKSgV8VKWvHN8Gu/UrTvD4J3nAp
L4ThNWrvYuqpupQ02vce1kxSuQlhOpP9HEZF1mBo5DsJmVqg9bM=
=8VMr
-----END PGP SIGNATURE-----

--f2qwdxcppcahmp53--

--===============0717438379==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0717438379==--
