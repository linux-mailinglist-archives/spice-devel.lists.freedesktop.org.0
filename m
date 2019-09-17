Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA3FB49A4
	for <lists+spice-devel@lfdr.de>; Tue, 17 Sep 2019 10:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011056EB62;
	Tue, 17 Sep 2019 08:37:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE866EB62
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Sep 2019 08:37:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E055930821A3
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Sep 2019 08:37:06 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8D28E60BE1;
 Tue, 17 Sep 2019 08:37:06 +0000 (UTC)
Date: Tue, 17 Sep 2019 10:37:05 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190917083705.nbx4lqraggmkxvqm@wingsuit>
References: <20190911075547.5210-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190911075547.5210-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 17 Sep 2019 08:37:06 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] reds: Inline
 reds_mig_switch function
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
Content-Type: multipart/mixed; boundary="===============1375865234=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1375865234==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p2d22h7llrwozc6j"
Content-Disposition: inline


--p2d22h7llrwozc6j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 11, 2019 at 08:55:46AM +0100, Frediano Ziglio wrote:
> No much reason for not inlining it, it's quite small and do
> not reduce readability.
> Note that spice_server_migrate_switch is deprecated and not
> used by Qemu since commit 67be6726b6459472103ee87ceaf2e8e97c154965
> (cfr "spice: raise requirement to 0.12" September 2012).
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

For series,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/reds.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
>=20
> diff --git a/server/reds.c b/server/reds.c
> index c294137be..cd8e796aa 100644
> --- a/server/reds.c
> +++ b/server/reds.c
> @@ -3148,16 +3148,6 @@ static void reds_mig_finished(RedsState *reds, int=
 completed)
>      reds_mig_release(reds->config);
>  }
> =20
> -static void reds_mig_switch(RedsState *reds)
> -{
> -    if (!reds->config->mig_spice) {
> -        spice_warning("reds_mig_switch called without migrate_info set");
> -        return;
> -    }
> -    main_channel_migrate_switch(reds->main_channel, reds->config->mig_sp=
ice);
> -    reds_mig_release(reds->config);
> -}
> -
>  static void migrate_timeout(void *opaque)
>  {
>      RedsState *reds =3D opaque;
> @@ -4427,7 +4417,12 @@ SPICE_GNUC_VISIBLE int spice_server_migrate_switch=
(SpiceServer *reds)
>         return 0;
>      }
>      reds->expect_migrate =3D FALSE;
> -    reds_mig_switch(reds);
> +    if (!reds->config->mig_spice) {
> +        spice_warning("spice_server_migrate_switch called without migrat=
e_info set");
> +        return 0;
> +    }
> +    main_channel_migrate_switch(reds->main_channel, reds->config->mig_sp=
ice);
> +    reds_mig_release(reds->config);
>      return 0;
>  }
> =20
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--p2d22h7llrwozc6j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2AmzEACgkQl9kSPeN6
SE9hxQ/+NuMpbo+sXo1QZdT7UUFCfP2NFN78+Go/QYn+y/y1e7dJ/qZQbGvwxPSx
0DdxS5oxshSM1mpjqlLmyt7QnQbcVLIPDpfNLl7JUkz7cQW00DIHYcPq1wxiWXN7
bkl1DWSgoM8ovJo+xUOeZoSQ6+qGwEBTk5lOuWYpkee6JHScUsU6O9bQN3+vzbm2
eObqq+j1u1lqKv4RzJ+iHmwO/EgFgt56MSX/x4Zm/RmYDKE5GU0AroKj1FRIh6si
bNliEZR2KlL85TtuRt0VyRLtguheJRMGcnzQglIDookmlu3y7sLrrnenasqJK5y1
FVh2uFSCk25i9AeLj3sHwDzhtEraxDMxX7XpEHrJyME22xP4dfvPhmDWGqFJ7MG4
UNVncFYcS7hMvs83LdC/lCxW0936AfCa3umHXS+3PIBRKDERKnngPbwJvEJ2cEx5
k6BT55M8FUGsigLtWD0SkXa+j4+CanKqtak7k8BaglpqtE7dzqKg32qJG0LuNupq
L/EPZ1VG/T/wlpWJQYQDVHQcjszJdiyWw15IwXIuu3/aPwlBFZN54kiaEBE8XdNU
Bxs/TFvLVNYNCE4V0yUw8tb2uxWNHEmFhqvsLGD3lO9xnRO4WNIKL7FihJWZaueo
uj4DdphzEeHFEerX39sWXtswu/Zmr0mBPN7mvhsfRrSF94UfwUM=
=3orI
-----END PGP SIGNATURE-----

--p2d22h7llrwozc6j--

--===============1375865234==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1375865234==--
