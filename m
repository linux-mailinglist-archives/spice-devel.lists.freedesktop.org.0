Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 032C4BFA3B
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 21:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B5AB6EDF9;
	Thu, 26 Sep 2019 19:41:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ED66EDF9
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 19:41:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6613118CB8FF;
 Thu, 26 Sep 2019 19:41:57 +0000 (UTC)
Received: from localhost (ovpn-116-93.ams2.redhat.com [10.36.116.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E6F795D6B0;
 Thu, 26 Sep 2019 19:41:56 +0000 (UTC)
Date: Thu, 26 Sep 2019 21:41:55 +0200
From: Victor Toso <victortoso@redhat.com>
To: "Priya, Nupur" <Nupur.Priya@harman.com>
Message-ID: <20190926194155.4ts2hmhgtfcwhanf@wingsuit>
References: <affddb8935464a82ab3623f0bd2a289e@HIBDWSMB01.ad.harman.com>
MIME-Version: 1.0
In-Reply-To: <affddb8935464a82ab3623f0bd2a289e@HIBDWSMB01.ad.harman.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Thu, 26 Sep 2019 19:41:57 +0000 (UTC)
Subject: Re: [Spice-devel] Dependency failed for Activation socket for spice
 guest agent daemon
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0972415975=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0972415975==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cswntverlqz6sp3m"
Content-Disposition: inline


--cswntverlqz6sp3m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2019 at 11:24:45AM +0000, Priya, Nupur wrote:
> Hi All,
>=20
> The fix provided at link https://bugzilla.redhat.com/show_bug.cgi?id=3D15=
45212, does not work on boot messages.
> Could you please help me understand how, this warning can be
> removed from booting console. I tried few things, like creating
> initramfs and squash.img without these spice-vdagent installed
> on the system. But none of that worked.  Please help me with
> this.

Which version of the agent are you running?
AFAIR, this should be fixed also by

    https://gitlab.freedesktop.org/spice/linux/vd_agent/commit/56d50d21223e=
6d9aec4a68400d8e36c5953ba3cc

(not only the commit mentioned in rhbz#1545212, which is:

    https://gitlab.freedesktop.org/spice/linux/vd_agent/commit/b07420eea0aa=
ba1b9a375eac03c1dbb565287f11
)

Cheers,

>=20
> Regards,
> Nupur

> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel


--cswntverlqz6sp3m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2NFIMACgkQl9kSPeN6
SE/vyA//WJ8ALzXFuMF1Tl2az5bv17C6lBaGfcIeVhgb+8kETuSYzVptLHB9HoNH
M5eermH5RLJLSqToSrN2mHRwJ2odSoU/vzMCszsTUrZi9YOkb+ddt80Lr+r9rp0P
Nrjt9zLdcQ/nBPwWvgLcXTEcBdJJMNVUwa4KvUKkUhpMc6mB+FBalv7KR9/ilJUy
bCADORnQhNXe8h34MVlpwjuTrLEjqlGDQ/tycepG1gi1hIZLt93v5ZIIPtM0ELsJ
gCyykwKL2F9y+HIK5Bdfp8jcAXozPV0zot31wy2/L9JNvyDl/SEmD2oX5IOCCdnF
eze9Oqxr+wJVcwtuhlm6Lda7GQBkSIXYjPMaACfDmRxQmMWtdjByLJ/09RLXeWZW
h7TCRSQsc+Ltg698fwC34Gn+gcT1cW8F/o/fPwG8qaHxKk+Xvj+OurKr0rbvVemZ
HqgpC7EWC4f7CWvlXM1/fx9UQyhcwEmHawTIiVUAhMTx/7T7JPAsM1og1GRkKRtx
Nf74jXwwQ1Ndtgr/vMwQA7Y/650lwXy7xGpftSm37rmQ8Dut0F1elmvJspcpuc4U
meO12XolZFiAUtJwzS2+V+UuRYCXY+Q9r3g8MFvAZ8d4JYYjrdlcW88Sl80d9DyO
g+erKMsFea2oos3NR1t7V7EmxoVcpNOL8Wv1OkLpLdWByYP4x7w=
=bF/p
-----END PGP SIGNATURE-----

--cswntverlqz6sp3m--

--===============0972415975==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0972415975==--
