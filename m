Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C40632DF
	for <lists+spice-devel@lfdr.de>; Tue,  9 Jul 2019 10:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C3C6E059;
	Tue,  9 Jul 2019 08:33:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 875366E059
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 08:33:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E755300602A;
 Tue,  9 Jul 2019 08:33:55 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9FE619C68;
 Tue,  9 Jul 2019 08:33:54 +0000 (UTC)
Date: Tue, 9 Jul 2019 10:33:54 +0200
From: Victor Toso <victortoso@redhat.com>
To: S KH <sgh8183@gmail.com>
Message-ID: <20190709083354.oti52gn3zrllsrh7@wingsuit>
References: <CAE519-ki3zRa9SJmN-+U_GAp7VoE5nLELxADYP9G0sS=m4Zi1A@mail.gmail.com>
 <2056971441.26754705.1562657541126.JavaMail.zimbra@redhat.com>
 <CAE519-ndb237bkYan_zRpL+TDmBuAN-GM8UHBPwV4EQqw8CETw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAE519-ndb237bkYan_zRpL+TDmBuAN-GM8UHBPwV4EQqw8CETw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 09 Jul 2019 08:33:55 +0000 (UTC)
Subject: Re: [Spice-devel] impossible folder sharing by virt-viewer in
 Windows client
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
Content-Type: multipart/mixed; boundary="===============2115993576=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2115993576==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tc2am4nqcpzk4owp"
Content-Disposition: inline


--tc2am4nqcpzk4owp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2019 at 04:45:00PM +0900, S KH wrote:
> Yes, I added channel device (channel spice-webdav) (please check attached
> picture)
> and I tried to use remote viewer inputting
> address.(spice://xxx.xxx.xxx.xxx:pppp)
>=20
> Through all of this, I have confirmed folder sharing in Linux(ubuntu)
> client using remote viewer.
> However, In Windows client, Folder sharing is not available...

In linux, it might be installed by default the webdavd daemon in
the guest, named spice-webdavd.

On your windows guest, have you installed it? You can find the
2.2 version here

    https://www.spice-space.org/download/windows/spice-webdavd/

While there is a release of 2.3, it hasn't been uploaded on
spice-space.org yet.

Hope this helps,
Victor

> 2019=EB=85=84 7=EC=9B=94 9=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 4:32, =
Frediano Ziglio <fziglio@redhat.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>=20
> > > Hello.
> > > The answer you sent me last time was very helpful.
> > > Thank you.
> > > I'm testing folder sharing using the virt viewer.
> > > The guest OS is Windows. And I'm going to run a virt viewer on the Li=
nux
> > > client and Windows client to see if folder sharing is possible.
> > > I checked 'share folder' in the 'preference' section of the 'file' tab
> > in the
> > > virt viewer.
> > > First of all, I confirmed that the Linux client is possible doing fol=
der
> > > sharing. However, I confirmed that I could not check this 'share fold=
er'
> > > button in the virt viewer running on the Windows client.(attached
> > picture)
> > > I don't know what the problem is, so I was obliged to send you an e-m=
ail.
> >
> > > Respectfully yours,
> > > SKH
> >
> > Did you add the channel device to the VM ?
> > Did you try to use remote-viewer ?
> > After I add the device (you need to turn the VM down and up again) the
> > dialog starts working.
> >
> > Frediano
> >


> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel


--tc2am4nqcpzk4owp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0kUXEACgkQl9kSPeN6
SE8XUw/9HeJLuJm3PgTAEx6KKlUhCAS3Jnr0qW0fgS7J/v12W8ZST1NHe60q7/wB
aAhLphFBpwFeuOUP6HB3YfmVMPTDxnAlf2umUsIjSu5TwwtvbtDlOMVL20tExOM1
m/1nU3yvq63EbhAkYnRXB1TilzNA1XTrk4wjFUD8CgdHwUfUZyKZuXXiL2BQMG0Z
mt1Jop6iouMYcP5f6Y9kJJjZdMbbZXM0WvPgo+A0P7iPKTVKeu9qA+mjFt6j7Nmr
xxDHC7kUiETudM3W9SCRaUpwVrBgR63NlGryOJoqf6f8y4bAI/9K+dU6zfC/0h/P
pw4bTSMmqCvRLDHEeNmMyrp/esifF/wVkiQeLh+uRnXemk/te+PlOtTlopH+I+2F
cGGTqcKaLRaUALw9kZAiUxsbK+BNtRj52vJ5qG5RJAIRz+mSZ4oj91aHAjEMHe09
fMDkMwh19fKGIzF6WJB8SxXH3+bqbO7xedy1AHU9sBQKSspkCL/5AmA5pprHCvq6
hu5XIbs0IubJ3HBSO4gYAkWaTI5yZjJY9clhu5e31VnAeGmhdjEinedirvT74KjJ
OJEmQq4YbgRVXRSe8TQMk1mUkM43es6ixHN8ubzchKs73QWfIVaPWYTJIkGI2q5y
HCeIRGKCwfVlK9hOaPIPlobgSVaNHEoUjtHQtqwcb2q6t7sGV3I=
=S3t0
-----END PGP SIGNATURE-----

--tc2am4nqcpzk4owp--

--===============2115993576==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2115993576==--
