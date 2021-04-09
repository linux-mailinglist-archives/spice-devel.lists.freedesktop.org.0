Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE52359CA1
	for <lists+spice-devel@lfdr.de>; Fri,  9 Apr 2021 13:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57656EC0A;
	Fri,  9 Apr 2021 11:06:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 544 seconds by postgrey-1.36 at gabe;
 Fri, 09 Apr 2021 10:16:54 UTC
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D9406E48F
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Apr 2021 10:16:54 +0000 (UTC)
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 4FGv2Z2VvLzDxxd
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Apr 2021 03:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1617962870; bh=IAn+/Qo8NHujtGDY5PfVdIb3IJy5G8Fw/pbLFxOjomQ=;
 h=To:From:Subject:Date:From;
 b=WGit7aq9PRra0koP1nAmXwO/+mws0DfNcIudQxsY4zltxWtMUmP2JlvmOVnIKbH/B
 IXJI/ggVJVhUmnOfVRVx0gAbHEYcUD1JeoRSAr/Si/g8RygwO1soPISE3YLuRVSWwk
 XneyikpDfyHpSBDf2Ks0806/6+8pbvn1SVN7l/E0=
X-Riseup-User-ID: 9CB04E69E01E62B5EB919C35A728A7C9526043A19B29E5B8BC56709AD8702313
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by fews2.riseup.net (Postfix) with ESMTPSA id 4FGv2Y06Vvz1yBV
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Apr 2021 03:07:48 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
From: hottuff <hottuff@riseup.net>
Autocrypt: addr=hottuff@riseup.net; keydata=
 xsBNBGBdnf0BCACw0TEFSw/Mn0NDtPa1MuvXHvhPTA6d2gZFkBDhR+Jt/9Yks6hgE8+vx3U7
 Js9DxjEK28HxB3bjQ7vqcH/qpsNT30vgdgO8xTpkZBLXrVzwBndjsO1Nii8pYGt8697///X9
 nT8cAasL1iAJoZj9Y6Bd7lcgDsIsDf8vQQ6nE8GynhWXqyAVFnQ4qrTWV5A+8RO3HAgZ8Hxi
 fPcuS26Max1Yqs+Ab0vwfVQhPdwe1FJRfidqRL9HjkBhQmfo0Ls6zZJUw6P+hT55D2lajUnm
 jEHZ0wr6lu01Ls1SFQdWqiycTkuY+EmkJcnlfjIb5F++j9q5Jvr+se/I0t8ebybGkYbtABEB
 AAHNHWhvdHR1ZmYyIDxob3R0dWZmQHJpc2V1cC5uZXQ+wsCOBBMBCgA4FiEEnIdduI4fGg1U
 WhkvEb3VVLrFGIQFAmBdnf0CGwMFCwkIBwMFFQoJCAsFFgIDAQACHgECF4AACgkQEb3VVLrF
 GIQsywgAhv4cA1YaNbFLMpe5GozYPEE8S+HiraJCFSjL5lOgzVzLLKiq1Ewfa9z9liC9PTDp
 v74zVinCvCrBOLGw0RW4YxMBM95vfmreYalwY2PN7ru9dL/a05tH21DZP3PAWFOO8wPAroyc
 3n+Mv57qFIQFj70+2Wf3ibBeq8bu9Ub/qBBirZ3oVG1eZzP0M27keysYLL53K9Q2wdpWf3IZ
 0cHp/ppVSH9IeU49aba/HbGfL2ITGRdfUxBiad2rmEh3v0HW7TH3um6kzCO9h1Z9MGq2uV+r
 qtps5xJGM9bJqfzfnvBR36XtZRQPHW2hCNEugfhFLai5w1GvVcB9fGQhcrPHkM7ATQRgXZ39
 AQgAxHCVjzGm2wUS7EFJuwm/+sUKl94kHkFVURpj9UpRlV/MgZjkS7I+LCGPQ3V55pp+1K1t
 4V3LAT866j8wIHAPzuXKPc/MKIDIYBNr15Kd00GiC/L3H2p93yX0KK4pt5qgcda3DiKz0a2c
 0HhbdfxVuShQN5ZApS0lPcqI4PgK3AysPJ2+qAslnSWHBFZmsV0QPAybuQKRMyezc+MgaA0F
 NM+U/GNFufs1Y5eUVgFQ8Tll0B1PiUhcAiwx3bNTsIeIbFAwZ0SvQGoMCdBBQCzJoF+ZnYWR
 BoNrcZF4kvqwxYXs9aBJ2+Xnxn/uzMzEd2bNQfD6/MtaBEDJs1SdxnjcLQARAQABwsB2BBgB
 CgAgFiEEnIdduI4fGg1UWhkvEb3VVLrFGIQFAmBdnf0CGwwACgkQEb3VVLrFGIS6eAf+LG8H
 qFts4Kn7snthR0hoX+UPYEI/1re7Nudr1MDXqYyv6PwxEOebFZ3tWCsS2deEZwBpZGNczNSB
 fcF/yOHAhQpHbcVe7pjitTAGbUuDVez49TBFRO05DcuRIeQJYJ5oUoR7pv2pXPwOCz7qpxcm
 zNH4ZqYwP4wWOROVxKG2M1jsfHoTYg+E0bm5vrFcF8Y1+Jfd2mrmeu+bHu1VQsFxwCc1t6wR
 0P/pth3yhYPkrgLg8jT3aSMcBnL9FqyG5GdQagU13uvEkRji8Swn22uunaWXfgIDLwN8erMx
 iXVV34FkDKkhWb8tG8/ZiwcYMcAVYWo7pDlMdSecXYNgI/Iq0Q==
