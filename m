Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C29C99090
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 12:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3B876EADC;
	Thu, 22 Aug 2019 10:20:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E05A6EADC
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 10:20:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 23BB481F13;
 Thu, 22 Aug 2019 10:20:11 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C0DF660E1C;
 Thu, 22 Aug 2019 10:20:10 +0000 (UTC)
Date: Thu, 22 Aug 2019 12:20:10 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190822102010.t6gj2lziakbdysme@wingsuit>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20190812095729.32692-1-yuri.benditovich@daynix.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 22 Aug 2019 10:20:11 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v3 0/9] added feature of sharing CD
 image
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
Content-Type: multipart/mixed; boundary="===============1000037525=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1000037525==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oixr6d2vhsdxrzio"
Content-Disposition: inline


--oixr6d2vhsdxrzio
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Aug 12, 2019 at 12:57:20PM +0300, Yuri Benditovich wrote:
> This series of patches adds feature of sharing CD image via
> redirection of emulated CD device. Currently the trigger to
> create the device is command-line option:
> '--spice-share-cd <ISO file name>
>=20
> Changes from v2: fixes resulted by reviews (based on fixups
> of Frediano Ziglio)
>=20
> Changes from v1: fixes resulted by reviews (mainly based on fixups
> of Frediano Ziglio)
>=20
> Frediano Ziglio (1):
>   usb-redir: cosmetic style fixes
>=20
> Yuri Benditovich (8):
>   usb-redir: define interfaces to support emulated devices
>   usb-redir: move implementation of device description to USB backend
>   usb-redir: do not use spice_usb_acl_helper for emulated devices
>   usb-redir: extend USB backend to support emulated devices
>   usb-redir: add files for SCSI and USB MSC implementation
>   usb-redir: add implementation of emulated CD device
>   usb-redir: enable redirection of emulated CD drive
>   usb-redir: command-line option to create emulated CD drive
>=20
>  src/cd-scsi-dev-params.h |   49 +
>  src/cd-scsi.c            | 2740 ++++++++++++++++++++++++++++++++++++++
>  src/cd-scsi.h            |  120 ++
>  src/cd-usb-bulk-msd.c    |  544 ++++++++
>  src/cd-usb-bulk-msd.h    |  134 ++
>  src/channel-usbredir.c   |   31 +-
>  src/meson.build          |    8 +
>  src/scsi-constants.h     |  324 +++++
>  src/spice-option.c       |   17 +
>  src/usb-backend.c        |  777 ++++++++++-
>  src/usb-backend.h        |    4 +
>  src/usb-device-cd.c      |  783 +++++++++++
>  src/usb-device-cd.h      |   34 +
>  src/usb-device-manager.c |   63 +-
>  src/usb-emulation.h      |   88 ++

It is a shame that no unit tests were added. Do you plan to do it
in future patchsets?

>  15 files changed, 5628 insertions(+), 88 deletions(-)
>  create mode 100644 src/cd-scsi-dev-params.h
>  create mode 100644 src/cd-scsi.c
>  create mode 100644 src/cd-scsi.h
>  create mode 100644 src/cd-usb-bulk-msd.c
>  create mode 100644 src/cd-usb-bulk-msd.h
>  create mode 100644 src/scsi-constants.h
>  create mode 100644 src/usb-device-cd.c
>  create mode 100644 src/usb-device-cd.h
>  create mode 100644 src/usb-emulation.h
>=20
> --=20
> 2.17.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--oixr6d2vhsdxrzio
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1ebFkACgkQl9kSPeN6
SE9NyRAArEemOLqUOMnUHbe6jHJWUSXhNR6hDDYYLaO947di9HIUFqWmYE/pzvts
l0F0ntivePBcSMsexQCjDtLCzjWwUIvamWuneVhdQRJBcvOsuyXUCi8Pmka94bpV
opUo6x8WXhNwsJK0zLC5bzw+qXLaJO8dC6CPaXaTHph4Y2BI+rUTb548iu66O5s2
LLcpesu2SuAbFfgvbf9ULZz32jKQZXkECdJOC9xRQd78Ga81rES4IHqtxfF/xbU9
zgxnN0Pq2WipjvNGhSY3bvBMcGq0LrldYSmcrGq1Fs7XP+o9DUCzTs2niIIVSsPp
VpdcVhaywqk0WCiMLo4D439eqi83H+LhTJ6AKI7YbbQwpUaWvVF41P9DTSi52C2c
EFZ+r+VgQ9hCeaKTl455OgQKqOXBI6V+JZfUT7SneMrFX+kPAJiNg0OSgiztxLqx
jbd4cBcdhEjAmI18ZpQJM37/wZBGv1bg1wYMo2N4QuVTg4ONTenvzCaQR+RAO0mr
Js4+frmWrlk887YOZJyXJar7kD8dUIxuFwEYLIHxmp8x9lKJ3cL+1StL4njCR7it
o+YDsQRSkc7sYR60iMJQzEtDzXqJGjkkQhHyFvm0dzNgnGUk0qQP8XVlemqacMFw
5tE7suGxRocOxOMUJ5AI4Kiha74RSNb2t8iriuApOGSBMCt37jU=
=5UZq
-----END PGP SIGNATURE-----

--oixr6d2vhsdxrzio--

--===============1000037525==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1000037525==--
