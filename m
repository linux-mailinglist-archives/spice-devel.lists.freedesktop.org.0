Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7330D68D728
	for <lists+spice-devel@lfdr.de>; Tue,  7 Feb 2023 13:48:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E412E10E4F1;
	Tue,  7 Feb 2023 12:48:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EADE810E4F1
 for <spice-devel@lists.freedesktop.org>; Tue,  7 Feb 2023 12:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675774120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1zQ6SynWFgNsoc6Xd+Mvk8dKy7tgkNSrkbtTnjx+GsU=;
 b=VtM5dROiLGuawqZAyqcZRbBJ+PE9ueJ/nNNdNBNeEHAI8vv+y3SS82BgSGDghMP7GtHy04
 4/kNvrdMXKPcqSZ2p+iNvpaLIarcWFYsQMQV2qaRf2mLvZGZXUANbYAtPZhPBaTdtNIQUZ
 9giKCc7WZn1PWgQ01dybuMsqvOYtN58=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-612-zgvneQx-Ma2SqHZ9xLBB1A-1; Tue, 07 Feb 2023 07:48:36 -0500
X-MC-Unique: zgvneQx-Ma2SqHZ9xLBB1A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 359641C05AA3;
 Tue,  7 Feb 2023 12:48:36 +0000 (UTC)
Received: from localhost (ovpn-193-150.brq.redhat.com [10.40.193.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C6D98215CDC8;
 Tue,  7 Feb 2023 12:48:35 +0000 (UTC)
Date: Tue, 7 Feb 2023 13:48:34 +0100
From: Victor Toso <victortoso@redhat.com>
To: =?utf-8?B?546L5q2j5rWp?= <wangzhenghao@zuler.io>
Message-ID: <20230207124834.e63gsgav7acrjcq6@tapioca>
References: <2023020717105307784714@zuler.io>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="jgbp6j2ms5crlyy4"
Content-Disposition: inline
In-Reply-To: <2023020717105307784714@zuler.io>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
Subject: Re: [Spice-devel] How to compile spice-vd_agent?
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--jgbp6j2ms5crlyy4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Feb 07, 2023 at 05:10:53PM +0800, =E7=8E=8B=E6=AD=A3=E6=B5=A9 wrote:
> Hi Team,
>     I'd like to build my own spice-vd_agent(for windows 10). Is
>     there any guide to build it?  I failed to build it with
>     mingw64 on ubuntu 20.04 and vs2019 on win10.=20
>     On windows it blocked by " LNK1181: cannot open input file
>     zlibwapi.lib", and  on ubuntu it shows "configure: error:
>     Package requirements (libpng) were not met:"

That means you need to install libpng mingw version.

>     If I shouldn't ask this question here, Plz tell me the correct mail l=
ist.
>     Thx a lot.=20

You can ask, no problem.

In my Fedora 37 box, as of now, I had to install
mingw64-libpng-static and mingw64-zlib-static. Build steps:

    $ autoreconf -if
    $ mingw64-configure
=2E..
    vdagent-win 0.10.0.68-5017
    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    prefix:   /usr/x86_64-w64-mingw32/sys-root/mingw
    datadir:  /usr/x86_64-w64-mingw32/sys-root/mingw/share
    compiler: x86_64-w64-mingw32-g++
    cxxflags: -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=3D2 -fexceptions --p=
aram=3Dssp-buffer-size=3D4
    cppflags:

   $ mingw64-make
=2E..
   $ ll *.xe
=2Erwxr-xr-x@ 605k toso  7 Feb 13:45   -I =EF=85=BA vdagent.exe*
=2Erwxr-xr-x@ 210k toso  7 Feb 13:45   -I =EF=85=BA vdservice.exe*

   $ make msi
=2E..
    GEN      spice-vdagent-x64-0.10.0.68-5017.msi


Feel free to submit a documentation patch for build process ;)

Cheers,
Victor

--jgbp6j2ms5crlyy4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmPiSKIACgkQl9kSPeN6
SE+HXg//VhbcQjQKgdbMGo7ybMElm4viUTmZA4bX6RTTznq/OufsMe6txlZPC+R+
Ci0rcQJ5HbRIrog3MF2UKR4q7wJOn6ZQuObgZzWKtk7kKG0jAgBZcOTZIOBmkkey
ejUXePTVF8YgqgbtyN7B58teFufPXu/tdhX4gjQWrtlXDoHibuijtuTQgbNbyqml
dSG+sQxRqQS3dWVXJyvxDReDinkBloBzIL1zjHR2doZdzC965GTj5PqQxtvciDin
OoZcfV487Zy17sfj0rloOv1oCpeetPS5VCrft+YGeOiQe7Qauc4VIlAhKGO4Ws4g
eHcv2MWCTElpqKj7SmT1An2Z2VMzAsfe8IRKMSJK0k/7ACXc+zb8Fh/IgJLKFBBd
TvU+358hXWO/LsX8FPJN20F2bUNzj1X1fIhwYmnjp9dvwNLGgRLsKA6rQhZAyYac
3g22B2Ic0Y9iSLHL4Q0BYw+xvS/nIe4kfAJQkRNO/n1hvtzCrvlZQXEwJSTvYfHk
0wIb1631u3Zg3RYC56DnwNnwl/Ebf6yALDdo6Nf/4RdYTnRNfT4B4RJWKOLjeCoN
6eX3ANR3e9+mZyq2PnEC3hqCH7WA7t2P8bGPdLLG+R+M9o2KwcDj0hyUCb/I7XyA
a0jQ9ciHgHS6FMCJS3jiJjhUwI3/07Wf8KxUxXFPp8Xh+kP23a8=
=668V
-----END PGP SIGNATURE-----

--jgbp6j2ms5crlyy4--

