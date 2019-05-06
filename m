Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1283C1486B
	for <lists+spice-devel@lfdr.de>; Mon,  6 May 2019 12:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269BD89857;
	Mon,  6 May 2019 10:37:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4767389857
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 10:37:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 827EA8765E;
 Mon,  6 May 2019 10:37:52 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 266245D71B;
 Mon,  6 May 2019 10:37:48 +0000 (UTC)
Date: Mon, 6 May 2019 10:37:44 +0000
From: Victor Toso <victortoso@redhat.com>
To: Javier Celaya <javier.celaya@flexvdi.com>
Message-ID: <20190506103744.rib7kipxs3wdtq6x@toolbox>
References: <20190503165200.24328-1-javier.celaya@flexvdi.com>
MIME-Version: 1.0
In-Reply-To: <20190503165200.24328-1-javier.celaya@flexvdi.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 06 May 2019 10:37:52 +0000 (UTC)
Subject: Re: [Spice-devel] [Spice-Gtk] SpiceSession: Create webdav even with
 NULL shared_dir
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
Cc: spice-devel@lists.freedesktop.org, devel@flexvdi.com
Content-Type: multipart/mixed; boundary="===============1163445166=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1163445166==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ar367d45i3zwkws3"
Content-Disposition: inline


--ar367d45i3zwkws3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, May 03, 2019 at 06:52:00PM +0200, Javier Celaya wrote:
> A phodav server created with a NULL shared dir is valid and
> results in an error answer to all requests of the webdav channel,
> instead of silently ignoring them.
>=20
> This is better than just returning NULL from
> spice_session_get_webdav_server because:
> a) it crashes channel_webdav.c:start_client.

Can you give some steps on how to reproduce? I was trying with
remote-viewer on F29 guest earlier and couldn't.

> b) even if it did not crash, access to the shared dir from the guest
>    would fail by timeout instead of immediately notifying of an error.

Is that on windows as guest?

I spent some time looking at the code, found small issue and
added a checks on start_client(). Still, I don't see why we
should accept a webdav server running on NULL instead of only in
a valid folder but I'm also interested in fixing (a) and (b) if
possible.

Cheers,

> ---
>  src/spice-session.c | 4 ----
>  1 file changed, 4 deletions(-)
>=20
> diff --git a/src/spice-session.c b/src/spice-session.c
> index 04ba124..cbcd8c4 100644
> --- a/src/spice-session.c
> +++ b/src/spice-session.c
> @@ -2813,10 +2813,6 @@ PhodavServer* spice_session_get_webdav_server(Spic=
eSession *session)
>      static GMutex mutex;
> =20
>      const gchar *shared_dir =3D spice_session_get_shared_dir(session);
> -    if (shared_dir =3D=3D NULL) {
> -        SPICE_DEBUG("No shared dir set, not creating webdav server");
> -        return NULL;
> -    }
> =20
>      g_mutex_lock(&mutex);
> =20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ar367d45i3zwkws3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzQDngACgkQl9kSPeN6
SE869hAAm6vgRoWvd+3pNq4Uxp0wqh+S9u3gVh+qqNK57+viYH7XH5Vk9XNSnQjK
GE2HfWNPNeXfKLUaxoi3RUtMrQRrQllPdIBnvST9jWsUie9hV6t8NirWXvYJakGa
HT7U5gEIZThqwsjLuMc0Rxm0Z432bSUunZlZ0uxJsMzEJN02C/QtKcNOcx5dKj3T
KtshamI2h+53L/oFEvfXOt2yQ/VrvFtvqU85idW6B43N4QTxtuj6OJvhhR8xpySM
RfRLqneS/HfJLJJvK4WdjhftLQy4N9YIhYe7qn228uDJzsMMRhs9bfGRwI+YbryY
vecDTDzOkXNO/mA3hULq4eXep/bLlCubq3KrzrbTo4Jou1/Lf0kdcM+ieGC5gAjY
VR5Egemq68NK5tuTL8RkikB0ANTczfExk0mvnO1D9ABKb++eHWriyV6nHXaDm/CS
Vk86yGGXkzA16KJgAJoiG4/IYb2P6mrti4/pmMozk4stAZqBYy0n1ft1hGx0COan
Rr0LnjgptTSHf/q42W8jc2y540hP/qKYDDxS8YJBxD/IzLOfIqQTwRUb5XzfvQb/
/Ak3d5OI+55JKh+my7Xf0cx18TrdPwNBiRX2xF9ul+BHXwiVXnPwRql8dQmyyk2x
FgVodi75lz3WPLnN7f3vEESQa6XfP9XbDAqkmmblBhFuhVCTEWk=
=a/AV
-----END PGP SIGNATURE-----

--ar367d45i3zwkws3--

--===============1163445166==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1163445166==--
