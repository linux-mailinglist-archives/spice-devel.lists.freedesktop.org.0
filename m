Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC9D279B9
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 11:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B6889D7B;
	Thu, 23 May 2019 09:51:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9DEB89D7B
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 09:51:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6D37430842A9;
 Thu, 23 May 2019 09:51:48 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1848761364;
 Thu, 23 May 2019 09:51:47 +0000 (UTC)
Date: Thu, 23 May 2019 09:51:47 +0000
From: Victor Toso <victortoso@redhat.com>
To: zap83q <zap83q@163.com>
Message-ID: <20190523095147.fr3cjroxiqf2ow5r@toolbox>
References: <6ca679a4.1099d.16ae3a091c8.Coremail.zap83q@163.com>
MIME-Version: 1.0
In-Reply-To: <6ca679a4.1099d.16ae3a091c8.Coremail.zap83q@163.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 23 May 2019 09:51:48 +0000 (UTC)
Subject: Re: [Spice-devel] use spice proxy
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
Content-Type: multipart/mixed; boundary="===============1280426927=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1280426927==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sth6uhybijyoy3ls"
Content-Disposition: inline


--sth6uhybijyoy3ls
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, May 23, 2019 at 03:38:32PM +0800, zap83q wrote:
> Hi,
>    When I try to use proxy to connect spice server, it return a
>    virt-viewer warning: "donnot allow http proxy connect", why?
> I do config like https://www.spice-space.org/spice-proxy.html

Could you please post:
- Spice-gtk/virt-viewer versions
- Are you on windows or linux client?
- Would be possible to run remote-viewer with --spice-debug and
  paste or attach those logs here?

Thanks,
Victor

--sth6uhybijyoy3ls
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzmbTMACgkQl9kSPeN6
SE8ABQ//RUdWTW+VCvIXx9IPGHVfBv9laE0bVyu4lt3jPHtwDzw8nVNQxXWc9m0l
pKYNnrM8YA6uEqqv13bwe5zWsIhU+bQymDXgT0qPojXtjaco/ho/TdG1d3YOuyCy
VmF3aEPE5vCYazz5MYHDM5T2gA7aND1SZqK3rJJsjm+534YOfVJSITNFzWiOatNq
Os5BfqPWUwnm9gH5zVnwPb3PZ5yjyGoy5j75Z2fyoz3hTePyTyIXMc6pzaI+GPU3
rewlP9UR/Z6gZab0LJcvqM2xnAhCmew2KrwPMeOPsLgHgEMPYYWdvq8gb6FYq1sF
+BBiGAMWfboU4lCqmZK+2Q3Knkok9tZ7dXWLDAiLv5tw7UgiQsjZ+jAWNRMReqZ7
40A9CBcwrObfeIXdpo6o+g+gmlCwT28jX0FptCSqV3yzivea8fxcAqC2gDXabuzG
acz/tX6Pu7PN7DEHLImtjJU94RET6igyzu4ciag+OFUgyD+ZAKsVQhVVT/43IEAO
PptgFX+J3hvMdxWFqijoQeu31ZtACV8wiZHmHpv4Kl7PE68DaEEuZqjoE48Cl4vN
ohAHWkljd6+ArpveD1cvRzYpZ62DQKj2444N8/Na19LhFZYdbbJ6GgwZa0cILF1O
ZuMSxb6pW83/HnLBFUrfjO67lTKCsZnrOertk/hOxEp2emexpsg=
=zFS5
-----END PGP SIGNATURE-----

--sth6uhybijyoy3ls--

--===============1280426927==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1280426927==--
