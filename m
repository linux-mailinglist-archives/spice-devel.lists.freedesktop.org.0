Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 842293C8E6
	for <lists+spice-devel@lfdr.de>; Tue, 11 Jun 2019 12:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0199A89175;
	Tue, 11 Jun 2019 10:27:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402FB89000
 for <spice-devel@lists.freedesktop.org>; Tue, 11 Jun 2019 10:27:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D0D1CBDD1;
 Tue, 11 Jun 2019 10:27:15 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7BD575D704;
 Tue, 11 Jun 2019 10:27:15 +0000 (UTC)
Date: Tue, 11 Jun 2019 10:27:14 +0000
From: Victor Toso <victortoso@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <20190611102714.hf42bgos6fegjfdk@toolbox>
References: <E1had6s-0004ka-6n@amboise>
MIME-Version: 1.0
In-Reply-To: <E1had6s-0004ka-6n@amboise>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 11 Jun 2019 10:27:15 +0000 (UTC)
Subject: Re: [Spice-devel] [client] gstreamer: A frame is not late if it
 should be displayed immediately
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1041917688=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1041917688==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vrvraojtjnp2blmf"
Content-Disposition: inline


--vrvraojtjnp2blmf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 11, 2019 at 11:30:30AM +0200, Francois Gouget wrote:
> schedule_frame() was expecting to be called at least 1 ms
> before having to display the frame which is wrong: being called
> 0 ms before is acceptable too.

Indeed

> Thankfully the frame would usually be the last decoded frame
> and would thus be displayed anyway.

Have you found while reading the code or some other way? Just
curious.


> Also reverse the inequality to make it easier to understand.

That's relative but I don't mind ;)

> Signed-off-by: Francois Gouget <fgouget@codeweavers.com>
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  src/channel-display-gst.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 858e8aeb..91ece0fa 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -200,7 +200,7 @@ static void schedule_frame(SpiceGstDecoder *decoder)
>              break;
>          }
> =20
> -        if (spice_mmtime_diff(now, gstframe->encoded_frame->mm_time) < 0=
) {
> +        if (spice_mmtime_diff(gstframe->encoded_frame->mm_time, now) >=
=3D 0) {
>              decoder->timer_id =3D g_timeout_add(gstframe->encoded_frame-=
>mm_time - now,
>                                                display_frame, decoder);
>          } else if (decoder->display_frame && !decoder->pending_samples) {
> --=20
> 2.20.1
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--vrvraojtjnp2blmf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlz/ggIACgkQl9kSPeN6
SE/ebw/9EoE5lkXggkWzW+dR0MG0hWqwQ1X3q1A/vwI+OcIhOE7hffdE9kTCHdTi
WpKPvEwjvkDLQsMjA/XyyeAr5Cdjy7dOZFdjbYojP4bqtGpejV39Z5iuH8gRHrm3
9dprKTnCi8AlhWsiYIt7spP+8eFu67ffoaDk145kXhGP5KupEeO7KmJJG3M1y4n8
EKDOICVZAUpEf9wXMupjYPcdHt2Ma5m8XJcCBerRrZ1a0PiqcUmIokNnehEYaaHy
qTKIZrSJee8KTOr079CXYgpQ9PgtTmwrZyNcvQBLIEFNeTiGu9/UT4H8AEt0BY6K
YieTZjNQYfbxGQcy2dojrGetkye2Zfa4zzAUOYvuFEAtEX4g4Yi+LeL0MM1rM2D2
h557Ma9quPP7Ki33mRSH18G9uzrMUQJQ30ZMbn13hUE4yNPX9/mV3yFRGgcoRWrM
wSEb1TTIbKcRpdVs8nvV7YCLqkq9R2Frle472lqa8mXFNW8OFcnHVcQOt18wqxHS
yV7SNh/ArgvFUySL8g2cqdzsNZLWXvKFornpsE5R4bbkpEdXSZ3T3cArwSnKMbvy
wTANA9oKIesmQiyx8B76pA4HISr+AKbVCMGwrfPNZUo0xsyx0aWieRX00NQxUaED
SZDJA2kJFsjXRQL9HRq/3pyreSkML5Y6TohYNQ7EuBeX2kH2rMs=
=pHDc
-----END PGP SIGNATURE-----

--vrvraojtjnp2blmf--

--===============1041917688==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1041917688==--
