Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF42763375E
	for <lists+spice-devel@lfdr.de>; Tue, 22 Nov 2022 09:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DCA10E3AE;
	Tue, 22 Nov 2022 08:45:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 863B910E3AE
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Nov 2022 08:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669106713;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PnHPTfQP3l8Eh36dz/iy2+w5SOSDoeuCne5vk2dNr0Q=;
 b=ByC+ohe55tBTtteYLZw0/gGJYVKU29l+QlHOG+jnfJSNTa6Mdw4pXIhkMLOJf/YVKUd6ii
 uahffAJbJtzN36L6evD8jQN1rUitmRNW8hmfPDqwB90TpLdi6SowiUfyo1e7MqsByxcGCu
 SVr43ESknutBfgkSK+dtvzFruGEE1xw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-269-moFfRTJ_MRybFbEMYh0K8w-1; Tue, 22 Nov 2022 03:45:09 -0500
X-MC-Unique: moFfRTJ_MRybFbEMYh0K8w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDCE51C08973;
 Tue, 22 Nov 2022 08:45:08 +0000 (UTC)
Received: from localhost (ovpn-194-36.brq.redhat.com [10.40.194.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9D03D40C6DC7;
 Tue, 22 Nov 2022 08:45:08 +0000 (UTC)
Date: Tue, 22 Nov 2022 09:45:07 +0100
From: Victor Toso <victortoso@redhat.com>
To: =?utf-8?B?6Z+p6Zuq5bOw?= <hanxuefeng@360.cn>
Message-ID: <20221122084507.swnuf55txt3ikgz5@tapioca>
References: <3d27841837ae439d91300c2d5b7056b0@360.cn>
 <CAHt6W4fRZoR5+E3rptGzcQ9R_DfdZ3g=G2rmhqY7Y4s6ZRBx1w@mail.gmail.com>
 <4eb04086e700409e8ff9f2bc3dc18c55@360.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="2d4yhynsccphfcrf"
Content-Disposition: inline
In-Reply-To: <4eb04086e700409e8ff9f2bc3dc18c55@360.cn>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
Subject: Re: [Spice-devel] 
 =?utf-8?b?562U5aSNOiBUaGUgc2Vjb25kIGNsaWVudCBjYW5u?=
 =?utf-8?q?ot_redirect_USB?=
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


--2d4yhynsccphfcrf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 21, 2022 at 08:44:49AM +0000, =E9=9F=A9=E9=9B=AA=E5=B3=B0 wrote:
> Hi,
> Thanks for your reply. But If I want to support multiple
> channels for USB redirection when multiple clients connect to a
> same VM,  do you know which project includes the code about USB
> channels ?   Spice ? or QEMU?

As Frediano pointed out, USB redirection with SPICE is bounded to
the first connected SPICE client.

You can reconfigure your VM to have a TCP backend for your USB
devices, the libvirt change would look like this:

    <redirdev bus=3D'usb' type=3D'tcp'>
        <source mode=3D'bind' host=3D'localhost' service=3D'5550'/>
        <protocol type=3D'raw'/>
        <address type=3D'usb' bus=3D'0' port=3D'3'/>
    </redirdev>

And then, you can use usbredirect (from usbredir project) to
redirect USB devices from multiple clients.

Note that this is will use plain usbredir protocol over TCP, it
isn't secure channel like what SPICE provides.

Cheers,
Victor

> Thanks and Regards,
> Xuefeng
>
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Frediano Ziglio <freddy77@gmail.com>
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2022=E5=B9=B411=E6=9C=8818=E6=97=A5=
 20:52
> =E6=94=B6=E4=BB=B6=E4=BA=BA: =E9=9F=A9=E9=9B=AA=E5=B3=B0 <hanxuefeng@360.=
cn>
> =E6=8A=84=E9=80=81: spice-devel@lists.freedesktop.org
> =E4=B8=BB=E9=A2=98: Re: [Spice-devel] The second client cannot redirect U=
SB
>
> Il giorno ven 18 nov 2022 alle ore 10:21 =E9=9F=A9=E9=9B=AA=E5=B3=B0 <han=
xuefeng@360.cn<mailto:hanxuefeng@360.cn>> ha scritto:
> Hello,
>
>    When I used two client to connect to a same one VM by spice
>    with setting =E2=80=9CSPICE_DEBUG_ALLOW_MC=3D1=E2=80=9D, the two clien=
ts
>    worked, and the first client could redirect USB. However,
>    the second client could not redirect USB device, It shows
>    like the picture: [cid:image001.png@01D8FDC6.C4D82080]
>=20
> I=E2=80=99m sure that there=E2=80=99re enough channels for USB redirectio=
n.
>=20
> Is this a problem? Or Is there any way that could resolve the second clie=
nt=E2=80=99s USB redirection problem?
>=20
> Thanks and Regards,
>=20
> Xuefeng
>=20
> Currently all character device channels (including USB one) do not suppor=
t multiple channels, so the first client takes them all.
>=20
> Frediano



--2d4yhynsccphfcrf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmN8jBMACgkQl9kSPeN6
SE9v+BAAhTZhPG1JjieNHqHZJepdgq6Mzjb1m0aqPqMCqU9fhKPKPjkqivuwozrO
uD0d5KVfTEhLE3yXsfVkqNqDZwIvfDQbR1n/SvgVOu+UTYCZBuW0u4GQl2yPycyS
98bpNbTgYkmssN9PKFF5QlJ6J8eFJjt+rBAUIOYzI/dP1PAI32LXfkopRSfz2Ycx
gYXBMspt7Cqn2D2GsHUnhBAhZM67bBRMQ6h+Z2R3r1zdVGtWAEHXwF3wvfBLVLu6
oPqNK62kQNaWX/HKOpQ41M2+Yul385XqYvBB/ScRxL6MhzGLaz+vKfLKe9ENcwrL
CEIFBcDKxCY/uzdsJ3zpfSnkcPvdBeulL+3O/2PhzZpmJ5KNdcZnwR2wqIpRzkLn
D0vhj0/BEabc/FWxuEsvUBy3xD/lqftuM+ZZh3dt7Dae3w4wp7gnV8qypVqzGnFz
mWD3Sn+YERuT1vIORCV6kJR+hiNANHsM/3ZEhpTlmXdwtfigdMT6YQj4+oBj7nEO
H4sPvef0NWsJM5KhNGzKs86UAGSIb0I8xR1FuFjd/WVw3h9BGf9NEgEbsnllLXQ0
06W8R5k18Sro/ZTOJL151aD75w9J5Vm4f/LSrrAB/C9cB+q8lWXMjibKEmh6icIP
z1QshKrdNFK98YEazH6YjB8Af3RifAcNsNSpBFm9aK6z0+Nqtuo=
=leBa
-----END PGP SIGNATURE-----

--2d4yhynsccphfcrf--