Message-ID: <773af89d-6354-a1f3-1b29-39ab0b16ce72@riseup.net>
Date: Fri, 9 Apr 2021 12:07:35 +0200
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Apr 2021 11:06:10 +0000
Subject: [Spice-devel] sig and key :)
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1271582106=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1271582106==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="YHbWbifUiyxN38uXoeLk5vRUiolaITGkH"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--YHbWbifUiyxN38uXoeLk5vRUiolaITGkH
Content-Type: multipart/mixed; boundary="957VIvz2S60nORdOLVjEIrlkExs3ewSqa";
 protected-headers="v1"
From: hottuff <hottuff@riseup.net>
To: spice-devel@lists.freedesktop.org
Message-ID: <773af89d-6354-a1f3-1b29-39ab0b16ce72@riseup.net>
Subject: sig and key :)

--957VIvz2S60nORdOLVjEIrlkExs3ewSqa
Content-Type: multipart/mixed;
 boundary="------------CF48EAF4ED96005459AA38D2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CF48EAF4ED96005459AA38D2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

x-list-name: guide@boum.org
x-resend: email@provider.tld


Hi,

on this page https://www.spice-space.org/download/windows/spice-webdavd/

if we download the " -64-latest.msi " we don't have de file .sig but=20
only the .sha256 vs if we download this file " -64-2.4.msi ". It is=20
possible to have the file .sig when we download the "-64-latest.msi "?

and it is possible to have your public key on the website?

thank you very much!


--------------CF48EAF4ED96005459AA38D2
Content-Type: application/pgp-keys;
 name="OpenPGP_0x11BDD554BAC51884.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0x11BDD554BAC51884.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBGBdnf0BCACw0TEFSw/Mn0NDtPa1MuvXHvhPTA6d2gZFkBDhR+Jt/9Yks6hgE8+vx3U7J=
