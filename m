Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3014714DD3
	for <lists+spice-devel@lfdr.de>; Mon, 29 May 2023 18:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939DF10E1BA;
	Mon, 29 May 2023 16:05:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BFC910E1BA
 for <spice-devel@lists.freedesktop.org>; Mon, 29 May 2023 16:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1685376356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1ulbBlV2l7wKESTOKXZ1d7VJZ1LA1xO1UKu5v+iTC/Y=;
 b=BgzIS01USS6eylUqwFxcHt9PBd+mFd116srfCIp/GVSEDBb3aoqbhOEbobIzmD17KWF2bP
 4jvEj2NeKwGy3WWd+W2NWEs4glfvqmTlAIlPw9+fO3ZoDv+YV6vglyR9IZ5uER77zwdC3M
 3p9NxoZwZaBJHW9MXVVAZeruUf4XfFU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-324-NlxD3HqONoWl6XwCefJn8Q-1; Mon, 29 May 2023 12:05:52 -0400
X-MC-Unique: NlxD3HqONoWl6XwCefJn8Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 517CD3801FF6;
 Mon, 29 May 2023 16:05:52 +0000 (UTC)
Received: from localhost (unknown [10.45.226.253])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DA7E2C154D1;
 Mon, 29 May 2023 16:05:51 +0000 (UTC)
Date: Mon, 29 May 2023 18:05:50 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <dbaospexta5gz2i2rvvl6q62bc5nz4tntjyv6quwoesv4dcdjq@a7itrvwlcnsu>
References: <tencent_D5878955D45FD159A97AED741F2635A8D50A@qq.com>
 <CAHt6W4cTwoFMvkVYs-VmJp05FXoOTQ=HZM7WvxgN9ks1PfE2WQ@mail.gmail.com>
 <CAHt6W4d1nF_ceWGqVOR-Nmt+kS44jqJaHGTggdUWqQbm+_WqAg@mail.gmail.com>
 <cw6btodzv2qdseyupheevxmspytiatv2d2mzyfjj3asnysjnn4@zl3bnes6pclt>
 <CAHt6W4efRjKatr5TaXareKt16N7Swiufcjdpd88Cx8CmohkEuw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="vv5yiqq2ytx3iyca"
Content-Disposition: inline
In-Reply-To: <CAHt6W4efRjKatr5TaXareKt16N7Swiufcjdpd88Cx8CmohkEuw@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
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


--vv5yiqq2ytx3iyca
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 29, 2023 at 04:40:38PM +0100, Frediano Ziglio wrote:
> Il giorno lun 29 mag 2023 alle ore 14:13 Victor Toso
> <victortoso@redhat.com> ha scritto:
> >
> > Hi,
> >
> > On Sun, May 28, 2023 at 08:15:43AM +0100, Frediano Ziglio wrote:
> > > Il giorno dom 28 mag 2023 alle ore 07:38 Frediano Ziglio
> > > <freddy77@gmail.com> ha scritto:
> > > >
> > > > Hi,
> > > >    as a workaround click on the link with the right mouse button an=
d click on download.
> > > >
> > > > It's just a server configuration that sends back the file as someth=
ing to display instead of something to save.
> > > >
> > > > But strangely it worked correctly for me. Which browser and version=
 are you using?
