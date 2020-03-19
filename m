Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB8118B2D8
	for <lists+spice-devel@lfdr.de>; Thu, 19 Mar 2020 12:58:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09CBF6EA02;
	Thu, 19 Mar 2020 11:58:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 020D86EA02
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Mar 2020 11:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584619114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Afi77uCQZbrwq870eYq8Lg8xDUFb02bUaNBWZa1ugnQ=;
 b=ey8ESyG1LjP7GOGUpCodFm2McCmDtleGAus3zERkvuSrNEooMoo83EGEGvmi+Xtlthz+Sh
 m/cOumjZLCgqqxcA1PG4u7O9nX2NwFj7x4Wb4pAXInVEGGnBrc0QFFpG0xDyu/kzJfUDhl
 sYuMnykOeF6vbTOSR8s5bEts0GAUQGA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-317-0_JFFCT8NBS-6lY9KxBZHw-1; Thu, 19 Mar 2020 07:58:30 -0400
X-MC-Unique: 0_JFFCT8NBS-6lY9KxBZHw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3324107ACC4;
 Thu, 19 Mar 2020 11:58:28 +0000 (UTC)
Received: from localhost (ovpn-113-181.ams2.redhat.com [10.36.113.181])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4FE688FC12;
 Thu, 19 Mar 2020 11:58:28 +0000 (UTC)
Date: Thu, 19 Mar 2020 12:58:26 +0100
From: Victor Toso <victortoso@redhat.com>
To: =?utf-8?B?5LiB5b+X5Z2a?= <zhijian.ding203@gmail.com>
Message-ID: <20200319115826.4iizkeff6nkosaru@wingsuit>
References: <85483164-6926-4832-98D0-326DB0CA357D@gmail.com>
MIME-Version: 1.0
In-Reply-To: <85483164-6926-4832-98D0-326DB0CA357D@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] How to monitor the Status of  SPICE Connection
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
Content-Type: multipart/mixed; boundary="===============0098230416=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0098230416==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wyeusklk2tgecpmm"
Content-Disposition: inline

--wyeusklk2tgecpmm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2020 at 09:52:02AM +0800, =E4=B8=81=E5=BF=97=E5=9D=9A wrote=
:
> Hi, Spice Develop Team. I am a student of UESTC from China.
>=20
> As titled, in my project, I want to develop a client program in
> the VM to monitor the spice connectin status and inform to
> background timely.

Which kind information do you want from the connection?

>=20
> Any hints or ideas?
>=20
> With my best regards.
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>=20

--wyeusklk2tgecpmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl5zXmIACgkQl9kSPeN6
SE/WPhAAjjmxpj5zQciRmXSLnnmehwUKpVQXzq/+F3GgAHAZSSFt3q9+Eqe/v6+A
0TyomwS6KPRb2d8aDVsNPuiCeedygffWAj68KXx8A5Gtr6oRwZUBnI73AfxXGzfz
cVMBmnIfQqV9r8gWRZWGuIL01JV/zZprul1DJ5Wp8o4De2Y0YC/WM7osvK7luuz0
t86eVtwIFwLo6nmnUCDzqK6WtlwjP5jE3/XwLM5bpKmGA1xuO1oMTJo7hVvZ+VJS
YaDrFnIE0l6h1aq2KEXVT+uGAMkcLtYUJ/EPaPqDnmA5MuaSttEAh5yQBjbmMrFP
TlkSnEXmznQwH8Ycg9g/MQjGuaHh7HAkJLyBpN1aXVcdcZe0UE61sVZXm70a46sS
6vKkowkDHHjwmWqFR1VsFOEKM77y53d15P81auKH2Y2n8SgtFkgnx646DvFWkCYi
v/cMyOzBFpvQ5Fth90F8VRrv5y2FPNbVG6QVSwvbh7nC+Qe2B2EbREBmirI/Jnnl
bBCNKl5BXMSV1xnVk43WB0Ykm0FW+ZIkFHBXasY/tHjWnc7TwstL4+Q0EklC1i4r
Bs+RCIif4PK1Ijcd1l5NIndRxiowFODtrJ83jrHRclTD1H+tprHMYyCQnb1DLEh+
5r1kV5XWdIqQEj60BI9qcXqMoteVh5ZOfqM+Laia5RaH9Ks0ThI=
=Kp5Z
-----END PGP SIGNATURE-----

--wyeusklk2tgecpmm--


--===============0098230416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0098230416==--

