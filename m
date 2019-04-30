Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B11F1DD
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 10:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D667B89548;
	Tue, 30 Apr 2019 08:13:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E52A89548
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 08:13:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C18C785360
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 08:13:40 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6DB4560C78;
 Tue, 30 Apr 2019 08:13:40 +0000 (UTC)
Date: Tue, 30 Apr 2019 08:13:39 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190430081339.cbdapimzxtheqxzl@toolbox>
References: <20190426072033.11371-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190426072033.11371-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 30 Apr 2019 08:13:40 +0000 (UTC)
Subject: Re: [Spice-devel] [vdagent-win PATCH] Remove some unused definitions
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
Content-Type: multipart/mixed; boundary="===============2007815704=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2007815704==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v2txyt3e2agq7quf"
Content-Disposition: inline


--v2txyt3e2agq7quf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 26, 2019 at 08:20:33AM +0100, Frediano Ziglio wrote:
> _ftime_s, vdagent_strcat_s and vdagent_strcpy_s are not used.
> Code is using different string functions.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Not used since commit ae4a4f0 in 2015-04-30
Sure,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  common/vdcommon.cpp | 42 ------------------------------------------
>  common/vdcommon.h   | 24 ------------------------
>  2 files changed, 66 deletions(-)
>=20
> diff --git a/common/vdcommon.cpp b/common/vdcommon.cpp
> index 36faa2d..bd746bd 100644
> --- a/common/vdcommon.cpp
> +++ b/common/vdcommon.cpp
> @@ -37,48 +37,6 @@ SystemVersion supported_system_version()
>      return SYS_VER_UNSUPPORTED;
>  }
> =20
> -#ifndef HAVE_STRCAT_S
> -errno_t vdagent_strcat_s(char *strDestination,
> -                         size_t numberOfElements,
> -                         const char *strSource)
> -{
> -    if (strDestination =3D=3D NULL)
> -        return EINVAL;
> -    if (strSource =3D=3D NULL) {
> -        strDestination[0] =3D '\0';
> -        return EINVAL;
> -    }
> -    if (strlen(strDestination) + strlen(strSource) + 1 > numberOfElement=
s) {
> -        strDestination[0] =3D '\0';
> -        return ERANGE;
> -    }
> -
> -    strcat(strDestination, strSource);
> -
> -    return 0;
> -}
> -#endif
> -
> -#ifndef HAVE_STRCPY_S
> -errno_t vdagent_strcpy_s(char *strDestination,
> -                         size_t numberOfElements,
> -                         const char *strSource)
> -{
> -    if (strDestination =3D=3D NULL)
> -        return EINVAL;
> -    strDestination[0] =3D '\0';
> -    if (strSource =3D=3D NULL)
> -        return EINVAL;
> -    if (strlen(strSource) + 1 > numberOfElements) {
> -        return ERANGE;
> -    }
> -
> -    strcpy(strDestination, strSource);
> -
> -    return 0;
> -}
> -#endif
> -
>  #ifndef HAVE_SWPRINTF_S
>  int vdagent_swprintf_s(wchar_t *buf, size_t len, const wchar_t *format, =
=2E..)
>  {
> diff --git a/common/vdcommon.h b/common/vdcommon.h
> index ac58efe..c846a7b 100644
> --- a/common/vdcommon.h
> +++ b/common/vdcommon.h
> @@ -84,34 +84,10 @@ typedef Mutex mutex_t;
>   * Currently Visual Studio builds are built with /MT (static mode) such =
that
>   * those functions are not required to be in that dll on the guest.
>   */
> -#ifdef OLDMSVCRT
> -#ifndef _ftime_s
> -#define _ftime_s(timeb) _ftime(timeb)
> -#endif
> -#endif /* OLDMSVCRT */
> -
>  #ifdef _MSC_VER // compiling with Visual Studio
> -#define HAVE_STRCAT_S 1
> -#define HAVE_STRCPY_S 1
>  #define HAVE_SWPRINTF_S 1
>  #endif
> =20
> -#ifdef HAVE_STRCAT_S
> -#define vdagent_strcat_s strcat_s
> -#else
> -errno_t vdagent_strcat_s(char *strDestination,
> -                         size_t numberOfElements,
> -                         const char *strSource);
> -#endif
> -
> -#ifdef HAVE_STRCPY_S
> -#define vdagent_strcpy_s strcpy_s
> -#else
> -errno_t vdagent_strcpy_s(char *strDestination,
> -                         size_t numberOfElements,
> -                         const char *strSource);
> -#endif
> -
>  #ifndef HAVE_SWPRINTF_S
>  int vdagent_swprintf_s(wchar_t *buf, size_t len, const wchar_t *format, =
=2E..);
>  #define swprintf_s vdagent_swprintf_s
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--v2txyt3e2agq7quf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzIA7MACgkQl9kSPeN6
SE+hug/8DPd7UldyXmmZa04CFLGBGV/Z9MFOfJ2oUjEGsnspCLaM4GXlDqOPCB6Q
rIWShyWobRk/xtwqMedqZZsRGUyqwFYzcxrDlW98jucaVBOhSZUPNLUIGOdehDu4
/RHxJuXxV4B6IvWU94klqEy5uu58nLU2uPkybgoH0AUFQK3/rdyRY85onMGL9btB
ARB4w19dKvq2uwagXDZC7wajN99kfflQec2kGsu79Q8Oo/QHeNK4v0ta3E+z/3e3
gy/Pa+GOuwvHj7ikMrr6Ie1k06EC4XhkoyeJ1qz8LB0BE2+Zf7ncEf+dmei/kMCS
Yepo3MxQk0/nfqu696aDZeai6siUrIj34NKxjQZDLJvYsIg5JltHH6sGY4O6+2f1
Z2ZckJQTwW0sif6qRZvvJT8LMt3rjtbFNIC8O4WOpOyF8W1Mrc3ScYFXuUeeyLjS
kputQu9L1mtxtCl+/ri8fEZrQYDLF/zzhADxG86Uid+sCMBCSz4mMr4jp4qdf4J/
q5S/QmPPkwTTNRm6SsUdHxaDbaAshVd31gD7vFAXx92VpDc+xFlm/7hloq/zB9mP
JxGkDN+NiP1Gy+uHkwcFc5flH4E2c2UP98PS2pjDLl/sbpwznL6KmJGxW+hWTjO8
6PX2mIh5p5TdSj4n1647lR+XrOFKMWx+JuUNver2zUSHYxtd/Qc=
=aPh6
-----END PGP SIGNATURE-----

--v2txyt3e2agq7quf--

--===============2007815704==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2007815704==--
