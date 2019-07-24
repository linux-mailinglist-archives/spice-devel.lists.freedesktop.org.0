Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9170D72A36
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 10:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28CC26E49C;
	Wed, 24 Jul 2019 08:34:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A53C6E49C
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 08:34:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 96F8730832C8;
 Wed, 24 Jul 2019 08:34:53 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 42E5D5D9DE;
 Wed, 24 Jul 2019 08:34:53 +0000 (UTC)
Date: Wed, 24 Jul 2019 10:34:52 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190724083452.474n5z55hnpdxfkx@wingsuit>
References: <20190723151349.6490-1-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190723151349.6490-1-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 24 Jul 2019 08:34:53 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v3 0/4] usb-redir: unification of
 Linux and Windows code
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
Content-Type: multipart/mixed; boundary="===============1484326039=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1484326039==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5xoc6x25iyqgm7gv"
Content-Disposition: inline


--5xoc6x25iyqgm7gv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 23, 2019 at 06:13:45PM +0300, Yuri Benditovich wrote:
> This series is dedicated to unification of Linux Windows flows
> in usb-device-manager. It moves differences related to libusb
> to USB backend module and simplifies implementation of procedures
> related to USB redirection.
>=20
> Changes from v2: cosmetic changes
>=20
> Yuri Benditovich (4):
>   usb-redir: unify device hotplug/unplug for Windows and Linux
>   usb-redir: pass GError to hotplug registration procedure
>   usb-redir: move USB events handling to USB backend
>   usb-redir: use g_thread_try_new instead of g_thread_new

Acked-by: Victor Toso <victortoso@redhat.com>
and pushed,

Thanks.
>=20
>  meson.build                   |   2 +-
>  src/channel-usbredir.c        |  28 ---
>  src/meson.build               |   4 +-
>  src/usb-backend.c             | 309 ++++++++++++++++++------
>  src/usb-backend.h             |  13 +-
>  src/usb-device-manager-priv.h |   6 -
>  src/usb-device-manager.c      | 139 +----------
>  src/win-usb-dev.c             | 436 ----------------------------------
>  src/win-usb-dev.h             |  84 -------
>  9 files changed, 245 insertions(+), 776 deletions(-)
>  delete mode 100644 src/win-usb-dev.c
>  delete mode 100644 src/win-usb-dev.h
>=20
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--5xoc6x25iyqgm7gv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl04GCwACgkQl9kSPeN6
SE/5yg//Uq+XmkzMdW4hDWerXaqcbI69xujGlWfJlJnBgzu3I16wQzf29ZCWko+y
BHBbUIjR4AKjXiPGcEH/GuWdsDIyNN8zZZI3lqzZerdE0w5MhqU/xSs6dye5NRc/
RijNoTUSQOXZzKCu37NlYUguIzu2PtWt7afrh4hDOK1xeesTlz4SQ694PY0cpzVq
72RZtqML/5eFsxhCGIg7uLSOsWpFCxFsY6hz13f2qlMyt2KboORJ3nkIw4dirj02
2fnthkop4Ym9RJL0POhMGoKxwS+mDDQ4KbMRbU6tbMlZhOTg1trgMm5pPDD+oam+
CgTxb2QcwHb+vOiMdPKL98lWSK2DTyz6FYPLggUCWlsviQD1ysyuwepXuB3M0jZ9
O7kHWMAZzNatCXdhuP4nIiy1OAAjPg7lLCfnTvtcBC8V0zrb+n7c57CePaMaFVoQ
8Kz1icc/ZMZMvpaFB/EHFjjoWAbm1KrOt0NlebCcFW9+ESr5F713QlaEKUt61nIk
llYOZWT/oLFIDDFn1lG+RlZb6yJiTStCs4mNGdMuPG4GbMVOsSlzsyTFXvv1+mSJ
3h8spLV8xUlUkII8mmXg+iyjIIu/0JPzNk0IrI0f8QcGD0XZlfxqD8j6OCAwBfx6
4HeaHbJ1mze2sppbB3yzvaF9/yT6+hMLBiqH9mshwF5srnrLuaY=
=zE5F
-----END PGP SIGNATURE-----

--5xoc6x25iyqgm7gv--

--===============1484326039==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1484326039==--
