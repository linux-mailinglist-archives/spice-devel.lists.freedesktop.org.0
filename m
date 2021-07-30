Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3534A3DBB81
	for <lists+spice-devel@lfdr.de>; Fri, 30 Jul 2021 17:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DCB66E1F1;
	Fri, 30 Jul 2021 15:02:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A5E76E1F1
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Jul 2021 15:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627657357;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YDrNSfL10j5GguHjmAOkH1ojAmyuMKrRGL1x0+BppHw=;
 b=UyYoUNlgCWGbMvJCB7FPy7HTHtKPUp/SeaZoyyCvfMrGCe1LPRQx6dwwUJNC9aEUJdW5RP
 Y810FpojsIDcbFui8yWAI+xwLvi5b7XGofX9R3w+gd2WJDAJdV9NkbogNxPZnxre+ewqZ8
 z0k8UH93YkuKUwxiHbbfaAs4aOkHcqA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-GHOgin9jMHCcu5X8tKUeug-1; Fri, 30 Jul 2021 11:02:27 -0400
X-MC-Unique: GHOgin9jMHCcu5X8tKUeug-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 895E6108913B;
 Fri, 30 Jul 2021 15:00:57 +0000 (UTC)
Received: from localhost (unknown [10.40.193.28])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DD67F5D9CA;
 Fri, 30 Jul 2021 15:00:56 +0000 (UTC)
Date: Fri, 30 Jul 2021 17:00:55 +0200
From: Victor Toso <victortoso@redhat.com>
To: Noah O'Donoghue <noah.odonoghue@gmail.com>
Message-ID: <20210730150055.wkicjag6ubrhge6j@tapioca>
References: <CANVktGPb3s2rEiOu+SmRtegN65tu4w+wDmxPgLNv5_Kgm3+hyQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANVktGPb3s2rEiOu+SmRtegN65tu4w+wDmxPgLNv5_Kgm3+hyQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="h4i7zk6tdkhvssvx"
Content-Disposition: inline
Subject: Re: [Spice-devel] Spice with H264/5
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

--h4i7zk6tdkhvssvx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 21, 2021 at 05:04:59PM +0700, Noah O'Donoghue wrote:
> Hi all,
>=20
> I'm trying to use gstreamer with spice to encode/decode video,
> as I think it will be much faster and smoother than MJPEG,
>=20
> I've installed these packages on both client and server (Ubuntu 20.04)
> gstreamer1.0-plugins-base
> gstreamer1.0-plugins-good,
>=20
> And with remote-viewer --spice-debug I can see that my
> client/server are advertising a range of protocols (including
> H264)..
>=20
> But for some reason it only uses MJPEG..?
>=20
> Any ideas?

You need configure the server to do the encoding, that is not
enable by default. You can see in the code [0] that spice:mjpeg
is preferred and gstreamer is only enabled if spice compiled with
gstreamer.

The second thing to keep in mind is how to set the preference of
video encoding with mjpeg. The application using spice should
use spice_server_set_video_codecs() introduced at [1] API but
QEMU never got to implement that so you are a bit limited to how
to configure that on the host side.

As you have mentioned, there is some support in the protocol to
configure the server based on client's requests. It was
implemented first as a testing tool, to exchange video-codec on
the fly and later it could be used to rank video-codec based on
client's capabilities for hw decoding. You can test that in spicy
testing tool, there is a radio button list that you can reach
from the Menu. Sadly, this feature did not reach the stage we
wanted in order to implement for other clients like virt-viewer.

[0] https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/reds.cp=
p#L3425
[1] https://gitlab.freedesktop.org/spice/spice/-/commit/497fcbb0a

Sorry delay.

Cheers,
Victor

--h4i7zk6tdkhvssvx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmEEFCcACgkQl9kSPeN6
SE9PNxAArx/5OH3Fa2F8SROIMatwzgi6dAvN0dSLx6JZDzLLoXM9MY4dWObx5TE2
XfhB7/XCagehsRYSleBKDgd0sRRoeThhBj5B+bA85+hT2SUkLfX3OA68tGc95DV6
TzccYEbWYQnmJKG8VknjLwBEXZgsO+5EEnm0i5gbxy6ys+Hl61U2P8gtbgW6AEcU
C/wuNEV6YQOQkNWJzSLOYfozDBm4X9wjClmU5KJZgPNX+KI8dWH85Jy9JeJ1DRSC
s8J5Je1vqBG+ho982y6VRGgT28oZwn1oIcR2rkp+pPoLWtYzGd7leaWZoCQ5wZYb
ykjVkamCAZMcsG/w2bBEnR/tFTwnPdSZaJADs8ZTpcDtcEDmuFHQHwsLkGkejkXR
Qz2yixwfAzagkhDzxJ280IkQvSSt1RkTHeAMIkKuXKdAmQrxHm2ttTbOwh7tZU2i
8Je0auDqCnCHvqAHOUjiy67RnI8y1gw8G7oE/tiTZJa6Mm2IlQdBLxTPXFtp7OfR
gudR3A1rhqihmfXIAzxeuloy/rixiTV0uSi44MT3Ms2ZrZ+PK5Nse+ADIawT5Kr1
fAPPClFe/QrTYTgp04vHAgH6LeAzGQTYXivfRY/jJDFOdXupo1/gJGajAfuyI6s1
lUNOwcvoSSUOX+NtUxRR4RTUjWqifgMvgIs0/8CRpNyfOejnz0I=
=gFQE
-----END PGP SIGNATURE-----

--h4i7zk6tdkhvssvx--

