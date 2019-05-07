Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D24DF16000
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 11:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E8E889E35;
	Tue,  7 May 2019 09:01:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F353789E35
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:01:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7564E8830C
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:01:43 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 16FBF277AF;
 Tue,  7 May 2019 09:01:42 +0000 (UTC)
Date: Tue, 7 May 2019 09:01:42 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190507090142.p47lfhxvs77x5k57@toolbox>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 07 May 2019 09:01:43 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v6 00/19] Port SPICE server
 to Windows
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
Content-Type: multipart/mixed; boundary="===============0595993520=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0595993520==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="b6txy4lrqsn6urlv"
Content-Disposition: inline


--b6txy4lrqsn6urlv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 30, 2019 at 01:24:00PM +0100, Frediano Ziglio wrote:
> Windows support is useful to use with Qemu under Windows as host or
> to implement servers like Xspice.
> Mainly SPICE server uses lot of libraries to expose a TCP protocol.
> As TCP is implemented with socket library which is quite portable was
> not that hard to port.
> Beside some minor feature (see REAME.Windows.md) all was ported.
> During porting was choosen to keep Unix as the main platform, if a
> change would require too much changes some Windows wrapper is
> preferred instead. Not too complicated stuff, the main "wrapper" is
> that Windows errors from socket are written back into errno to avoid
> to change lot of code handling errors.

Now that 0.14.2 release was done, imho it should be fine to merge
this.

Acked-by: Victor Toso <victortoso@redhat.com>

> Changes since v5:
> - fix small typo
> - convert notes for markdown and add some information
>   (see https://gitlab.freedesktop.org/fziglio/spice/blob/windows_ci/READM=
E.Windows.md)
> - added CI support
> - rebase on master and fix new syntax-check requirements
>=20
> Changes since v4:
> - fix use after free in reds_set_video_codecs_from_string;
> - rename conflicting identifiers instead of undefining them;
> - remove some preprocessor indentation;
> - improve Meson support;
> - improve some comments.
>=20
> Changes since v3:
> - reduce compatibility layer size:
>   - do not change function name if not required;
>   - use int instead of a new socket_t.
>=20
> Changes since v2:
> - better %m replacement;
> - many comments updates;
> - typo and grammar fixes;
> - use int to store socket descriptors/handles;
> - merge all v2 updates into a single series;
> - split formatting string patch.
>=20
> Frediano Ziglio (19):
>   build: Detect Windows build and change some definitions
>   Avoids %m in formatting for Windows
>   windows: Do not use conflicting preprocessor macros
>   tests: Provide alarm replacement for Windows
>   sys-socket: Introduce some utility to make sockets more portable
>   sys-socket: Add socket_newpair utility
>   net-utils: Port to Windows
>   reds: Use socket compatibility layer (close -> socket_close)
>   red-stream: Use socket compatibility layer
>   dispatcher: Use socket compatibility layer
>   test-leaks: Use socket compatibility layer
>   test-channel: Use socket compatibility layer
>   windows: Disable code not working on Windows
>   dispatcher: Port to Windows
>   tests: Exclude tests that cannot work on Windows
>   red-stream: Fix SSL connection for Windows
>   Disable recording filtering for Windows
>   Add some notes for the Windows port
>   ci: Add test for Windows using MingW
>=20
>  .gitlab-ci.yml                    |  18 ++
>  README.Windows.md                 |  31 ++++
>  configure.ac                      |  20 ++-
>  meson.build                       |  15 +-
>  server/Makefile.am                |   2 +
>  server/dispatcher.c               |  28 ++-
>  server/meson.build                |   2 +
>  server/net-utils.c                |  11 ++
>  server/red-channel-client.c       |   2 +
>  server/red-common.h               |   1 +
>  server/red-qxl.c                  |  52 +++---
>  server/red-record-qxl.c           |   7 +
>  server/red-stream.c               |  48 ++++-
>  server/red-stream.h               |   2 +
>  server/red-worker.c               |   6 +
>  server/reds.c                     | 115 ++++++------
>  server/sound.c                    |   5 +-
>  server/stat-file.c                |   2 +
>  server/sys-socket.c               | 285 ++++++++++++++++++++++++++++++
>  server/sys-socket.h               | 142 +++++++++++++++
>  server/tests/Makefile.am          |  11 +-
>  server/tests/basic-event-loop.c   |   2 +
>  server/tests/meson.build          |  16 +-
>  server/tests/replay.c             |   2 +
>  server/tests/test-channel.c       |   9 +-
>  server/tests/test-leaks.c         |   5 +-
>  server/tests/test-loop.c          |   1 +
>  server/tests/test-record.c        |   7 +-
>  server/tests/test-stream-device.c |   1 +
>  server/tests/win-alarm.c          |  65 +++++++
>  server/tests/win-alarm.h          |  26 +++
>  tools/Makefile.am                 |   2 +
>  tools/meson.build                 |  10 +-
>  33 files changed, 834 insertions(+), 117 deletions(-)
>  create mode 100644 README.Windows.md
>  create mode 100644 server/sys-socket.c
>  create mode 100644 server/sys-socket.h
>  create mode 100644 server/tests/win-alarm.c
>  create mode 100644 server/tests/win-alarm.h
>=20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--b6txy4lrqsn6urlv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzRSXYACgkQl9kSPeN6
SE+hOg/9EqZ5D1+F3xck27luvWH2d91Nb+2ru5dzT1HYhsj9ZV+TiOwAMTLK6mCl
Acr4TLME1PsQkgqnItz9y8Of4mvmY3Iq6s2PBiEUJ+d5Cmb557Zyof8brG2SkPTE
EuzUC4CtAV7DnyTj6CO5b2Z/k2flvUgMMiRL9lANVU4tUK9jef7GueTKyq+DD6C2
UokBjUzjoqbvpCKPsQvVZunPR4CUvS7t0HZgz7t2ND7ipPGh1YJISLw5idjAW/Bf
JTceaTY54sxpgikmBJA3gOaSLecuAy/vYFBwm3KORxqyzcoYkodG8JQG+8Ux2NVY
yTLcPYipGYx2d8GDY1DB0uy7bTaXhMSJco6tnFphNMrfPmhSiJ3nx+6IjGrDa/+y
UpzYGCF4hvIYf4MWv7CpjIXG0QLL1/PIyK+rL2BBAC++ucov6IOklF+zJXLd0gbM
cHui2vz+ZKYFl0y7XKggs1WtLjsyt1CZlPnB96uOpA67jHfzhL3DCbSyZ8GNGADA
zaDXOWjn89S9N9h0X8p+ZvXWj+2ulZNiZDNvl7tPtzC/NBYMIwZMW8W9s2l3Mm1X
qkbwOPeCw2NUNt1DxKZqLPswzTK7OReAjP/EMnNPI4136Ygn2H9Wvb5ehSSOSgs0
UB7P3DczGZH/kMZHEzNmPK6j6bI4j5ilTEc+zKOhJVXa9T+BHFU=
=4DiI
-----END PGP SIGNATURE-----

--b6txy4lrqsn6urlv--

--===============0595993520==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0595993520==--
