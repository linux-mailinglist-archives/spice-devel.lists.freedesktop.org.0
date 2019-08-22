Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F44199294
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 13:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A346E44D;
	Thu, 22 Aug 2019 11:50:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250386E44D
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 11:50:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BFBA358569;
 Thu, 22 Aug 2019 11:50:37 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6A2A46012A;
 Thu, 22 Aug 2019 11:50:35 +0000 (UTC)
Date: Thu, 22 Aug 2019 13:50:35 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190822115035.aa6hhpnamvimvbip@wingsuit>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
 <20190812095729.32692-2-yuri.benditovich@daynix.com>
 <20190822101844.eamrljoozhujwofp@wingsuit>
 <CAOEp5OdMbM+HYVsvz9aBGPP_sZyzNtjD5791ChSG3-sBo8V9SQ@mail.gmail.com>
 <339397030.8221775.1566470737892.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <339397030.8221775.1566470737892.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 22 Aug 2019 11:50:37 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v3 1/9] usb-redir: define interfaces
 to support emulated devices
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0923784521=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0923784521==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2wrmcnjeyspayou7"
Content-Disposition: inline


--2wrmcnjeyspayou7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 22, 2019 at 06:45:37AM -0400, Frediano Ziglio wrote:
> > On Thu, Aug 22, 2019 at 1:18 PM Victor Toso <victortoso@redhat.com> wro=
te:
> > > I take creating emulated devices can take some time, isn't
> > > it worth to do async?
> >=20
> > I do not see any point where it can take perceptible time.
> > Creation of the device is 'go - no go' and fails only in case
> > the file name is wrong.

Well, it is a bit generic thing this emulated usb device
creation. That's why I thought it could make sense. Not a problem
anyway, more like a question than a suggestion.

> I agree with Yuri. Also if the device is really complicated and
> needs some long initialization probably would better to return
> a valid device and fail later at the USB layer.

Ok

> For instance in this specific case you can return an emulated
> CD device with no emulated disc in it and later send to the
> guest OS that a disc was inserted.

--2wrmcnjeyspayou7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1egYoACgkQl9kSPeN6
SE9QPA/+LFz3myH7cubWeD2Ui5IZx2kpGCrrWBPLLcaCr5PhW8dkGztStbYJPc3i
m/Z3aJYidCO1xq4rPl92rnj46zstdhF6oRbhsJne9lucxO2mmGe630pNZ1sYo66k
pm1bsNZpdUhJDKh21JVDJXVS7VIotl9VzXb/uXhZoXjhTuCNgtMCNIAz9SiV8Jjt
QbQoacKnHV/P2bI5Ne6hlT9zsWZBL84EyEnD/EpVAdGu956nhLGSX+Xgb3bjMZpj
hixu1RLxwHo2KWJ8u/eLJqLonD1yh7Qg852iB+ulyzOV/HmDbb/gmywXo5eX35tg
eDoqwp0DqHr+TUY1OkFAPqXfAWLB6yexqfqylqL5CJOkbwgwAgPDQq+9kKluGDzV
8jdDNdHwh9zMDc6q4tCFJss2CsimbwXn2rogPXRS9FeBM+nAZm0qfueYWNg+QgUk
UIUFFJnvqLE3g+n/riCHGvYgIl3rPjW1snY7Uv6vrwEf6PDUdHy8AP/kT4Mpzy7M
HcEv9q37D00LocRgZKEAvY+fpwTcZH/tGHJ9emrmMfUUyi+HlufPOLV4Q2D+ibM4
uHQ0d4Ckr4oDo7+PSNgNFz9ac0tvjj7abq7bqvmq6ZEMZjJdzXYBeHHDdhq+9zsr
2vxpEZI/VPDy1iCoHGVQizgZF/p2goBJn3OeXsBigd4dg9xb6OU=
=dJ0M
-----END PGP SIGNATURE-----

--2wrmcnjeyspayou7--

--===============0923784521==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0923784521==--
