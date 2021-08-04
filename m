Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B083E0160
	for <lists+spice-devel@lfdr.de>; Wed,  4 Aug 2021 14:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8FA6E3AC;
	Wed,  4 Aug 2021 12:45:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B78596E3AC
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Aug 2021 12:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1628081123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=X381XifqoFV9pel25bqZwc8e1Biu49e3D2gkbMLqKfQ=;
 b=IMYZ56Q9+CyrtnPUkADcxc0uL6bhkvB/HTPsnHYMbEB7eUmxDOTgXZmXiXKFyHy9RB/K2a
 NcqhI+QeyKcgVSxldinJ3j600LjDVkZKpfrkklY9gLXHtYYzVQ9Dg7WLcDILmrGHYMCjYQ
 yMW7sx8fUtdscr2VDfAUyDE9ePT8X+w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-5xOUwaZmPkuBknS6UdMm1g-1; Wed, 04 Aug 2021 08:45:19 -0400
X-MC-Unique: 5xOUwaZmPkuBknS6UdMm1g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AC011853025;
 Wed,  4 Aug 2021 12:45:18 +0000 (UTC)
Received: from localhost (unknown [10.40.192.252])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0F82660BF4;
 Wed,  4 Aug 2021 12:45:17 +0000 (UTC)
Date: Wed, 4 Aug 2021 14:45:16 +0200
From: Victor Toso <victortoso@redhat.com>
To: =?utf-8?Q?Marc-Andr=C3=A9?= Lureau <marcandre.lureau@gmail.com>
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Message-ID: <20210804124516.c4tnflura3mtqldd@tapioca>
References: <CAJ+F1CK8nrKw7r82uPr7MZrL7WhDzpAkO_stz8EHg_6Rc__Jog@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ+F1CK8nrKw7r82uPr7MZrL7WhDzpAkO_stz8EHg_6Rc__Jog@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="pyi2xhq54tsagdul"
Content-Disposition: inline
Subject: Re: [Spice-devel] WIP: usbredir rust bindings
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

--pyi2xhq54tsagdul
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 03, 2021 at 02:46:51PM +0400, Marc-Andr=E9 Lureau wrote:
> Hi
>=20
> Just to let you know that I started a usbredir binding to Rust:
> https://gitlab.freedesktop.org/elmarco/usbredir-rs
>=20
> Atm, it compiles with a custom rusb. I have some MR there (
> https://github.com/a1ien/rusb/pull/97 &
> https://github.com/a1ien/rusb/pull/101)
>=20
> See the example:
> https://gitlab.freedesktop.org/elmarco/usbredir-rs/-/blob/main/usbredirho=
st/examples/usbredir.rs

Awesome work!

I'm actually in favor of moving usbredir codebase to Rust in the
future as it is not that big ~ 6k lines of code (usbredirhost and
usbredirparser).

> Atm, I pass an open fd with bash for testing, ex:
> exec 3<>/dev/tcp/localhost/7777
> target/debug/examples/usbredir '1050:0407' --fd 3
>=20
> Next, it could be extended this with [--tcp host:port], [--unix path],
> [-l|--listen]. Then I suppose it will be close to
> https://gitlab.freedesktop.org/spice/usbredir/-/blob/master/tools/usbredi=
rect.c
>=20
> (Note that the Rust code doesn't use poll(), since it isn't portable. See
> https://libusb.sourceforge.io/api-1.0/group__libusb__poll.html#libusb_pol=
lmain.
> The libusb/usbredir APIs don't make it easy to handle events..)

Yes and I think it is fine.

Cheers,
Victor

--pyi2xhq54tsagdul
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmEKi9wACgkQl9kSPeN6
SE9/qQ/+Px1g7XIDXSgHGmX6JAz1XZ/d08cRd+Gol9VxV5sSUxmq3dG5GAK9IWm3
D/a0j+mcgIHzZALVzvZ5RhvmjPVH2amhDnPGaSrQaww4+OSWialL6g6etH3hEdQl
fzs94dcvCRKP6exSCKwWW10ARwT+Zt9MExxrImImAOZDbFLCBpH7w5x6l06TKXD7
L/tpPe/4CwMWL87Id8kBEjG/HeoayS652Y7vhFQYbXescfaahyJO5re+ZIfOLqJK
tJ8gL24G2VlriXXJwHOp0n7eCf2hSCtEILLhNOilAbYbm/sn5VtgDLcG2rUnicjp
2+3ofTclIp4aU9r+LkDIgng5OhoLGLZd8k3v12illtPa7YbyXsyrRZJL09ofyCbx
/jxpoO3Jb2KUy9PSGl4P6pOiRzy6YO5YPwysAsOXqtjO64qaqK1FnVff0JEkGp/B
STewnBdQr/svpTsQyFchZE3oIeVNaHKxvTS2tnmIOZTv01MfYq7jxGj3qPbHwQNf
7zsNG023Yn/Z8WVHiOUc4ll5idXJDk7vwmINf4NPKDutSW45UEap/lYJFgR7/29r
jQWV2HD7pP+oLRvoHHhj07GO2RAGGKZVASBPF09kCfeMCbAhCnberGTbTUZOKOg7
W0o2hTZHNrA+OqABsdaESszM4nVeDWWdnVnKejYrI6rDmSX4AEM=
=V9FN
-----END PGP SIGNATURE-----

--pyi2xhq54tsagdul--

