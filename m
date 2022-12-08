Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AE9646F02
	for <lists+spice-devel@lfdr.de>; Thu,  8 Dec 2022 12:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D29D10E4A3;
	Thu,  8 Dec 2022 11:51:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0BA710E1E1
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Dec 2022 11:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1670500270;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OhgKKrxWJoj4/B/XWwblTwQx+SzEyG6IxXfrsW3I7MU=;
 b=XmGRVtmXcItj2ppBNo2jFiBvLeagxFlGb8eQJaF2lyZHlW9w5vAg6vDCTiJ9TL/d0+oFEz
 8HR7mTodxHeBlHbTTjbqFzkDFavJYjfBGEEyORNKXh5+HUa/h7c8IlnPan/7NTE0rAabgc
 irmfWC1qalbV/BzEoZzMPGY7BRVrHwk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-340-w-PKyy6IO4GK4OzZ6kE3NQ-1; Thu, 08 Dec 2022 06:51:06 -0500
X-MC-Unique: w-PKyy6IO4GK4OzZ6kE3NQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA959101E14D;
 Thu,  8 Dec 2022 11:51:05 +0000 (UTC)
Received: from localhost (ovpn-194-61.brq.redhat.com [10.40.194.61])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7226140C2065;
 Thu,  8 Dec 2022 11:51:05 +0000 (UTC)
Date: Thu, 8 Dec 2022 12:51:04 +0100
From: Victor Toso <victortoso@redhat.com>
To: Fabio Estevam <festevam@gmail.com>
Message-ID: <20221208115104.bhts7kfneeafz22k@tapioca>
References: <CAOMZO5CZ2AVd5eb25ztrQa6k_VqoYK5zZX51bfMeZ8TdqMYfgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="ox3po3iivvtjbejt"
Content-Disposition: inline
In-Reply-To: <CAOMZO5CZ2AVd5eb25ztrQa6k_VqoYK5zZX51bfMeZ8TdqMYfgQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
Subject: Re: [Spice-devel] spice-gtk: New v0.42 tag
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--ox3po3iivvtjbejt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Fabio,

On Wed, Dec 07, 2022 at 10:55:02AM -0300, Fabio Estevam wrote:
> Hi,
>=20
> When is the v0.42 tag of the spice-gtk repo planned to be released?
>=20
> I am asking because I would like to know if I add the following commit:
>=20
> https://gitlab.freedesktop.org/spice/spice-gtk/-/commit/4dbe0da23f0f4d581=
f61798ec2a8eee92afd1779
>=20
> as a patch to the v0.41 recipe in OpenEmbedded or if I wait until v0.42 i=
s out.
>=20
> Please advise.

I'll cut a release before the end of next week. I'll see if I can
address some other issues the next few days first.

Cheers,
Victor

--ox3po3iivvtjbejt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmORz6gACgkQl9kSPeN6
SE8Aew/8D/7uY0BJSPAUR+ZVjE9+RcDDOD48yK9Ng9rBcYQ2BC7TcRNi+IGV7PNj
k7tNLpX0UFZJ2j43zX7hQZsbBkgDt+xc2xFZPDt3P657KfvMNok4a6uvogkBS+1T
J79UDFYdCNtlCUQ+OaGus4kTK/Nd/Vk9GMySKurgodmEC13GsEf3A7Rhda1wI1Km
dBuagkFrBNVSyRTBvNG3V4KzrJZOuVbiCvD7xzT1L58oE6+z3vnua0Bo7TZG7n15
ySLMiyiwiEJ0BI0AeMEfkz562f/O2d35Xk1HTlmOtJcZrRTMEwlTj18lhZCDTpQ/
j+qXjpBujGKpr7S7CUPROaazCpIkZwSlSCQi7aE1W8uNdKahdU5pPWTOmeymR8W2
1PUfhh5i2WCIvcNiSgIGCc4zCdk6Wenq6mUOWK0IIwo/gDcOQ36Qyx2Xs9DtQ5zN
FVCfouMmgSkx/wrUn3KMf7HQXByzYOGvjtgLhTWjiOrvRCWjLqBCta4ifrkhdxKj
wvA0W6CLU0NDR9mdbmF+Jjq8Ta8jRaPN7CcqMox4h04C94CpOFImSmqP0ntxkFPo
Q0iVXkjQZxSTQArY93YU2wLkHeQa46eer59DPlyQ1YuV70nQm7jEF2vSCxjpWISO
Q7i0ldsLw3hIR6dVcESxCyQsD67JeYsp884gzYFPG/Eq/MdEP0g=
=h2Pl
-----END PGP SIGNATURE-----

--ox3po3iivvtjbejt--

