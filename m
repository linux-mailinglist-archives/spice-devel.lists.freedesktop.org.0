Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B867DB64
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 14:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91D476E5B9;
	Thu,  1 Aug 2019 12:26:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 501CD6E5B9
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 12:26:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C368730B8DE2;
 Thu,  1 Aug 2019 12:26:21 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 70DF960BE0;
 Thu,  1 Aug 2019 12:26:21 +0000 (UTC)
Date: Thu, 1 Aug 2019 14:26:20 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190801122620.vxkl6edc5viwmb7v@wingsuit>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-2-yuri.benditovich@daynix.com>
 <204769724.2953329.1564045041460.JavaMail.zimbra@redhat.com>
 <CAOEp5Oc5GC+BhK=HL+WS5DTCBfCsVr6H3YDbYgvO4YQZJurL2A@mail.gmail.com>
 <777209713.3089366.1564130635969.JavaMail.zimbra@redhat.com>
 <CAOEp5OcBD366t2PHc8qeYV=QkKvt65zzDc4ab56zmUGtJtZWfA@mail.gmail.com>
 <433757118.3144474.1564149287411.JavaMail.zimbra@redhat.com>
 <CAOEp5Od-KEvT-0sMBk-bjOrMZrZPOmxZyQeuRC5q8gOGJZbPnQ@mail.gmail.com>
 <1146698358.3277497.1564387410643.JavaMail.zimbra@redhat.com>
 <CAOEp5OcsjL=phuv8mR1yd=Mh07gun+mu3bdnSf_JXf=J6L+kyg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5OcsjL=phuv8mR1yd=Mh07gun+mu3bdnSf_JXf=J6L+kyg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 01 Aug 2019 12:26:21 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 1/9] usb-redir: define interfaces to
 support emulated devices
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0462829471=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0462829471==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uq27o5jpgvui4som"
Content-Disposition: inline


--uq27o5jpgvui4som
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 29, 2019 at 12:26:11PM +0300, Yuri Benditovich wrote:
> On Mon, Jul 29, 2019 at 11:03 AM Frediano Ziglio <fziglio@redhat.com> wro=
te:
> > What does it means? The code cannot be improved before being
> > merged?  It does not seem so crazy change to make to me.  As
> > I said multiple time I can do that change and send as follow
> > up.
>=20
> If this help us moving forward, please do that.

Okay, I'm still reading the backlog from the past few days. Would
be good to have a fresh patch series with all the fixup/follow-up
patches included to review with agreed changes or different
approach included.

> My interest is just have it merged faster.

We all want this merged and move on, no need to keep repeating
that. I know it took quite some time to start but it has been
quite active discussion, doesn't mean that we should just merge
it as is because we want to move on...

Cheers,

--uq27o5jpgvui4som
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1C2mwACgkQl9kSPeN6
SE8DRRAAjl6vheCaH8uSAxDpJL9vf47QOMsxrg07FXw4F1B20LUI7n43xZNTZmDr
MHMFtvhtJguJhfzhF+RpYjC2ebUz/pcWCzXWT6hE7SkBA+50YfbWD28aJLPlLjYq
/rLTY2JzlO5XKHocrRvo5Y5Kaxliwvy9J77Zmcp4SmcV2EKCrPp2CRADSjr6TDK3
jHIGrICXy+3qePl0NpnrVarwF6Em7N2VlXPBLsEtzpbksItFuw1OSyxdE0xHltLk
QHni0TFxFBak70CrREHyvBWcwvEKfYsQNmoqUlJTOmuvguaBQWI0BIrxmsMyLvcn
dP5pdcAA9HEdxy13ufOaRd/kvhj5l1sg2xg/cQ6ogKATnk9l4kfpiS9zWeJb2eEL
Zcc2UKy3Io0fzCmTPqDwwWBPFBkAeA61l+wp//qGCrb9r6jG70p/T1RG5oVJJIgZ
/zloNDLglhApyMnP1qzCOX9CxQAvw6866C2EsifybpkPUl2YP6qb/3i6fLcYHtEW
vzgauijJUKA/SkVVxs3uANHIManMykHPB9RQuAKzO4BdGoa7G4xbe/c8aHgcpNpt
NJ+snEabFQsAKBnvwFwJVujPzEhsJBosFm+uJtO/OBW8+uPgTvhYqFn1BqQeG4zf
SBJGWDPMiQGlVMwWtcwDJo1m4COPk5CuMSbHP6ZxXL6vu2+C5Go=
=cPwy
-----END PGP SIGNATURE-----

--uq27o5jpgvui4som--

--===============0462829471==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0462829471==--
