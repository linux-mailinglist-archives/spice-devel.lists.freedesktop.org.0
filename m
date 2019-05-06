Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C099A1450E
	for <lists+spice-devel@lfdr.de>; Mon,  6 May 2019 09:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D435D8924C;
	Mon,  6 May 2019 07:15:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E6048924C
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 07:15:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CEA1D6696F;
 Mon,  6 May 2019 07:15:19 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 76C181001E98;
 Mon,  6 May 2019 07:15:19 +0000 (UTC)
Date: Mon, 6 May 2019 07:15:18 +0000
From: Victor Toso <victortoso@redhat.com>
To: Verucheck Baligio <veruliano@gmail.com>
Message-ID: <20190506071518.pzshbawnh7a2zypp@toolbox>
References: <CABVekY-kUQ=2JM=DVRQi4KmTRGa28v2EZTNiMa96hV+AzaUtEg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABVekY-kUQ=2JM=DVRQi4KmTRGa28v2EZTNiMa96hV+AzaUtEg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 06 May 2019 07:15:19 +0000 (UTC)
Subject: Re: [Spice-devel] macOS Drivers?
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============0178308585=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0178308585==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yvrn4yixlkqam76o"
Content-Disposition: inline


--yvrn4yixlkqam76o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, May 05, 2019 at 05:34:52PM -0400, Verucheck Baligio wrote:
> I'm curious, has any work been started to implement appropriate
> drives to support SPICE on macOS? It sounds like there's a lot
> of resistance on this front, but I'm curious about looking into
> what it would take to do this or to contribute to the effort if
> someone has already started.

"Is this legal?"
    https://github.com/kholia/OSX-KVM#is-this-legal

But to answer your question, not aware of anyone trying to make
spice works well on virtualized macOS like it does for Windows.

Cheers,
Victor

--yvrn4yixlkqam76o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzP3wYACgkQl9kSPeN6
SE9nbQ//Q7SQL1I4OoGe8NrLES0nGJJ+AHQlNMeaCww/P4x93uPQwN/SR96r0UN2
5N+rpp3tHfOR4Y5IuM8WSLJK83F6uPG2h6kwRliQWOyvOQi8JNyA8jWU3QEh0a62
HMXBw/2RKk7UCXf29VEbj27S0Z8VZ8V0TLy4AQHcR8Ak8+EJWhCGtTgk5elh+lA2
Fj4bfI20l2ObsnAOcYug5Z7xlW6pov+uamckWtsBn9n2F+OQn97Jj4MZUUo2M0KT
wobR03DnW+kusNj9VqGjfPD9LDiYi10hEl2mD+HhB8Hn9aWoFZ4XvO46ftZN0AA5
fPWyVoAHvf+tO7B98UD/R7tQI+AE9reSzGIghizXP4YzDRDX+WbGSqqpVscY8GUx
0P+MfEjFpFajJ0dvAHmidqUMWxhBGuFu4vUr9NErjCkLgah6Dl5rA1rzkW+5RGBk
HSyrWJ2FA/dW4l1mPNvD2DAPDnvqYVNsRa8Tj6zqWIyC8opHFjJk7Pydy7OPF52M
wfPWWfLhhhwtZsKq5Bb5yJThg9djtgk6alH1mf5uh2DboRaGV6J9IY36oe+te96S
HyiaFJQ5vfN0EL+XgIV+6eJs0moig/PZ8dxCJCjnJ1l7etYHPI5jD5vtaiQzZMV5
w5ROvtXr+zq/9IiormATjZXKcgs3AC+7K+dU0kZisz/d+kaTK2c=
=UwD3
-----END PGP SIGNATURE-----

--yvrn4yixlkqam76o--

--===============0178308585==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0178308585==--
