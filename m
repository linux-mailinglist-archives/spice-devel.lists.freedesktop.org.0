Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F928D0586
	for <lists+spice-devel@lfdr.de>; Mon, 27 May 2024 17:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA46610F07E;
	Mon, 27 May 2024 15:12:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="J9tFOuWP";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF98B10F07E
 for <spice-devel@lists.freedesktop.org>; Mon, 27 May 2024 15:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1716822739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zk8cQp8Cgbj/dbZrDtZa0r1+HhhZFaH7csLRbQOaZAw=;
 b=J9tFOuWPOr7oObI7N1Y9eOBEGP/6NokO0GdFK0siGo6/8aMblapPSHY6cRabi2WAlzARNu
 mYoANvWXWYfHRqaewZiviK4kjALpACaXzVLa3qGRyM881JYX4lxViFspz2fK/NgDz6UwWk
 7QO8rpmba9LesxM/NiPNaAn983AEbiY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-347-cgJS_MX9PaOHYuw2Ps17pA-1; Mon, 27 May 2024 11:12:17 -0400
X-MC-Unique: cgJS_MX9PaOHYuw2Ps17pA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58B34800169;
 Mon, 27 May 2024 15:12:17 +0000 (UTC)
Received: from localhost (unknown [10.45.224.179])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E9EAE4086EC;
 Mon, 27 May 2024 15:12:16 +0000 (UTC)
Date: Mon, 27 May 2024 17:12:15 +0200
From: Victor Toso <victortoso@redhat.com>
To: Andreas Yankopolus <andreas@yank.to>
Cc: spice-devel@lists.freedesktop.org
Subject: Re: USB mouse on MacOS arm64 client
Message-ID: <uopomzmihznxn6jq56yh5odvyuf3unltlh6tq26wyqldiwhqqh@plqmipo6syk5>
References: <867C1A17-6C0B-495D-98E2-BA4EF5667321@yank.to>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="q4pam73u5cftql2z"
Content-Disposition: inline
In-Reply-To: <867C1A17-6C0B-495D-98E2-BA4EF5667321@yank.to>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--q4pam73u5cftql2z
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 20, 2024 at 06:52:34PM GMT, Andreas Yankopolus wrote:
> All=E2=80=94
>=20
> I=E2=80=99m on an M1 MacBook Pro accessing VMs running on an amd86
> Linux server.
>=20
> Is there a way to connect a USB device on the Mac to a VM?

That's the use case for USB redirection. Spice has spice-usbredir
channel which uses the usbredir library to do USB over tcp from
your client to remote QEMU.

As far as I know, usbredir works on Mac but I don't have one at
hand to test. If you are using spice-gtk, the client needs to be
built with that enabled.

> I=E2=80=99m not able to install additional software on the VMs and am
> trying to sort out mouse tracking, which is very laggy using
> the VirtIO Tablet device. Passing the mouse between MacOS and
> the VM seemed worth trying.
>=20
> Maybe there=E2=80=99s another option?

If you are allowed to change QEMU command line arguments, you can
use setup usb device over a network port, that uses usbredir
protocol too. Then, you can use usbredirect binary (from usbredir
library) to redirect the local device.

All suggestions considering that usbredir works in your platform.

Cheers,
Victor

--q4pam73u5cftql2z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmZUos8ACgkQl9kSPeN6
SE/jgA//c/QQYYrCUb+otSPE93fAWZCGB234ogcSYJMMREy1zKH8fktZUI5kFbj4
KUjXW4ypF0gNkfttAM44NL0h75fJRbLQEdRhMNxjdcwDdG42nSmym1RynEm2B3lW
tcY62xvKb4zAt1f4LYUyRMPqWWAtEf/E+kTfOiDTAW2qslFC5mKoO/6tMn08EJI3
ptrIcUVz4wkpgbJHyFa3AsV4RDIbIew0SkoXNYLzMVN2k8zl7blZfx3aKm1xVG77
L6DRG2oR/OHQY9bVHidnT6GfpgquuCVe7GqN37fXEw2MSg9uFI22+IFHjpsdQ6iu
4VYzupNwt6uFlD7BVFIIkYBMwSLHYTK+ZMqsu+x5+zIMD89wluktEDY8OpmGyPjB
VufKgf96l7U8JlqQHhKuFujgJYssP84mPEmEheMQpoMrwRLyiAXpUOBB3LV+Opkw
5gXCgJ1JzQrXCsX1SAjKdS5CzVhEciCkLsG6kM7589M2+7ohCMl73hapNCs/Ky/a
Bhj75FHMyEBYWw+RRubj2AL4IKbgSl4IzIWCh/jRqXYDe6TBocppLTuQPlOe+GNl
fz4/RUtvfpY6i6wEgIZglUBEFpii3SJ5VcMoXl7WwAFGVvFF0bQJanfMPsV3VEhN
ZPj1+K0gp3SrIPvriSSIdQCmy3A+Qc+yWrh6hZApfZPkFSE+VvU=
=p730
-----END PGP SIGNATURE-----

--q4pam73u5cftql2z--

