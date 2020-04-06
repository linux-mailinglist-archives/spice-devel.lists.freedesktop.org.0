Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A721119FBC6
	for <lists+spice-devel@lfdr.de>; Mon,  6 Apr 2020 19:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC4D6E436;
	Mon,  6 Apr 2020 17:40:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2522E6E436
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Apr 2020 17:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586194809;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jbsdpnxO3afzhPa4i7D20DourUcbRJpnWm4KhjBWntA=;
 b=dX+L8x43iGrHbqh3HbKGLSHO9n/B6E+0/eD93mkZxmvrOfhV2/d9/VckazDqpni4gbepJg
 yAAsF/L9xmogu4LsnCZT5nY299DETFDDZAWYk3ckQL99rR1jDoWJrXYI8YCHbbaArIUVFO
 KVmev9+J/lLg2MIwtuAC1XpvIR9/1G8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-463-_bnv-qk1N8eji2Qy5_K_JQ-1; Mon, 06 Apr 2020 13:40:04 -0400
X-MC-Unique: _bnv-qk1N8eji2Qy5_K_JQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C12F8017CE;
 Mon,  6 Apr 2020 17:40:03 +0000 (UTC)
Received: from localhost (ovpn-115-40.ams2.redhat.com [10.36.115.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A531E1001925;
 Mon,  6 Apr 2020 17:40:02 +0000 (UTC)
Date: Mon, 6 Apr 2020 19:40:01 +0200
From: Victor Toso <victortoso@redhat.com>
To: shiftag <shiftag@nanotek.info>
Message-ID: <20200406174001.ijcfimooxvxtohcg@wingsuit>
References: <3ae50a13-3580-39ba-bca0-8a2bfa2bd6f1@nanotek.info>
MIME-Version: 1.0
In-Reply-To: <3ae50a13-3580-39ba-bca0-8a2bfa2bd6f1@nanotek.info>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Can't activate share folding in virt-viewer
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
Content-Type: multipart/mixed; boundary="===============1010552297=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1010552297==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bjvdhfzbfatxfu76"
Content-Disposition: inline

--bjvdhfzbfatxfu76
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 06, 2020 at 09:17:19PM +0400, shiftag wrote:
> Hello,
>=20
> I would to use share folder with a Windows 10 guest. I installed spice
> guest tool and spice webdav daemon in the guest operating system. Also,
> spice webdav is running as a service in windows guest. Then, I add
> "Channel spice-webdav" as hardware for the Windows virtual machine.
>=20
> Finally, I would to like "share folding" in virt-viewer client but it's
> grey (screenshot attached).
>=20
> Did I miss a step ?

The spice-gtk library used by remote-viewer must be built with
webdav enabled. If you are using a linux client, you can check if
phodav is linked with remote-viewer with:

$ ldd /usr/bin/remote-viewer | grep -i phodav
    libphodav-2.0.so.0 =3D> /lib64/libphodav-2.0.so.0

You can compare the configuration as mentioned in 'Folder
Sharing' section in:

    https://www.spice-space.org/spice-user-manual.html

If you can't figure out, might need to add some --spice-debug and
share it.

Cheers,
Victor

--bjvdhfzbfatxfu76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl6LaXEACgkQl9kSPeN6
SE8IwxAAmukKDCHGBiseNQZtsA6bEsY5UuN0OSpcHdXrInX1EmUjw/75sZ4mpwoI
9E98pba4OnIMRZ7K/4NMECQ8zEAf/xbdQI3nTQvfyWsBChKEtmBQJTIv327Sf4E5
O+l4cjQF6UgCY1UY2SvQ7gwzyzvUX3NUoL6QDBQDj3ieT1zQwUeMkCsWlLOo54xL
ud44L6/1SG5ogQWDfl2SyPhPt484WbDVT+C7jEUSZsEwInKV5gWgxg8Bkk38mLW0
rHWQ2Rk4kgr+62Vt1/wVkCotpCkQRW3Igix9P8297cbCZa5l3A/OSld4ysLpiJWL
0e6UHTLaQSr080bnSPgsXt6B+9jqfeCc3MH8X7kY0aID4kTX+SUT+WAvPpon9FYs
D/s13MICfvGPDe3h9NFcDfsZQ4Zfb++CtEbW64sRE8azYVxd7QiIXaElvpMawmW8
Eh2lMANrj9toavOhEskl/k5DPQ+tADVIPjtIJzzOg0UmcK2TaHnscjG6BOrU2wpL
T64xwq4ohaeuYNV8jbbC5GeOftPTKNSeqhG6ZACA8p9XfBh3RHG98g68RUI12IWI
APjX3k4qmtDDwiH4FCZ9owcvFtWvGjNO+o+y55Q7BCMD6xhxS92Cg1HhIkOBxjxV
bS1U2jt9B2mxhO1A+XcrBoa7UCjjloOcGZ2202nwpniNEi8LCYw=
=jlCT
-----END PGP SIGNATURE-----

--bjvdhfzbfatxfu76--


--===============1010552297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1010552297==--

