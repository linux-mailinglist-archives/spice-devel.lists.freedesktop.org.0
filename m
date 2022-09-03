Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 701D25ABD9A
	for <lists+spice-devel@lfdr.de>; Sat,  3 Sep 2022 09:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C4A10E807;
	Sat,  3 Sep 2022 07:13:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB8010E807
 for <spice-devel@lists.freedesktop.org>; Sat,  3 Sep 2022 07:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1662189219;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=udH9sQEASc7QCAX3Gvi5d0f1fPO8sox0VwfOv4q7R3g=;
 b=fLP9AedYsnlPrRFdBN6mDwPAVD6bwmjTfs9lxtzrXb4MY3wKFS0/or6LTFAi34P0nvvYN2
 ZfFxpdxLJABVb7XabFA+zSFvtfu964pZ79Z6DO4Dof7IVMjutRTEVgdHd1TD0xods/79jT
 dQHo0179upuviATSROhlZHUZB+C1c+A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-363-bBLWdaOkMoOVwxnkzvjC8Q-1; Sat, 03 Sep 2022 03:13:37 -0400
X-MC-Unique: bBLWdaOkMoOVwxnkzvjC8Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52103804191;
 Sat,  3 Sep 2022 07:13:37 +0000 (UTC)
Received: from localhost (unknown [10.40.192.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 04FC2C15BBD;
 Sat,  3 Sep 2022 07:13:36 +0000 (UTC)
Date: Sat, 3 Sep 2022 09:13:35 +0200
From: Victor Toso <victortoso@redhat.com>
To: Carlos =?utf-8?B?R29uesOhbGV6?= <piteccelaya@gmail.com>
Message-ID: <20220903071258.dws3yzk5bltdzfdh@tapioca>
References: <CAGeBE=yhPCXNeR72Oiy83yS+gC+P82_tSX59XQ4dSvUMDHJGRA@mail.gmail.com>
 <20220902065324.kqoezlbkidndyx4m@tapioca>
 <CAGeBE=z8ee5V4_fT7rxOnaE_6g5idXke3UMLeQw3G-DGSADwfw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="eclkcluxssj5px7c"
Content-Disposition: inline
In-Reply-To: <CAGeBE=z8ee5V4_fT7rxOnaE_6g5idXke3UMLeQw3G-DGSADwfw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Subject: Re: [Spice-devel] qxldod driver for Windows 11
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


--eclkcluxssj5px7c
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="osyws7cntrw347kz"
Content-Disposition: inline


--osyws7cntrw347kz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Carlos,

On Fri, Sep 02, 2022 at 09:23:35PM +0000, Carlos Gonz=E1lez wrote:
> So the "rumors" are true: you (in general) really did
> discontinue/kill the qxl drivers, if not the entire SPICE
> project soon. Was it because IBM?  Since being sold to them the
> first one to die was Centos, now this...

This sums up the rationale:
    https://bugzilla.redhat.com/show_bug.cgi?id=3D2030592#c4

> FYI:
> https://gist.github.com/pojntfx/b860e123e649504bcd298aa6e92c4043#file-mai=
n-sh-L32
> https://lists.freedesktop.org/archives/virglrenderer-devel/2021-January/0=
01897.html
> virtio-gpu implies virgl, and currently only works on Linux guests;

Ah, yes you are correct.

> RedHat people explicitly deemed the Windows work "not worthy".

Well, I know for a fact that was not true for SPICE. Specifically
talking about virgl you can see Marek's talk to get a rough idea:

    Virgil and Windows: A True Romance - DevConf.CZ 2020
    https://www.youtube.com/watch?v=3DaBgYNDLXuyg

> Thanks for killing the project.

You can raise your concern to any company that might benefit
working on SPICE. It is open source. There are still people
interested to help and keep things working, but not quite to an
enterprise level (at the moment).

I'd honestly say that what kills an open source project is to not
have a healthy, diverse and collaborative community. I like to
think we have tried to have that.

Cheers,
Victor

--osyws7cntrw347kz--

--eclkcluxssj5px7c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmMS/p8ACgkQl9kSPeN6
SE/X7Q/+OyOQvxhu+A3N3GbD5GEo0ZAay+l8zwhO4gAdX3RE4nsv0HWgnRva8Od5
A/VnUSLN31q+8LaH/eghpN5bXkyMHE7olcubXxmx9nedpdUn34+DxxuPPz6wdYiv
jok7/Dj/oUF0AFhAdSXBDbmXY/JhXWZpXNzwBtfC1yv/N76UEQnSBcXmbYMBNgfx
sFA2wVLPgaimB8r9/9F/VhjrD4oN63/ZnS44Bb/UGwF05kMh6du/zLbaUJ/Tstxn
zQ5FJAhJoRVoRoPX30r9UHyEnnY6nPwbVf0AYAkpHvrzMt3zSd2A+9im+K+AxpA3
+6FyeUWlF7o/z8Vxuz4uInrjJ3DuPWC4wVqFO1Co+tviN1mf6mvYnuhv9JtlY9bj
YpgEbfpals7T85y6fa7E3iqGEZJjhyw8mHr6vcIll9N1hyG3Y5jO37Ml4DWuTD3f
5p8nnHKK/FeuuIfzRJyFm5jQ90aczio2KSIZKNTURRe6iXLjlwP7Ymn/RoufPXSi
pCSLxolyhVnenMc8/wkpqzLa0r+cZQmDBjPZ1qU2/2LbYtNgwfOLUd+q9l7f5tT7
9vMePYsLx3Eihw9rfv2xFW6fA2hbgCFDdcAPP0lhfXIOh/VQ7pNV8k5DW7RLl1//
RYu08I2U8F0fUfp+esRh8Ekur4c6VS7oyUkUzSOkM0K2kgO4eqw=
=ZRhB
-----END PGP SIGNATURE-----

--eclkcluxssj5px7c--

