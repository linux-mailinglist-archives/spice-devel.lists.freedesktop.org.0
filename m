Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 757AD6360BE
	for <lists+spice-devel@lfdr.de>; Wed, 23 Nov 2022 14:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFEE410E559;
	Wed, 23 Nov 2022 13:58:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF9910E207
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Nov 2022 13:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669211887;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9cCD2F03LoGcOp6JhCtnRJaynDQgV/ocyLHmYmcEr/U=;
 b=KYLQXFFG9nqKfcNpmSx5CzrGoa2K9xAyuNb9zSyVB5oH34gT5REnzdlz2A1HhLGt/9Dfbv
 TJwRrLaS7dyT9qFoZK6aaetqv76bYi+sTlcQYEM0PF2M2r8VSufKctlarO/num7iRKHlq5
 ZGWp/OfPdQrfny551NDkjMq/lJq4Cdg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-596-KApVrKfaNb6te3vJ8PCFeQ-1; Wed, 23 Nov 2022 08:58:03 -0500
X-MC-Unique: KApVrKfaNb6te3vJ8PCFeQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BD77101E153;
 Wed, 23 Nov 2022 13:58:03 +0000 (UTC)
Received: from localhost (ovpn-194-72.brq.redhat.com [10.40.194.72])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C84FC202279C;
 Wed, 23 Nov 2022 13:58:01 +0000 (UTC)
Date: Wed, 23 Nov 2022 14:57:59 +0100
From: Victor Toso <victortoso@redhat.com>
To: =?utf-8?B?6Z+p6Zuq5bOw?= <hanxuefeng@360.cn>
Message-ID: <20221123135759.5k5otztatk26dmjj@tapioca>
References: <3d27841837ae439d91300c2d5b7056b0@360.cn>
 <CAHt6W4fRZoR5+E3rptGzcQ9R_DfdZ3g=G2rmhqY7Y4s6ZRBx1w@mail.gmail.com>
 <4eb04086e700409e8ff9f2bc3dc18c55@360.cn>
 <20221122084507.swnuf55txt3ikgz5@tapioca>
 <64df62c2dea54c108503fc0495390e9f@360.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="6pzdaqrvpifmvb2x"
Content-Disposition: inline
In-Reply-To: <64df62c2dea54c108503fc0495390e9f@360.cn>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
Subject: Re: [Spice-devel] 
 =?utf-8?b?562U5aSNOiAg562U5aSNOiBUaGUgc2Vjb25kIGNs?=
 =?utf-8?q?ient_cannot_redirect_USB?=
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


--6pzdaqrvpifmvb2x
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Nov 23, 2022 at 01:19:10PM +0000, =E9=9F=A9=E9=9B=AA=E5=B3=B0 wrote:
> Hi Victor,
>
> Thanks for your solution. I just find 'usbredirtestclient' in
> usbredir project, the client has the feature connect to
> server(QEMU),  and it could connect to server successfully, but
> I cannot find how to redirect usb device from client to VM. It
> seems that I need to write some code to redirect USB with
> usbredir, right ?

usbredirtestclient is a testing client, not what you want.

Try usbredirect binary from usbredir-tools package (Fedora 37):
https://koji.fedoraproject.org/koji/buildinfo?buildID=3D2088721

Or just compile usbredir project and test it out:

$ git clone https://gitlab.freedesktop.org/spice/usbredir.git
$ cd usbredir
$ meson . build -Dtools=3Denabled
$ ninja -C build
$ sudo ./build/tools/usbredirect --to localhost:5550 --device 8644:8003

Cheers,
Victor

>
> Thanks and Regards,
> Xuefeng
>=20
>=20
> -----=E9=82=AE=E4=BB=B6=E5=8E=9F=E4=BB=B6-----
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Victor Toso <victortoso@redhat.com>=20
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2022=E5=B9=B411=E6=9C=8822=E6=97=A5=
 16:45
