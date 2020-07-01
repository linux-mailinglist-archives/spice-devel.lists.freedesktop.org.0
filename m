Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FF0210D52
	for <lists+spice-devel@lfdr.de>; Wed,  1 Jul 2020 16:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EEBF6E903;
	Wed,  1 Jul 2020 14:15:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 907AB6E8E4
 for <spice-devel@lists.freedesktop.org>; Wed,  1 Jul 2020 14:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593612924;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4BuzN2hqiNhdXEwUtdvaugNcqIDlHLj7OSrNNeFBf6M=;
 b=Vlj2B9a+K3LtEM1z7yPvfQXFF0+mM+TYZF88cnPxoReVz+xVPwhpSMU+PZ3CoxKtwYTMJb
 Qo5GppCPQkWHv0xVHAkNMcTkcjedya9TcQgB50Zod2mJ+cDUPi2NAJyzkoJgJ3lrmRE0E3
 pHnJvRuke6yrFJhdXBVNe++k113oWjw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-WcyUyTtSMc-aqw9maFxMTQ-1; Wed, 01 Jul 2020 10:15:21 -0400
X-MC-Unique: WcyUyTtSMc-aqw9maFxMTQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5239A18FE86C
 for <spice-devel@lists.freedesktop.org>; Wed,  1 Jul 2020 14:15:09 +0000 (UTC)
Received: from localhost (ovpn-114-63.ams2.redhat.com [10.36.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 043C5BA03E;
 Wed,  1 Jul 2020 14:15:07 +0000 (UTC)
Date: Wed, 1 Jul 2020 16:15:07 +0200
From: Victor Toso <victortoso@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <20200701141507.oljra4ncxridh6kl@wingsuit>
References: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Identifying and removing potentially divisive
 language
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0824464259=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0824464259==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wvw2aacbadaf3ufu"
Content-Disposition: inline

--wvw2aacbadaf3ufu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 01, 2020 at 10:03:10AM +0200, Kevin Pouget wrote:
> Hello SPICE community,
>=20
> following Chris Wright (Red Hat CTO) blog post on "Making open
> source more inclusive by eradicating problematic language" [1],
> I would like to suggest that we have a look at SPICE source
> code to find out if/where such language is used and how to
> remove it.
>=20
> To illustrate the motivations of this move, consider the phrase
> "the final solution". I am quite sure you would agree that
> these words cannot be used inside a project. You would agree
> because the WWII events are still in minds and not so ancient
> yet.  Git "master", or the "master/slave" pattern may not
> trigger similar thoughts if your ancestors didn't suffer
> slavery; "whitelist/blacklist" neither, if the color of your
> skin doesn't get you into trouble (white=3Dallow, black=3Ddeny).
> Overall, I would advise, when thinking about these questions,
> not to forget on which side your history/country/skin
> color/sexual orientation sits you. If it's the oppressor side,
> you're not at the right place to say it's not relevant.
>=20
> ---
>=20
> I had a quick `grep` look at SPICE code base, searching for
> `blacklist/whitelist/slave` and I could only find very few
> occurrences of these words, which is nice. Can you find other
> problem words?
>=20
> `master` is used for git default's branch, but not much
> elsewhere. Let's discuss if we could get rid of this one, for
> instance changing it to `main` (just a suggestion). I don't
> think that it can break that many things (only the CI comes to
> my mind, where the `master` branch may be treated differently)
> as git name default branch's name is often omitted in the usual
> workflows.
>=20
> Please share your thoughts about this

Not a native english speaker but I've read a few discussions
around the user of master as git as in master copy instead of
master/slave. Another examples of the use of master from native
speakers included master as in school teacher or someone that is
in charge of something (the offense being where the subject of
control is the slave).

Still, I don't really mind to changing it to main, even more if
there are people that feel this can really be offensive in some
way..

--wvw2aacbadaf3ufu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl78mmoACgkQl9kSPeN6
SE+IcBAAgX4uhJiJJJWQMR2r2V02N7aX7S3e1pHQuYXMuQtW74gkEPuaeHXC+s2Q
mqvhuevXeqx2eP+aSQnwiCPE0wNMqhADZkAcxDZcjV9Ojaio9IKOwGTXq69AMFRA
y56pYOVlErImibCHzewKBCD12PaR2ekYuujflJO+4bequeCtKnAIdyWH5Z5fsoh2
YuW1XGCF00ZZ00hgyfdUUexuqcp1Pg1WY9RFJntvhog3NWleycj53k8F6xrlx7XK
eAd+oKNGrOfe3YhLI01oEVAyjm1QJXM6z0xC/TX6y0IEdo59gaotuqN4f7bwDIcA
caRiycLIyz5LLLBXETMCsuGfooaCu34TnM2+WQQs3RGwPbgAMipfHpBj6vl9WM1a
FbDhg0x7EtYoq42N3Jsbgsz9B4gdIp/2F63Ll+UxxJTyQ+S8XZEfb1n+gGqxWHel
llaP7nYvtYk3IqY5a0ojeOrS/AjOOuJIPpP985lQLvzAxiCj+RwghiYIwqzqhSB8
i8wdD00RZKv+qIIUzTz2SoIVAj0CFkVtJuwSXbECU0c1v0YWRPuiWwkC5aIcuFzm
iS/YNTZb38pFdwY+njQ8xpj3VmMDn1rXnXxdn0l2WQev3XRsR14kKYtf+ugSV+0P
ZdfDtrAokbrPW3yAWh1f3xMJ4FXGhDMW75w16sQr/3YwqtRWzzc=
=zuWe
-----END PGP SIGNATURE-----

--wvw2aacbadaf3ufu--


--===============0824464259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0824464259==--

