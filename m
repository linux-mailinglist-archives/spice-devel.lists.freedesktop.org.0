Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7787124F
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 465BF89F06;
	Tue, 23 Jul 2019 07:08:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 156B989F06
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:08:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9EE0E81F25
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:08:06 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 40BBE5D9C5;
 Tue, 23 Jul 2019 07:08:06 +0000 (UTC)
Date: Tue, 23 Jul 2019 09:08:05 +0200
From: Victor Toso <victortoso@redhat.com>
To: Jakub =?utf-8?B?SmFua8Wv?= <jjanku@redhat.com>
Message-ID: <20190723070805.bglly4tvpxwgux57@wingsuit>
References: <20190722132211.14292-1-jjanku@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190722132211.14292-1-jjanku@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 23 Jul 2019 07:08:06 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH phodav 1/2] spice: read_thread: return
 number of read bytes on EOF
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
Content-Type: multipart/mixed; boundary="===============1841128161=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1841128161==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e7haaa4qsyxkczg4"
Content-Disposition: inline


--e7haaa4qsyxkczg4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 22, 2019 at 03:22:10PM +0200, Jakub Jank=C5=AF wrote:
> We already check with each input_stream_read_thread_finish()
> whether the count of the read bytes matches the requested one.
>=20
> Also, this is the way GLib handles it.
>=20
> Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
> ---
>=20
> https://gitlab.gnome.org/GNOME/phodav/merge_requests/4
>=20
> I've opened the merge request on gitlab some time ago,
> so now I'm sending it here as a form of ping.

Arg, missed. I'm now 'Watching' Phodav project to get
notifications. Thanks for the ping, patches looks fine and now
merged.

> ---
>  spice/spice-webdavd.c | 4 ----
>  1 file changed, 4 deletions(-)
>=20
> diff --git a/spice/spice-webdavd.c b/spice/spice-webdavd.c
> index f814890..81b4d91 100644
> --- a/spice/spice-webdavd.c
> +++ b/spice/spice-webdavd.c
> @@ -180,10 +180,6 @@ read_thread (GTask *task,
>        g_debug ("error: %s", error->message);
>        g_task_return_error (task, error);
>      }
> -  if (bread !=3D data->count)
> -    {
> -      g_task_return_int (task, -1);
> -    }
>    else
>      {
>        g_task_return_int (task, bread);
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--e7haaa4qsyxkczg4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl02slUACgkQl9kSPeN6
SE9WOw//f35Et/t2Hypx0gJuIF6C6GtlFexsba+QwOL58GtgJG6DCHn7CGCitK5E
Resgw8kkDpQKNgRRiIptJ556lLfehiim8OPR7Vzdmmg/BGvkJ42e4RbHk9mMPa8r
njI9nE+YxpApDaeRTD/BIf7BAYVZkLQ+kBvTuAb1RZlHQnKdxgddTnOoZKPCMtjd
5IXGOUMpL/NsLt5bJS8+lvxevFb31ivNSUrbE7ygFtDCTMh2Vwck9OCm31Z9Qq8Y
RlrlC+0935S3xQFmtdOGo4Silg2xthX05cyOBzl2heDoxYI7Pg16+hy6LOFpBO+y
daJXdPeTQwA6lMRgWex8CNsa9UhrjJV+GZURNx4erd590x1Ygzy78EpfF38DoSwt
L0mtOgH8cOUDnmP+ZNdFtNGWiEFCxCCVa+lzIaKzqfMm1DMSKUk5WbU3dOunJ3y5
T4qz06doI0rO87SYbWdMrr94+8vfRBL3Mv686AVSJkP/g9DBSHFsTFzG2NNLviXv
qnF1OhkdEonGUbbCZHYZOag3ZMnL2JlcLtiZh4JycCkMcfosxXRt8JntgYvCwZwc
VCSY+H4bvM7HdAHXQWyszs1JOJybTgOBG+yAgiroEk9yh2eJtHRMkrVZFdCexQjy
kW+H1o2ISYqQdbmzzX1KTCmec/mkT31sklYUgZMJXWP8q79U1L4=
=IvaH
-----END PGP SIGNATURE-----

--e7haaa4qsyxkczg4--

--===============1841128161==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1841128161==--
