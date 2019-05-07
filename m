Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E939C162D9
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 13:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBE289B33;
	Tue,  7 May 2019 11:33:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13CE89B33
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 11:33:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 59CE53001810;
 Tue,  7 May 2019 11:33:11 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F341310018F9;
 Tue,  7 May 2019 11:33:10 +0000 (UTC)
Date: Tue, 7 May 2019 11:33:10 +0000
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190507113310.vzzycc5qshqkdfdy@toolbox>
References: <20190410193139.10912-1-yuri.benditovich@daynix.com>
 <20190410193139.10912-2-yuri.benditovich@daynix.com>
 <20190411093550.ifdixy664u3arjwd@toolbox>
 <CAOEp5OedDMrmF_EJ7YPqe229DowB1-6m+=O0kD0r7ZcEJSYu4A@mail.gmail.com>
 <20190411123717.uysrnb26hlsiaptm@toolbox>
 <20190415121802.GC14144@natto.ory.fergeau.eu>
 <CAOEp5OfjF-_yLk9PCpqwu3RJUgBYK16QemUhNrA+UnEic8v3tQ@mail.gmail.com>
 <20190416085152.jwiaon7nrlj7d7y3@toolbox>
MIME-Version: 1.0
In-Reply-To: <20190416085152.jwiaon7nrlj7d7y3@toolbox>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 07 May 2019 11:33:11 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH 1/3] usb: use native libusb procedure for
 getting error name
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
 Spice List <spice-devel@lists.freedesktop.org>,
 Christophe Fergeau <cfergeau@redhat.com>
Content-Type: multipart/mixed; boundary="===============1911893515=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1911893515==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mjq3auih2hlk2wy6"
Content-Disposition: inline


--mjq3auih2hlk2wy6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 16, 2019 at 08:51:52AM +0000, Victor Toso wrote:
> Hi,
>=20
> On Mon, Apr 15, 2019 at 03:42:05PM +0300, Yuri Benditovich wrote:
> > IIUC, what you call 'simpler' is:
> > - making unneeded changes in several files (instead of one)
> > - in the next patch remove these changes completely
> >=20
> > Did I miss something?
>=20
> Current patch series changes spice_usbutil_libusb_strerror(),
> then drops its usage and then a new patch to remove
> spice_usbutil_libusb_strerror() is needed.
>=20
> My suggestion was to remove spice_usbutil_libusb_strerror() as
> first thing, because you can replace that with
> libusb_error_name().
>=20
> From the repository POV, this is nicer IMHO. Yes, you would need
> to rebase your branch.
>=20
> Note that this is a friendly review, if you disagree feel free to
> say so and why. I'm trying to make my rationale clear above so
> you can just clarify why my suggestion is bad, if you think so.
>=20
> I'll be looking further to the other patches Today, sorry for
> taking some time on it.

Yes, taking more time that I anticipated. The whole USB stack is
new to me and that makes a good opportunity to understand more
and more things which delays a bit my review here.

Replying here because I did a FIXUP patch that removes the
function as suggested and the following up patches are almost
untouched, see the branch yuri-ml-usb-backend-layer [0] for the
patch + rebase.

[0] https://gitlab.freedesktop.org/victortoso/spice-gtk/commits/yuri-ml-usb=
-backend-layer

One other thing that bothered me was the #ifdef USE_POLKIT on
channel-usbredir which I proposed to remove. I've rebased your
code on top of that as well, needs a small FIXUP patch it seems.

[1] https://gitlab.freedesktop.org/victortoso/spice-gtk/commits/yuri-usb-ba=
ckend-on-polkit-branch

I'll be providing you better feedback later this week.

Cheers,

> Cheers,
> Victor
>=20
> > On Mon, Apr 15, 2019 at 3:18 PM Christophe Fergeau <cfergeau@redhat.com=
> wrote:
> > >
> > > On Thu, Apr 11, 2019 at 12:37:17PM +0000, Victor Toso wrote:
> > > > Hi,
> > > >
> > > > On Thu, Apr 11, 2019 at 02:57:21PM +0300, Yuri Benditovich wrote:
> > > > > On Thu, Apr 11, 2019 at 12:35 PM Victor Toso <victortoso@redhat.c=
om> wrote:
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > On Wed, Apr 10, 2019 at 10:31:37PM +0300, Yuri Benditovich wrot=
e:
> > > > > > > libusb has libusb_error_name procedure that returns name
> > > > > > > for any error that libusb may return, so we do not need
> > > > > > > to analyze error values by ourselves.
> > > > > > >
> > > > > > > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> > > > > >
> > > > > > Before applying the series:
> > > > > >
> > > > > > (master 15e06ead) $ grepi "spice_usbutil_libusb_strerror" src/
> > > > > > src/win-usb-dev.c:116:        const char *errstr =3D spice_usbu=
til_libusb_strerror(rc);
> > > > > > src/win-usb-dev.c:173:        const char *errstr =3D spice_usbu=
til_libusb_strerror(rc);
> > > > > > src/channel-usbredir.c:312: spice_usbutil_libusb_strerror(rc), =
rc);
> > > > > > src/usbutil.c:62:const char *spice_usbutil_libusb_strerror(enum=
 libusb_error error_code)
