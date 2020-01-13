Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9304138E11
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 10:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A52789CC9;
	Mon, 13 Jan 2020 09:44:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819FF89CC9
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 09:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578908669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GMrZXuEipI2x752F6qyehuFM70LfQ03ktBroILXL7As=;
 b=B758otTN/WfpVSEsNRINFdrKbDVFgFUZIogTYwOWjJjlrIOd6DRYOvRopT+l55S+p4ngwG
 lXeTwiuD05dQhtzzWlG7UFf55cz9/ED+1uDygngigdEAszZtAX9ZiJSK8SJRZX9ZTbWMlo
 +XLHD88iwmX9DhTo2dm3oz/cUJZ5AAI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-J1ayhQyANCuUI9w2QiZg1w-1; Mon, 13 Jan 2020 04:44:27 -0500
X-MC-Unique: J1ayhQyANCuUI9w2QiZg1w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 733E51097A4C;
 Mon, 13 Jan 2020 09:44:26 +0000 (UTC)
Received: from localhost (ovpn-117-148.ams2.redhat.com [10.36.117.148])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D8927E590;
 Mon, 13 Jan 2020 09:44:25 +0000 (UTC)
Date: Mon, 13 Jan 2020 10:44:25 +0100
From: Victor Toso <victortoso@redhat.com>
To: Valeri Aronov <valerka@gmail.com>
Message-ID: <20200113094425.fknhnwbczapujhlv@wingsuit>
References: <CALTE0RYrP2qQM0abXvF1TkVAK7DO1tqd3T+y_UUocyqgnxa2Sg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALTE0RYrP2qQM0abXvF1TkVAK7DO1tqd3T+y_UUocyqgnxa2Sg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] fast symbolic transfer function derivatives
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0654650815=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0654650815==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ga3sz2ahm3uuv2gn"
Content-Disposition: inline

--ga3sz2ahm3uuv2gn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 13, 2020 at 03:04:55PM +1100, Valeri Aronov wrote:
> Dear all,
>=20
> I trust that I have an excellent proposition for the theme in the subject
> of this post. Using my algorithm for the evaluation of all the first and
> second derivatives (by circuit parameters) of the symbolic transfer
> function asymptotically approaches the time of the evaluation of transfer
> function itself.
>=20
> Using these derivatives allows substantially reduce the time of circuit
> parameter optimization because of much better precision of the derivative=
s

Sounds interesting for SPICE as "Simulation Program with
Integrated Circuit Emphasis" [0] while this is a different kind
of SPICE list [1]

[0] https://en.wikipedia.org/wiki/SPICE
[1] https://en.wikipedia.org/wiki/Simple_Protocol_for_Independent_Computing=
_Environments

Cheers,
Victor

> evaluation (in comparison with non-symbolic derivatives evaluation) and a=
n
> opportunity to apply optimization methods using the second derivatives.
>=20
> I am looking for discussing with or presenting this to ppl who implemente=
d
> symbolic transfer function generation or interested in using the symbolic
> functions for parameter optimization or sensitivity evaluation.

--ga3sz2ahm3uuv2gn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl4cO/kACgkQl9kSPeN6
SE/4Jw/7BvUcHV1UPlWJtdUVqmtaURk8UjpBYrudGSXR7qVKFgwF3CBU6jaRoFe2
639VuQk/FeMbl2UxHVOLKW+w5s+F0lXnoiiYXFwovJw3RasIoxiFCUBAvakNHLqZ
s5aTOVbh58mJj0Lu+Guavfx8XLt3Y84akDKsygsD9+kdMSioJFLyIPGrfTirtm0h
Y9ELLfV3b5x/p5u+VDaaSMLpy0MdfcDSK59YPfw/4bEBjsMHOuhjnqhmbTayKx9w
CFYKMDkU1LkpGF/pFmRn5R4csJ2dQ+1hn1txxlE1C2WOkQtZmv2b355qjShcpu54
uLsNXNDbWZLE/GMiOW17U00Ifo8p7FJMhWRlCvEBVnz2SDfz9gkCg15F6be32m+H
3kPVy92jZBu0TCu9dzS1qXo3EqFIuRIWMDtqVYsb4fU6PJwaYL8eOUOQmkb/rzGv
Zm/bFT4iwxluBXNdZkIgM5hZx9pKL/iGwFrUHQje2WuxGlItFalopyTOT16du9aw
HMNNszM51OSs1wYV2wNpmNlW+OYox+axD52ETiTI6zFQFq8H8rrgaJPsPj3MwFlq
sGRzuyeaNZY8t2dowBZijoeSfp5TmvBXShWGCmHqMta3s2dXO1SpCxPSoEPOpMTj
t7ztGzgDqcOLhaJpsoAH2M/s2W+RlnLirHzxrKuexEbcOaZGgcU=
=6XHj
-----END PGP SIGNATURE-----

--ga3sz2ahm3uuv2gn--


--===============0654650815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0654650815==--

