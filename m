Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C53EB42B
	for <lists+spice-devel@lfdr.de>; Thu, 31 Oct 2019 16:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048326E0B8;
	Thu, 31 Oct 2019 15:46:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABC616E0B8
 for <spice-devel@lists.freedesktop.org>; Thu, 31 Oct 2019 15:46:32 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-wZ33EA2NMIWeRWhOf6DPXw-1; Thu, 31 Oct 2019 11:46:29 -0400
X-MC-Unique: wZ33EA2NMIWeRWhOf6DPXw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7252800EB6
 for <spice-devel@lists.freedesktop.org>; Thu, 31 Oct 2019 15:46:28 +0000 (UTC)
Received: from localhost (ovpn-117-1.ams2.redhat.com [10.36.117.1])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 392405D713
 for <spice-devel@lists.freedesktop.org>; Thu, 31 Oct 2019 15:46:28 +0000 (UTC)
Date: Thu, 31 Oct 2019 16:46:27 +0100
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <20191031154627.ase2nwgygawmzxdd@wingsuit>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1572536791;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=Gr8/AoJkysWWU21cR02lSV5x4jZkcD/kkgfmaBfMmwk=;
 b=FRiooTcKjxZ0uUU/yHwByMIoFjTuGmYxJzPWxh3+UuvdWaQhEh2vtWW8q2A+BpP6VBgtm6
 pQOAhlHDQmzrMcx3X+0gb9FkvoyTad7cjqm8t8n1nXjqZo2SuoJemstTxDZ+477XAmuquG
 KqKUoCGcxVVYuN3CpF6h90J2CvE7sw0=
Subject: [Spice-devel] Using GitLab
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
Content-Type: multipart/mixed; boundary="===============0542624902=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0542624902==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gn3da6epwgydtknf"
Content-Disposition: inline

--gn3da6epwgydtknf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi list,

You might note that the Gitlab activity will increase a bit from
now on, hopefully. It was agreed within some SPICE collaborators
to give a serious try on using this infrastructure that is
available to us.

One potential great change and challenge is the usage of merge
requests in oppose to patch series over mailing list. I hope the
benefits outweigh the downsides in the long run.

I invite you to subscribe to notifications of the components you
might be interested, to discuss and review issues and merge
requests and improve different areas code integration, testing
and release.

    https://gitlab.freedesktop.org/spice

Cheers,
Victor

--gn3da6epwgydtknf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl27AdMACgkQl9kSPeN6
SE8t4Q//ePFHzqYElEzvq1VA/4CYxSfbHCPJfip5vtmB3rwdF/pmE/U5ySsWs/CD
WMrk41XQbs40CpFm1qONoUdY40IziueWQINuh+H6gs3RMLpiAKsgIF9HdvSMpwSI
uV9fbXQBG9/+upFPuCFlMZmZ66zmPEG+62FT/sZMs7OK9I2UQRUECRPPZIYZYSf5
QRFlljjHW2FblQPqeAX3p7N7lh080ujBErPDW2lAIYt1tY4cJZUylzl1i9ssV1dC
YdjTcVpoIlFBzIBLOprS0Wof2mVHBHAEEQfzs0VZ5QPeprLWcPm4X/KsZdCg3d1H
iEp0fj5nMtgRAxDI1ijbNUpLCj/9j0YCsRAKpYRFR+Y77MRuenxf6mimGvNKmMAE
+nwRnpzC1Qlj6rlWDK4asxzi4+eV9UIdB6F+PB71wm9ZMrpjjCzFgkrIXD/BePv2
o6s2xe9H49ItE5Lmp17F9DvvMtKFM7GTeTxJw+pGasx78b+xq8MeUFC9q7f4ypUg
Rq1JGdQDzvabHUTbu41cEL45UWhkAmZRO3FXHFU95Pf5fmNJIvPF1/bHcBzr6rwi
N7OsrvahhhO1C7ltjYoX6Ehf/6xnImYp+qVt/8zIOOw5Dj/PWipu1dMrrWSjsP5R
4a2+8Sps0Izr18uhi4VSGWVbiak1/rQ2JDdGDrw58AMqsFciy7s=
=2Ldk
-----END PGP SIGNATURE-----

--gn3da6epwgydtknf--


--===============0542624902==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0542624902==--

