Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6060432CC6
	for <lists+spice-devel@lfdr.de>; Tue, 19 Oct 2021 06:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84AF06E072;
	Tue, 19 Oct 2021 04:29:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2119C6E072
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Oct 2021 04:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634617763;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0bCcQWl3Ij2uAWAqcPEkP5BRcHzgFwLrPJsy5OXduG4=;
 b=BXxQJBl+oooOGJrH7Ebkbnv4r4UaEl+0uRi7gleHqZXDV1mVL99WksNsJzMak00zGN0haf
 szDp3Xr4wF+1cDlm60bRcDQNX1CqFueZgTQixIFdeISrnZBCtq7JYQbO48MF0Nea97Otif
 I+L5V6LmTaFIX671n+C4J+5bmfvT+/E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-5qRLIt3LNDem3C8Np_sA4Q-1; Tue, 19 Oct 2021 00:29:19 -0400
X-MC-Unique: 5qRLIt3LNDem3C8Np_sA4Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A12578066F0;
 Tue, 19 Oct 2021 04:29:18 +0000 (UTC)
Received: from localhost (unknown [10.40.192.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1F33B101E58D;
 Tue, 19 Oct 2021 04:29:17 +0000 (UTC)
Date: Tue, 19 Oct 2021 06:29:16 +0200
From: Victor Toso <victortoso@redhat.com>
To: John Paul Morrison <jmorrison@bogomips.com>
Cc: spice-devel@lists.freedesktop.org
Message-ID: <20211019042916.oirr77itnfmmtqw4@tapioca>
References: <CAO-kYtFhG-cNWAUvTh-r48wAhvXBZoKQPa3SQTS=3S+VnEB8OA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO-kYtFhG-cNWAUvTh-r48wAhvXBZoKQPa3SQTS=3S+VnEB8OA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="4k3jbn3dvybgiufo"
Content-Disposition: inline
Subject: Re: [Spice-devel] vdagent, pho-dav for Darwin/OSX?
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

--4k3jbn3dvybgiufo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 18, 2021 at 11:40:49AM -0700, John Paul Morrison wrote:
> Hi
>=20
> I'm looking into vdagent and pho-dave for OSX and was wondering
> if anyone had started anything.

Not that I'm aware of.

> I have virtio serial interfaces passed through to the qemu OSX
> guest:
>=20
> crw-rw-rw-  1 root  wheel   18,   4 Oct 18 04:10 /dev/tty.com.redhat.spic=
e.0
> crw-rw-rw-  1 root  wheel   18,   2 Oct 18 04:10
> /dev/tty.org.qemu.guest_agent.0
> crw-rw-rw-  1 root  wheel   18,   0 Oct 18 04:10
> /dev/tty.org.spice-space.webdav.0
>=20
> /usr/libexec/AppleQEMUGuestAgent opens /dev/tty.org.qemu.guest_agent.0 by
> default.
>=20
> There's activity on the other ttys. When tty.com.redhat.spice.0
> is opened, remote-viewer releases the mouse and sends data with
> mouse activity.
>=20
> I'm not sure where to get started - I thought maybe I could
> test some things in XQuartz first.  Hoping this can be done in
> user space.

Are you building vdagent with gtk? With gtk, we might be able to
get some features like clipboard, I hope.

Cheers,
Victor

--4k3jbn3dvybgiufo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmFuSZwACgkQl9kSPeN6
SE+GuQ/8C01q8gjkII9ZVd1f1Hf7GmAKeI7GI7G+cjrdTK6hx3j5d9sEDVr/etUV
aXRz4/zr3Ptf6M/9MhCORx2SlSoOX1aOfwDiu4FEiXLMun7cLWGR39ey0uM2o3rr
22zxddpy0oBAOsHgsEX9mY3tur1rRlRpPWuGK52tMDKrweDhWUuJ2lkrjOh4qxwd
CBWkIIfICGcU8qW4nP2TVNcvOUGjILle9B5ArCQwo4OUfqGw9AXVSZzpdlbbWmzA
4w6SWZYwd0mfbbkNySb3Px337BZDhajAJJCirqqTXOyAIc+2EUPjqZu7BPAcVIE5
H466HOLI/IiZ8aglsMXDlwxkaua9Z8Gk4FMxAWYvr3mb+Qg9XUNdZwkvEyoRi2Tg
2Gc9K1hsOR7iesLPlGITGFuaJv5C9sxiI/vmDZ8LWHJb6JX1EZB8EwURotRlKLdK
9JcTDelA1K8/FWA6QoSabJV9CUqf8eOG6a1jNdm3lrFRM9ZGBGV5CvcHtMlVQwTw
zqp9kBuJP0iHIUXrgrKfbWfkBFebITSp/6j6tNBBza4dHFUjluCHt6avo+PnSTB0
ZVjBrSXdHr/KTuu7KqtoaQ8m8gAwFzbMR4EmDPKYiBkhY/x98cIbNBN8oa6ebRNu
O7PY+YEfVJ/8L1nC3XB2/NmvrDZdkCuiR5+quP2V25O9uTJ2y7M=
=G6Y+
-----END PGP SIGNATURE-----

--4k3jbn3dvybgiufo--