s9D
xjEK28HxB3bjQ7vqcH/qpsNT30vgdgO8xTpkZBLXrVzwBndjsO1Nii8pYGt8697///X9nT8cA=
asL
1iAJoZj9Y6Bd7lcgDsIsDf8vQQ6nE8GynhWXqyAVFnQ4qrTWV5A+8RO3HAgZ8HxifPcuS26Ma=
x1Y
qs+Ab0vwfVQhPdwe1FJRfidqRL9HjkBhQmfo0Ls6zZJUw6P+hT55D2lajUnmjEHZ0wr6lu01L=
s1S
FQdWqiycTkuY+EmkJcnlfjIb5F++j9q5Jvr+se/I0t8ebybGkYbtABEBAAHNHWhvdHR1ZmYyI=
Dxo
b3R0dWZmQHJpc2V1cC5uZXQ+wsCOBBMBCgA4FiEEnIdduI4fGg1UWhkvEb3VVLrFGIQFAmBdn=
f0C
GwMFCwkIBwMFFQoJCAsFFgIDAQACHgECF4AACgkQEb3VVLrFGIQsywgAhv4cA1YaNbFLMpe5G=
ozY
PEE8S+HiraJCFSjL5lOgzVzLLKiq1Ewfa9z9liC9PTDpv74zVinCvCrBOLGw0RW4YxMBM95vf=
mre
YalwY2PN7ru9dL/a05tH21DZP3PAWFOO8wPAroyc3n+Mv57qFIQFj70+2Wf3ibBeq8bu9Ub/q=
BBi
rZ3oVG1eZzP0M27keysYLL53K9Q2wdpWf3IZ0cHp/ppVSH9IeU49aba/HbGfL2ITGRdfUxBia=
d2r
mEh3v0HW7TH3um6kzCO9h1Z9MGq2uV+rqtps5xJGM9bJqfzfnvBR36XtZRQPHW2hCNEugfhFL=
ai5
w1GvVcB9fGQhcrPHkM7ATQRgXZ39AQgAxHCVjzGm2wUS7EFJuwm/+sUKl94kHkFVURpj9UpRl=
V/M
gZjkS7I+LCGPQ3V55pp+1K1t4V3LAT866j8wIHAPzuXKPc/MKIDIYBNr15Kd00GiC/L3H2p93=
yX0
KK4pt5qgcda3DiKz0a2c0HhbdfxVuShQN5ZApS0lPcqI4PgK3AysPJ2+qAslnSWHBFZmsV0QP=
Ayb
uQKRMyezc+MgaA0FNM+U/GNFufs1Y5eUVgFQ8Tll0B1PiUhcAiwx3bNTsIeIbFAwZ0SvQGoMC=
dBB
QCzJoF+ZnYWRBoNrcZF4kvqwxYXs9aBJ2+Xnxn/uzMzEd2bNQfD6/MtaBEDJs1SdxnjcLQARA=
QAB
wsB2BBgBCgAgFiEEnIdduI4fGg1UWhkvEb3VVLrFGIQFAmBdnf0CGwwACgkQEb3VVLrFGIS6e=
Af+
LG8HqFts4Kn7snthR0hoX+UPYEI/1re7Nudr1MDXqYyv6PwxEOebFZ3tWCsS2deEZwBpZGNcz=
NSB
fcF/yOHAhQpHbcVe7pjitTAGbUuDVez49TBFRO05DcuRIeQJYJ5oUoR7pv2pXPwOCz7qpxcmz=
NH4
ZqYwP4wWOROVxKG2M1jsfHoTYg+E0bm5vrFcF8Y1+Jfd2mrmeu+bHu1VQsFxwCc1t6wR0P/pt=
h3y
hYPkrgLg8jT3aSMcBnL9FqyG5GdQagU13uvEkRji8Swn22uunaWXfgIDLwN8erMxiXVV34FkD=
Kkh
Wb8tG8/ZiwcYMcAVYWo7pDlMdSecXYNgI/Iq0Q=3D=3D
=3DRG/+
-----END PGP PUBLIC KEY BLOCK-----

--------------CF48EAF4ED96005459AA38D2--

--957VIvz2S60nORdOLVjEIrlkExs3ewSqa--

--YHbWbifUiyxN38uXoeLk5vRUiolaITGkH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEnIdduI4fGg1UWhkvEb3VVLrFGIQFAmBwJ2cFAwAAAAAACgkQEb3VVLrFGISF
Agf/WM5vgMQLAoV4uvE89q5FUjfQ1X7ScVHova1kKvn9LuU9pQpqL+nYLFBDiymUtPwnKeJNtAEm
JsfycDILJOCDUh4APXoQm9dOnc9/5BfvNy2/fJ4YvWSi3vXE3Box3YR06Wmvp48kZg21Dq/x6Qjh
0vSVbO/YjO3IO06imk9X+7z+56QHbpo43wiiS2bws3408eJDgfCzCW5VYrdsiKg/G2X/JnigcACx
apR7hTxbjALZjbXhVlLprfiW0+dC8QWP8Lj1sNRfW/Bg31UlLA046dnwaqc/GAUi61ci0xwSba+Y
3zvKM9G1MYz3mqWVIeZdcn+C2cdDqZRD1aktxtxWzg==
=OzDW
-----END PGP SIGNATURE-----

--YHbWbifUiyxN38uXoeLk5vRUiolaITGkH--

--===============1271582106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1271582106==--