> =E6=94=B6=E4=BB=B6=E4=BA=BA: =E9=9F=A9=E9=9B=AA=E5=B3=B0 <hanxuefeng@360.=
cn>
> =E6=8A=84=E9=80=81: Frediano Ziglio <freddy77@gmail.com>; spice-devel@lis=
ts.freedesktop.org
> =E4=B8=BB=E9=A2=98: Re: [Spice-devel] =E7=AD=94=E5=A4=8D: The second clie=
nt cannot redirect USB
>=20
> Hi,
>=20
> On Mon, Nov 21, 2022 at 08:44:49AM +0000, =E9=9F=A9=E9=9B=AA=E5=B3=B0 wro=
te:
> > Hi,
> > Thanks for your reply. But If I want to support multiple channels for=
=20
> > USB redirection when multiple clients connect to a same VM,  do you=20
> > know which project includes the code about USB
> > channels ?   Spice ? or QEMU?
>=20
> As Frediano pointed out, USB redirection with SPICE is bounded to the fir=
st connected SPICE client.
>=20
> You can reconfigure your VM to have a TCP backend for your USB devices, t=
he libvirt change would look like this:
>=20
>     <redirdev bus=3D'usb' type=3D'tcp'>
>         <source mode=3D'bind' host=3D'localhost' service=3D'5550'/>
>         <protocol type=3D'raw'/>
>         <address type=3D'usb' bus=3D'0' port=3D'3'/>
>     </redirdev>
>=20
> And then, you can use usbredirect (from usbredir project) to redirect USB=
 devices from multiple clients.
>=20
> Note that this is will use plain usbredir protocol over TCP, it isn't sec=
ure channel like what SPICE provides.
>=20
> Cheers,
> Victor
>=20
> > Thanks and Regards,
> > Xuefeng
> >
> > =E5=8F=91=E4=BB=B6=E4=BA=BA: Frediano Ziglio <freddy77@gmail.com>
> > =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2022=E5=B9=B411=E6=9C=8818=E6=97=
=A5 20:52
> > =E6=94=B6=E4=BB=B6=E4=BA=BA: =E9=9F=A9=E9=9B=AA=E5=B3=B0 <hanxuefeng@36=
0.cn>
> > =E6=8A=84=E9=80=81: spice-devel@lists.freedesktop.org
> > =E4=B8=BB=E9=A2=98: Re: [Spice-devel] The second client cannot redirect=
 USB
> >
> > Il giorno ven 18 nov 2022 alle ore 10:21 =E9=9F=A9=E9=9B=AA=E5=B3=B0 <h=
anxuefeng@360.cn<mailto:hanxuefeng@360.cn>> ha scritto:
> > Hello,
> >
> >    When I used two client to connect to a same one VM by spice
> >    with setting =E2=80=9CSPICE_DEBUG_ALLOW_MC=3D1=E2=80=9D, the two cli=
ents
> >    worked, and the first client could redirect USB. However,
> >    the second client could not redirect USB device, It shows
> >    like the picture: [cid:image001.png@01D8FDC6.C4D82080]
> >=20
> > I=E2=80=99m sure that there=E2=80=99re enough channels for USB redirect=
ion.
> >=20
> > Is this a problem? Or Is there any way that could resolve the second cl=
ient=E2=80=99s USB redirection problem?
> >=20
> > Thanks and Regards,
> >=20
> > Xuefeng
> >=20
> > Currently all character device channels (including USB one) do not supp=
ort multiple channels, so the first client takes them all.
> >=20
> > Frediano
>=20
>=20

--6pzdaqrvpifmvb2x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmN+JucACgkQl9kSPeN6
SE8XDg/9HOfTkxDXs9gLhMDwe2yVEDdKGywMLeUS9i35LDM/7cVAINF0y9eywucl
QPa9gxIc9cv7K80RtdA0UrAf3/M55ym6fn67JH7kVpXH9ObWgg806q4nGPBJF7dN
v+A7ran4TDJFUdDPw4vr9rbBXCl+PNnaGwp/T0Mhw/fmlcd3d1/OhPcYY8yWe1jQ
dsTY+Ryx7WTG06zO66vHhtbOqRRt6OeumlLXHPA0XDQW42xmYtd8JqXx6yv7pWnY
S3Jj2/GYbV6GGr+7mTufE67CJm+TcDIu8H6DZNvsYRO1QCJUZdgnyyPlWGFORsvx
nfqLugJIgEbfz5A4+8X6hnuLhX4m2wRCbHJ32zrf0Zvs2Wv+ytTCwjqgsBEW/YWm
i7uzuqtuYE3zdYWAO1Pk6qV6DzVKmT2DCDJrePtsp7YCyPaUQ9mKFIcjEK+P6spH
/MCiqwGUqjtHLv+FI2WOAPntO3848kW1O2aptiGXm04f6F1a6ktExq9zDrTjVK67
dxYK4sJls7ExFIq4xZFqlzdFazWtV64CZnbifk/hlOMeWBkEz2VhVvioua7GKejP
OeTceNNfAbsVYoB9yxBRVEMlHJ56IByikMvt7MG5rfiSLcFd7YAEszRrOYMG5rcP
W5q59pMdCmMKqu9OuoJKBnJl0UjBX0biGcm7w5PSjQu8bM/0vwk=
=8vd9
-----END PGP SIGNATURE-----

--6pzdaqrvpifmvb2x--