> > > >
> > > > Regards,
> > > >    Frediano
> > > >
> > > >
> > >
> > > This is the results trying to download the file
> > >
> > > HTTP/1.1 200 OK
> > > Date: Sun, 28 May 2023 07:08:45 GMT
> > > Server: Apache
> > > X-Content-Type-Options: nosniff
> > > X-Frame-Options: SAMEORIGIN
> > > Referrer-Policy: same-origin
> > > Permissions-Policy: camera=3D(), fullscreen=3D(), geolocation=3D(),
> > > microphone=3D(), payment=3D(), usb=3D()
> > > Strict-Transport-Security: max-age=3D2592000; includeSubDomains
> > > Last-Modified: Wed, 03 Aug 2022 09:06:09 GMT
> > > ETag: "c7c200-5e5528b37f99a"
> > > Accept-Ranges: bytes
> > > Content-Length: 13091328
> > > Keep-Alive: timeout=3D5, max=3D100
> > > Connection: Keep-Alive
> > >
> > > It seems the mime type is missing. Now if we want to fix that we need
> > > to change mime type configuration on the server. I found this link
> > > https://mediatemple.net/community/products/dv/204403964/mime-types
> >
> > It works here as well. It is not like the browser should try to
> > open a content as text if it doesn't know what it is.  Another
> > alternative is to use download attribute.
> >
> >     https://www.w3schools.com/tags/att_a_download.asp
> >
> > Cheers,
> > Victor
>=20
> Hi,
>   I got it reproduced. I should have tried a Windows browser (Edge,
> Windows 10), I should have known that on Windows resource extensions
> are taken much more into consideration.
> I tried with https://releases.pagure.org/virt-viewer/virt-viewer-x86-11.0=
-1.0.msi
> which is downloaded correctly and the reply is (wget -v -nv -d XXX)
>=20
> HTTP/1.1 200 OK
> Date: Mon, 29 May 2023 15:33:19 GMT
> Server: Apache/2.4.37 (Red Hat Enterprise Linux) OpenSSL/1.1.1k
> mod_wsgi/4.6.4 Python/3.6
> X-Xss-Protection: 1; mode=3Dblock
> X-Content-Type-Options: nosniff
> Referrer-Policy: same-origin
> X-Frame-Options: ALLOW-FROM https://pagure.io/
> Upgrade: h2,h2c
> Connection: Upgrade, Keep-Alive
> Last-Modified: Tue, 23 Nov 2021 16:05:18 GMT
> ETag: "50e1a00-5d176e85cad62"
> Accept-Ranges: bytes
> Content-Length: 84810240
> Keep-Alive: timeout=3D5, max=3D100
> Content-Type: application/octet-stream
>=20
> I would personally add configuration to the server, MSI files are
> probably used by Windows users.

Could you try adding the download attribute (by changing the html
first and then trying to download the file), just to see if that
as a workaround works?

This project is the one running the infrastructure:
    https://gitlab.com/osci/community-cage-infra-ansible

I only have sftp access to folder related to SPICE. I'll follow
up with someone to see if we can update the mime-types.

Cheers,
Victor

--vv5yiqq2ytx3iyca
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmR0zV4ACgkQl9kSPeN6
SE9UExAAkXNTk5wUbC0oi+3kMJ5SX8dRmwW1kLe4K6DVThTqvPZPEAcYK2ucmSeF
DR0LqsvfO3OzboO9QnNFFOilUTHx2NST18cAKuudN9ITFy/KgCrHsgV1hudIRmVV
Sf4y6Eodn/Ef8PDbTbVI5/LkYlCqP6acvmnzNvV6MVfBre6T0miE1lU/8H/74btc
EwuHBsbAhpuXVhEfiJiePDdTClRLcMv/gyPo719wAGX6POJOqrSHmYyOJDkvPKNa
tb5iotj+zSp+eWJ7bE15E40er6PoSTjt4bfdBpxiGNY7W6jh7TGDU7cPN65qL2A4
9W6Ph8x8HB9/00kBXlhYQaaGV1Da95WdeNmUA4vEyZ833zhEzffftwBOe8u+WAIg
CwtvgCwKQdK5AKyxWVBgBN326PFzLFxi0csctXJ2v9kDp4QOGC2+FUk0yGcLacXB
lE5AwhPRXeM/yKRfSxnYNt9w3xMuMETGmE0q3FxjBe1eJHAcAd5LBGT3MMiJ7BrF
qwS1VU5B3l4cVeWeSoWrXp1B8vLYjNlZF7WYbp20kUbJgxz9XYOOsRs7N+AsMJNd
7rCnuQ6FEvsyqvD9zZ0+p0y5Q0QU7cs74gAX1KrzJmtnYiJphy6owZV2mGiOpqC8
SZFSC9g13TcnOk8gcmfg5BTEnmeo8mSziV6TZSqL/utyxF4Q7j4=
=3C7q
-----END PGP SIGNATURE-----

--vv5yiqq2ytx3iyca--