> > > > > > src/usbutil.h:31:const char *spice_usbutil_libusb_strerror(enum=
 libusb_error error_code);
> > > > > > src/usb-device-manager.c:284:        const char *desc =3D spice=
_usbutil_libusb_strerror(rc);
> > > > > > src/usb-device-manager.c:311:        const char *desc =3D spice=
_usbutil_libusb_strerror(rc);
> > > > > > src/usb-device-manager.c:733:        errstr =3D spice_usbutil_l=
ibusb_strerror(errcode);
> > > > > > src/usb-device-manager.c:1071:            const char *desc =3D =
spice_usbutil_libusb_strerror(rc);
> > > > > >
> > > > > > After applying the series:
> > > > > > (yuri-usb-b-layers-v1 5f87d90d) $ grepi "spice_usbutil_libusb_s=
trerror" src/
> > > > > > (yuri-usb-b-layers-v1 5f87d90d) $
> > > > > >
> > > > > > So, I think it makes sense to use this patch to drop this
> > > > > > function and always use libusb_error_name() instead, agree?
> > > > >
> > > > > Finally, this series drops this functions and uses libusb_error_n=
ame.
> > > >
> > > > Yes,
> > > >
> > > > > It was possible to drop this function in the first patch, but
> > > > > this would not make too much sense ( as all these new calls to
> > > > > libusb_error_name() would be removed due to isolation of
> > > > > libusb).
> > > >
> > > > For me it makes sense because I know that this function can be
> > > > dropped now even if later patches would change the code path of
> > > > callers of spice_usbutil_libusb_strerror/libusb_error_name again.
> > > >
> > > > That is, removing this function as first patch would introduce no
> > > > regression and cleanup the code a bit. One patch less in the
> > > > queue and could be merged before the others ;)
> > >
> > > Yep, makes sense to me too to start by making the code simpler, and
> > > merging the preparatory patches early.
> > >
> > > Christophe



> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel


--mjq3auih2hlk2wy6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzRbPYACgkQl9kSPeN6
SE8dpg//TBXXa6G00/mzESyxmf4f4y7DYCA9LT17TLjUOhc5N50iY2aSFbP6AxYd
rQvBKo/vmoT+61jbwADD3zZbxazIJ087PWjFBwOM+UjPN4TBeBhF3dcDcPIfSbNn
7swUxZxsaphXimI3tbFDDfAN8RufR9byKVmLS1i9WJOHTeCqqCjK5bEljhIsYIzB
u+5eUxQL6iIgLBcl/cYjHzuOq4+TMKfydNFE1HNhqHhhGKBzHV6hzYc0qnbrZiHF
MBGPmmsfXusNqC4M/KL2McUWVPvCZZALv5I7gqL3y1QpOaiiatM347pcU0m4majs
wdR4tkLOhTcCKfoyd0CJdtTMhYB4vnoUh72f4E5tccF4BO91jV2ubpPh4sslRYxS
sb4I1qFIfaFxIvAQZROpaow2fUh/bX2UOTv3GVX1TBhm35g5PsNzbZ11BKthh/PY
/BWQJrD7fSrTDbJ/kxnpktn4NEc8mnqTbKsChhOIMvD/vDueNF9Lw0bxNDt5v3g0
qH1r9i2z+7oLFqQxjAeCzV/HvDgaqR8RJ/S2dJhTIBXOYefkInklZan8b5FOiSgR
IOYaKaGuxQtptyxAk0LzsfC0xaPijHHeHFYlSgrhnULqQZaIalW1r1jaSKmS23yu
mJyl2S/091KDoyraEoF0KpRgzEZ1xjE67+9su7G8x+zNkvvt+Fk=
=WJmk
-----END PGP SIGNATURE-----

--mjq3auih2hlk2wy6--

--===============1911893515==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1911893515==--
