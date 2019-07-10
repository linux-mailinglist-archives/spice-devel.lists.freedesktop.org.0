Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6557646E4
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 15:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E773589A88;
	Wed, 10 Jul 2019 13:22:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44A289A88
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 13:22:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4ED1B30833C0
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 13:22:42 +0000 (UTC)
Received: from localhost (ovpn-117-44.ams2.redhat.com [10.36.117.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E783E84BD1;
 Wed, 10 Jul 2019 13:22:39 +0000 (UTC)
Date: Wed, 10 Jul 2019 15:22:38 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190710132238.vpwom7kkrknuynp4@wingsuit>
References: <20190710094924.17350-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190710094924.17350-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 10 Jul 2019 13:22:42 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v3 0/3] Implementation of USB
 backend layer
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
Content-Type: multipart/mixed; boundary="===============0198067877=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0198067877==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gxmbu2ouilpoijcy"
Content-Disposition: inline


--gxmbu2ouilpoijcy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2019 at 10:49:21AM +0100, Frediano Ziglio wrote:
> This layer communicates with libusb and libusbredir and
> provides the API for all the operations related to USB
> redirection. All other modules of spice-gtk communicate
> only with usb backend instead of calling libusb and
> usbredirhost directly.
> This is prerequisite of further implementation of
> cd-sharing via USB redirection

Looks good. I plan to do further test tomorrow morning and push,
if no one else complains.

Thanks and sorry for taking quite long time to merge this.

Cheers,
Victor

>=20
> Changes from v2: rebased on master
>=20
> Changes from v1: cosmetic changes per v1 review
> Added a rebased patch (3) from Frediano Ziglio
> For the increment see
> https://gitlab.freedesktop.org/yuri_benditovich/spice-gtk/commits/backend=
2-increment
>=20
> Yuri Benditovich (3):
>   usb-redir: isolate usage of libusb and usbredirhost
>   usb-redirection: do not duplicate USB device properties
>   usb-device-manager: Define _SpiceUsbDevice instead of
>     SpiceUsbDeviceInfo
>=20
>  src/channel-usbredir-priv.h   |  12 +-
>  src/channel-usbredir.c        | 236 ++----------
>  src/meson.build               |   2 +
>  src/usb-backend.c             | 657 ++++++++++++++++++++++++++++++++++
>  src/usb-backend.h             | 102 ++++++
>  src/usb-device-manager-priv.h |   1 -
>  src/usb-device-manager.c      | 397 +++++++-------------
>  src/win-usb-dev.c             | 103 ++----
>  src/win-usb-dev.h             |   5 +-
>  9 files changed, 967 insertions(+), 548 deletions(-)
>  create mode 100644 src/usb-backend.c
>  create mode 100644 src/usb-backend.h
>=20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--gxmbu2ouilpoijcy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0l5p0ACgkQl9kSPeN6
SE/g9RAAj/1lA/QVuIA1hzPwjuf8ao3NPdY+CtbsC3dlKk/sjbq+IfvN9DKQwFLw
oZAhWr3hs/iliGxRTf7+cokC7LrtNdCdALGDYs9tPHt/H5DK0ECs2EZzY929971W
z/JBrFZciHuypLNCWLZ+d98lVpXLT/meOfaGV2EAQtJIAFq/HrXrOQaf+oZYUFnJ
va1jRcekewbwMIrZh8dxwxj8wdKq+9i4bP0lRWXDrjGOGsjJIJYUr00lE9KXG45m
qH9hPni728mg3fkrHs1RkDXI9CIo9EDLwOrKLGU3GFuqDXdFwsyTDaS1fi1rZUSw
HhNqkzz79tzVPZxQbquC22OV7+e9+pzBRNjfKRQCtO0VQqJCraJTupT7IRJvxE9e
oj0t3AxoMQPX4EJu81qHTriM3e6cMSWGEmSmebxn9rlSmqJLxpr8D7x9AHZQRRlg
3qisZ9wdy+CznElxAXr8ekYsowvQosJ0uI4foL2pkOvPJyegGIYNgYMBH3GniU3u
obSzE1fv4OD8R5Ndj8uqpT5Fav92rxb8TLQKVESNScLDyg3dWylltKql7nqeUTxu
L/Nt3CwSjwqGMsOrCe5quoGg4w6lxlNXzb9y5NkULGjVa+k66SjN2gEbyhF45RaN
DG6uX6yhUULu0vA3FmrnuwxTZDNQsRcmpZfjGgVMoFE4R/TrTYw=
=ThYR
-----END PGP SIGNATURE-----

--gxmbu2ouilpoijcy--

--===============0198067877==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0198067877==--
