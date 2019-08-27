Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C58E59E7E2
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 14:28:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C8E898FD;
	Tue, 27 Aug 2019 12:28:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A750D898FD
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:28:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1315A3082131
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:28:35 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AB72860BEC;
 Tue, 27 Aug 2019 12:28:33 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:28:32 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827122832.geyx2fdligptg7mh@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-17-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-17-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 27 Aug 2019 12:28:35 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 16/29] fixup! usb-redir:
 enable redirection of emulated CD drive
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
Content-Type: multipart/mixed; boundary="===============1707834746=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1707834746==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cb3j4fzfyvrvm5tu"
Content-Disposition: inline


--cb3j4fzfyvrvm5tu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:33AM +0100, Frediano Ziglio wrote:
> Do not build usb emulation files if usb is disabled
> ---
>  src/meson.build | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
>=20
> diff --git a/src/meson.build b/src/meson.build
> index 8bfc923b..00eb2778 100644
> --- a/src/meson.build
> +++ b/src/meson.build
> @@ -124,13 +124,6 @@ spice_client_glib_sources =3D [
>    'usb-backend.c',
>    'usb-emulation.h',
>    'usb-backend.h',
> -  'usb-device-cd.c',
> -  'usb-device-cd.h',
> -  'cd-scsi.c',
> -  'cd-scsi.h',
> -  'cd-scsi-dev-params.h',
> -  'cd-usb-bulk-msd.c',
> -  'cd-usb-bulk-msd.h',
>    'vmcstream.c',
>    'vmcstream.h',
>  ]
> @@ -164,6 +157,18 @@ elif spice_gtk_coroutine =3D=3D 'winfiber'
>    spice_client_glib_sources +=3D 'coroutine_winfibers.c'
>  endif
> =20
> +if spice_gtk_has_usbredir
> +  spice_client_glib_sources +=3D [
> +    'usb-device-cd.c',
> +    'usb-device-cd.h',
> +    'cd-scsi.c',
> +    'cd-scsi.h',
> +    'cd-scsi-dev-params.h',
> +    'cd-usb-bulk-msd.c',
> +    'cd-usb-bulk-msd.h',
> +  ]
> +endif
> +
Acked-by: Victor Toso <victortoso@redhat.com>
>  if spice_gtk_has_usbredir and host_machine.system() =3D=3D 'windows'
>    spice_client_glib_sources +=3D ['usbdk_api.c',
>                                  'usbdk_api.h']
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--cb3j4fzfyvrvm5tu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lIfAACgkQl9kSPeN6
SE+YvA//RjbMnHz8OlalBspCHopmHqRd4EseoblsL790h0wD2JeJMrGQva3yOVtv
axNHAJrwEbbSyrvgbhnzo7+Vxmr2HybspRPDjJwlFhhzLMk596l9aKdLPquSLeuO
XW+PhyDVGPxd1vo1HM4yn5x2b2iiygOdyutaup8yEzhj1TlzYL4YoGqWs/l1wTb2
Pt8jO4oiTMokr1JaxCEnBgUo1D7j38QdDAsXmxAb2apqeVRXZa8AWhlK9iFr8Kl5
pF+h5PVuXhD8S0RKRzg6m8mLSyxaOxZc6cXkYaSjeRVYPx6+6G2AoRK8Tk0byDro
sLEInL/wh8520TTGHhiQ9fhs72aRTsa1qI5U9M2sR8CgEeuSfx0QZgSaykNZoKfR
1+bZAqvwnhPKcC+vA4zeQo4ol2nbx8pMU3Mx0cAJ9yRXXzsHzrC4HlZ9J5JsvrKU
PmLyKo8UgxRi4iJG9fCkdFgY6fQgaEuaqtqh45TO0dEPQGxFb+xbfZyasuetPp1o
r1zLDe1iMwBnp2Y6qoI+hT2WfJqUWY7dlAGm4E8pO6YbKb9vslgryjYzl66tB7IW
N4X8+Pwdyp99ztY5L4QAYL5LtjXtBzQ29zYTmD3SohudTt/4U2ySru8vBrKWiXlh
bjyuaHQtAQ8WuwwDJc8Yuk6n/bQQLJYQTGfY135dtkUbI19NHBU=
=Bdxs
-----END PGP SIGNATURE-----

--cb3j4fzfyvrvm5tu--

--===============1707834746==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1707834746==--
