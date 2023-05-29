Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B74677149ED
	for <lists+spice-devel@lfdr.de>; Mon, 29 May 2023 15:13:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 461BE10E090;
	Mon, 29 May 2023 13:13:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D46D410E090
 for <spice-devel@lists.freedesktop.org>; Mon, 29 May 2023 13:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1685365989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AAV70GFrAHbbaGKLfVkIzTeVZ6WCdwo18XjggVPQKhc=;
 b=gmPZoN13GawQua7Ab/qeKzSPu8xDoRHwguI413VgHPC3dUP1u5rUZY9sLj9mWTXNii67HP
 1xU5JAZO9ksh8+Y+0Jd4H5oJfeEl/mgSWIN2FD4DanhPXPopucr4p5FJDawk7DrwfSnOhZ
 S03yNBRUjK0IlXFzVVqeGjWQFPvydTQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-630-4oejJ5RKMty2MMC94Pav9w-1; Mon, 29 May 2023 09:13:07 -0400
X-MC-Unique: 4oejJ5RKMty2MMC94Pav9w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D4AC85A5AA;
 Mon, 29 May 2023 13:13:07 +0000 (UTC)
Received: from localhost (unknown [10.45.226.253])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DE2953543C;
 Mon, 29 May 2023 13:13:06 +0000 (UTC)
Date: Mon, 29 May 2023 15:13:05 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <cw6btodzv2qdseyupheevxmspytiatv2d2mzyfjj3asnysjnn4@zl3bnes6pclt>
References: <tencent_D5878955D45FD159A97AED741F2635A8D50A@qq.com>
 <CAHt6W4cTwoFMvkVYs-VmJp05FXoOTQ=HZM7WvxgN9ks1PfE2WQ@mail.gmail.com>
 <CAHt6W4d1nF_ceWGqVOR-Nmt+kS44jqJaHGTggdUWqQbm+_WqAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="4xgxho6xxnf5htxy"
Content-Disposition: inline
In-Reply-To: <CAHt6W4d1nF_ceWGqVOR-Nmt+kS44jqJaHGTggdUWqQbm+_WqAg@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
Subject: Re: [Spice-devel] About the website download error
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
Cc: 2656017036 <2656017036@qq.com>,
 spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--4xgxho6xxnf5htxy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, May 28, 2023 at 08:15:43AM +0100, Frediano Ziglio wrote:
> Il giorno dom 28 mag 2023 alle ore 07:38 Frediano Ziglio
> <freddy77@gmail.com> ha scritto:
> >
> > Hi,
> >    as a workaround click on the link with the right mouse button and cl=
ick on download.
> >
> > It's just a server configuration that sends back the file as something =
to display instead of something to save.
> >
> > But strangely it worked correctly for me. Which browser and version are=
 you using?
> >
> > Regards,
> >    Frediano
> >
> >
>=20
> This is the results trying to download the file
>=20
> HTTP/1.1 200 OK
> Date: Sun, 28 May 2023 07:08:45 GMT
> Server: Apache
> X-Content-Type-Options: nosniff
> X-Frame-Options: SAMEORIGIN
> Referrer-Policy: same-origin
> Permissions-Policy: camera=3D(), fullscreen=3D(), geolocation=3D(),
> microphone=3D(), payment=3D(), usb=3D()
> Strict-Transport-Security: max-age=3D2592000; includeSubDomains
> Last-Modified: Wed, 03 Aug 2022 09:06:09 GMT
> ETag: "c7c200-5e5528b37f99a"
> Accept-Ranges: bytes
> Content-Length: 13091328
> Keep-Alive: timeout=3D5, max=3D100
> Connection: Keep-Alive
>=20
> It seems the mime type is missing. Now if we want to fix that we need
> to change mime type configuration on the server. I found this link
> https://mediatemple.net/community/products/dv/204403964/mime-types

It works here as well. It is not like the browser should try to
open a content as text if it doesn't know what it is.  Another
alternative is to use download attribute.

    https://www.w3schools.com/tags/att_a_download.asp

Cheers,
Victor

--4xgxho6xxnf5htxy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmR0pOEACgkQl9kSPeN6
SE9MWQ//amgyfNi+TX9204UVsskkLGICbCiAET7gx9ezOcIhltZAofX344iyprOt
qzZLRS7ZudSCKRKMFK6y7YXlYRO4u5bRwlqOT8rKUrOCKb/Cbhi5eLFqUkQ3SBXz
dP51hR/XXgaybg1vOHl0IL7lZmdC3nBs1Mg7CjUSW24fv4XGQBYCuPKE1rNGIcKX
pjmhyLNGNgIYkoKuZpTUtP83IkSJ+E8VSxn5pYztcgV8zKk0Ykp1hnJWgieHZJ8N
Kj3mz0WhyqfwKU7gLnU3LKzuCx7lskcIMIYv6WxBxI4eAoByLMU2w7sgkPRAeGIG
6fsC+HgPLEjWkAKeTs8YNY+wtKZOslEllmBFxO5SVJ3pFtJ4PAa+08LaigKdmWFn
BnTyIXiAPPM3+bpvwcxZBoPWzJ1y71aVc2vkPv2GzqYH4ZfRCHXz3z1H9uH9gQgx
cMTTMfB0e2UYfrMuvcCRGPuEi2DfNaUA/ZqFVkbXC50KYh6hx06CePvn7SxE3BHD
Ean9FjsotIV2+DpJdYO5r0LNCR2mFkWQ+0LrqeSWswfArRU31/gn9xBVUJQx4vLf
EYs+1/w0R60Y2Gnrbw0F+fkPvOq1UtsVFmNk0FCWhk/yDjdcWuhgNEsMtOaxO3e9
XVTQjMR8TuOP2+uIMdxkQWalRgKkjJUtzrhvC9qlbv46cIbaI9M=
=Kasn
-----END PGP SIGNATURE-----

--4xgxho6xxnf5htxy--

