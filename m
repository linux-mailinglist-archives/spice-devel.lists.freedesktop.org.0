Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A763D344810
	for <lists+spice-devel@lfdr.de>; Mon, 22 Mar 2021 15:51:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE6E6E4B7;
	Mon, 22 Mar 2021 14:51:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5C796E4B7
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Mar 2021 14:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616424707;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Oc6cYrBdiX6bw+WKDpP+lQDsc2GoRfGlr06IpfqY4nA=;
 b=gqReelSIY8cGk2MUZ9t2out3nFEiQEucv5UowPog/CU/IND+G/sOpHih8RB4PO6aAnaEV5
 9b+ARgJqyaBUXe5u0TB+mh0uc/OA3TiCeCxEQbOIqn/YD2wqd/Rd0Cd2ZQ2K0+GRXaKUVM
 tmcW+4cdPV8E0zTLOfOcw92isXe34OI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-1qEu5GWcMSaW8CSYqNwMNg-1; Mon, 22 Mar 2021 10:51:42 -0400
X-MC-Unique: 1qEu5GWcMSaW8CSYqNwMNg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9F6C2107ACCD;
 Mon, 22 Mar 2021 14:51:41 +0000 (UTC)
Received: from localhost (unknown [10.40.192.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0410B1C4;
 Mon, 22 Mar 2021 14:51:40 +0000 (UTC)
Date: Mon, 22 Mar 2021 15:51:39 +0100
From: Victor Toso <victortoso@redhat.com>
To: "Dr. Jennifer Nussbaum" <bg271828@yahoo.com>
Message-ID: <20210322145139.kuigwqkyjdkby35r@wingsuit>
References: <1460907569.2869086.1616420768731.ref@mail.yahoo.com>
 <1460907569.2869086.1616420768731@mail.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <1460907569.2869086.1616420768731@mail.yahoo.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Multiple monitors at 4K, in virt-manager?
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
Content-Type: multipart/mixed; boundary="===============1475488790=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1475488790==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x4pwngmeh242bmbd"
Content-Disposition: inline

--x4pwngmeh242bmbd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 22, 2021 at 01:46:08PM +0000, Dr. Jennifer Nussbaum wrote:
> I hope it's OK to ask a basic question on the -devel list, but
> this is what was listed in the Support section....

Sure

> I'm using virt-manger, and its related suite of stuff, to run
> KVM/QEMU VM's on a Debian Bullseye host, which has two 4K
> monitors. I am unable to get dual-head working at all, and I
> can't get 4K resolution working in the way I'm apparently
> supposed to.

Can you share the vm's domain? virsh dumpxml $vm

> I have a Debian Bullseye guest, with spice-vdagent and the QXL
> video drivers installed in it. The Spice user manual suggests
> that multiple-monitor support is easy; you're supposed to use a
> Video QXL device and then everything should just work. But it
> doesn't. Even when I increase the video memory in the XML file
> (vgamem, I assume) to 64MB I am unable to get 4K on even a
> single monitor using Settings -> Display on the guest; it maxes
> out at some arbitrary-seeming thing a bit over 1980 x 1200. And
> regardless of resolution, I also do not have a second monitor
> available in the guest.

Are you accessing with virt-manager? I don't think there is
support for multi-monitor there? You should use virt-viewer or
remote-viewer instead.

> If I have a video device set to Virtio, then 4K works perfectly
> on the guest machine; if I go to Settings -> Display there, I
> can select 4096 x 2160, and I get lovely 4K video. However,
> dual-head does not work. If I try to edit the XML for the video
> device to 'heads=3D"2"', there is no effect--at least, when I
> restart the guest and go to Settings -> Display, there isn't an
> option for selecting another monitor.  Could someone tell me
> what I'm supposed to be doing?=A0 Thank you.

Just confirming, for Spice multi-monitor [0] in recent linux
guests, one qxl device is enough and you should set the heads to
2 (virsh edit $vm)

[0] https://www.spice-space.org/multiple-monitors.html

Cheers,
Victor

--x4pwngmeh242bmbd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmBYrvsACgkQl9kSPeN6
SE+I8g/8Dg2UOicbnkb9O+yXseEDxtprlOdjxeeUmFUVewumcGgO5uROy0cYPN0b
fsXmFK8dKLtd4aoNOuqaeRFLxbDgkH7DNMk/Q1WWa3yuFrD66pqRrF3ZMGvY31VX
vuWz0oPRcWffZ8C0aMdQW80x7CFw2cdGgVG5HHR3VrIAKDTwDj9l7fYecZJxQkpq
r572kF+fWtzSk669gWNg1FZMUDtMbyxGSFmkKqtlTKpY5XVLec3tFNw7VUoVk2+I
i8tngUmIA5ZhLEAOY07MUSiPH1MMkKW22e+PN+W4nRVe+T4P49/qDyZLolXufmun
bdrbz82wKEWxjC1/GVBfMmcUW2xloLhtuyyb3gHBq0dmVH94Gj8diGSsOpEl3sq7
5dgPoQkbCJDrRXDWPiV0dP9GJaYp3TTb7Fd2JYuQzve7d1lDmIk9fMMgK8iBgJKY
Pt4ki+hq6HpQvvrJMJpYecAmJV2tyGs33icchBSKk2CgHEpYi/Xw5vqKaPMP2JKE
Z/Kf0A4+owzy+6soiqqavOncSXZrBURcXgu5F7gsxlBKbwhtSIlZri/XoR04jtZL
9JWEqoqdyy+kWcaSwa4GqlQgPSDs7i8xHgdf0jQkNlmdW9OGTuwYeFMbVgeQAXC4
sJZIJmJjQH7MHI17jX1GV3lJwE47+HBZ2mlAJv+GaUqCxVOwl9I=
=6umb
-----END PGP SIGNATURE-----

--x4pwngmeh242bmbd--


--===============1475488790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1475488790==--

