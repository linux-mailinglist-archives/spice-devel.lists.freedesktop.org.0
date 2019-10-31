Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 594ACEB46E
	for <lists+spice-devel@lfdr.de>; Thu, 31 Oct 2019 17:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D117D6EEF6;
	Thu, 31 Oct 2019 16:04:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C39B76EEEC
 for <spice-devel@lists.freedesktop.org>; Thu, 31 Oct 2019 16:04:17 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-9FI5Ew5rPhq5p1Ps2eQHng-1; Thu, 31 Oct 2019 12:04:10 -0400
X-MC-Unique: 9FI5Ew5rPhq5p1Ps2eQHng-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFA541800D56;
 Thu, 31 Oct 2019 16:04:09 +0000 (UTC)
Received: from localhost (ovpn-117-1.ams2.redhat.com [10.36.117.1])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 510505C1BB;
 Thu, 31 Oct 2019 16:04:09 +0000 (UTC)
Date: Thu, 31 Oct 2019 17:04:08 +0100
From: Victor Toso <victortoso@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <20191031160408.acmodlrqzg6o4gsm@wingsuit>
References: <20191031154627.ase2nwgygawmzxdd@wingsuit>
 <415c5634-a6a3-50d3-e6f1-480ebebf31e7@codeweavers.com>
MIME-Version: 1.0
In-Reply-To: <415c5634-a6a3-50d3-e6f1-480ebebf31e7@codeweavers.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1572537856;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pBftV6w/kZjQ44T9rMe4dq12DFIy4uSP6x1F3h+yz+w=;
 b=PXHm719O5+gz5GX2Ojm9Ygi+S/mvh6YC1bXr5pTYCLAMgmT8e83NuqaxKO8+OkFDndL0Tf
 gJjgWXE1OzSBcQI6amV3FjnvrlxsBuOt8ktQf3rI9vhAM5GnapGT2/XsxVmUtDcS1+K3hH
 kbqjw8HATvpfuVuem/V4a+D2Jk335Ms=
Subject: Re: [Spice-devel] Using GitLab
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
Cc: spice-devel@lists.freedesktop.org, Derek Lesho <dlesho@codeweavers.com>
Content-Type: multipart/mixed; boundary="===============0070324402=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0070324402==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7ub2p4n7skz7ga6n"
Content-Disposition: inline

--7ub2p4n7skz7ga6n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 31, 2019 at 10:56:59AM -0500, Jeremy White wrote:
> Hey Victor,
>=20
> On 10/31/19 10:46 AM, Victor Toso wrote:
> > Hi list,
> >=20
> > You might note that the Gitlab activity will increase a bit
> > from now on, hopefully. It was agreed within some SPICE
> > collaborators to give a serious try on using this
> > infrastructure that is available to us.
> >=20
> > One potential great change and challenge is the usage of
> > merge requests in oppose to patch series over mailing list. I
> > hope the benefits outweigh the downsides in the long run.
>=20
> Derek has been working on a utility to integrate GitLab and a
> mailing list, for experimentation by Wine.
>=20
> He's just gotten to the point of being ready to try a proof of
> concept.
> Would you guys be interested in this?

What does it do exactly?

Cheers,
Victor

--7ub2p4n7skz7ga6n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl27BfgACgkQl9kSPeN6
SE9/qQ/8DUIe4bm81vCU3U7yAk9T6qJ9EdMQk9bAPiQRz+L59wOd7NnLuN7qpOYu
Y4Ph29wsqM74HZAezmXLSuFtbf1fME9uoO9fnmsz+mJb1pCxJU6Tp1OCukqsenLJ
AZZnpsQjLT/Fvz9yJw1h8PcNVSr7aL44DqkZITi1gHmQxcqlardqZmpZRaObvr3f
xNc6IopzXnE9kk32Am3414F9gjuIuZjs2xMqkc5APp4ussEzwjQ5QpitjR7jyXtJ
M5vJhmuZsQy52pIEC+h1RMvfwlOB0mQW2dqSuvSlzJLdpOndNOCPe9K7Wo6pUCn7
N+YBmSQW43Icrt7ihvGLoswWUt7V2qtBGz08L6Lf4FBIoYHecMbRMOs0m51FUXBq
ZMu1pbwFBxGv8YcXWULwbXvpJwrzJp+6buF8jeGiwASJBnA4QbqPVx38qhh0VxHn
BImXFE8NLNNoh4DATqJ2tz39lrOh4gZMmGR0kcYsX6JT/GoBMQVMOTt1fp/1D+u2
nHPU+WXAMuzYpjjX3IBDPoVriS6H8OKZUzTkrUJVCK93hAEBi5XSDQ1X+UB1sP8W
hcK6EF1kXkrOnmjrgpMmhMy5uwUh3StkWp4omRKEuT3Re0VGN4ntNsVIcxu+qb8O
njNl6ezwDeuX7kC9NGsEMOKOGoPj0F6t466YfKryBw/x3Q5g4KA=
=iRq9
-----END PGP SIGNATURE-----

--7ub2p4n7skz7ga6n--


--===============0070324402==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0070324402==--

