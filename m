Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 363A771903
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 15:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF6B6E1CE;
	Tue, 23 Jul 2019 13:18:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B1696E1CE
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 13:18:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7BFCBC057F88;
 Tue, 23 Jul 2019 13:18:56 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 11B4160603;
 Tue, 23 Jul 2019 13:18:55 +0000 (UTC)
Date: Tue, 23 Jul 2019 15:18:55 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190723131855.4ixkvbs2vnblsi7h@wingsuit>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
 <20190723072708.2575-6-yuri.benditovich@daynix.com>
 <669362004.2479255.1563867209541.JavaMail.zimbra@redhat.com>
 <CAOEp5OfzZKCpzpxEyeDaB4wei0xpu1wAge4uSSmpQt57qCpwtg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5OfzZKCpzpxEyeDaB4wei0xpu1wAge4uSSmpQt57qCpwtg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 23 Jul 2019 13:18:56 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 5/9] usb-redir: cosmetic changes in
 hotplug_callback
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
Content-Type: multipart/mixed; boundary="===============1882709513=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1882709513==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ksustsgbsivzv63a"
Content-Disposition: inline


--ksustsgbsivzv63a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 23, 2019 at 10:40:47AM +0300, Yuri Benditovich wrote:
> Sorry, this is a typo in the comment - should be unexpected condition,
> i.e. exactly the bug in the code

Yes, this is minor and can be fixed before pushing.

=46rom 1/9 to 5/9,
Acked-by: Victor Toso <victortoso@redhat.com>

> On Tue, Jul 23, 2019 at 10:33 AM Frediano Ziglio <fziglio@redhat.com> wro=
te:
> >
> > >
> > > Unify parameter name for libusb_device.
> > > Use g_return_val_if_fail for expected condition.
> >
> > See https://developer.gnome.org/glib/stable/glib-Warnings-and-Assertion=
s.html#g-return-val-if-fail
> > g_return_val_if_fail represents a bug in the code, not an "expected con=
dition".
> >
> > > Remove redundant casting.
> > >
> > > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> > > ---
> > >  src/usb-backend.c | 25 +++++++++++++------------
> > >  1 file changed, 13 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/src/usb-backend.c b/src/usb-backend.c
> > > index 53ac430..e837579 100644
> > > --- a/src/usb-backend.c
> > > +++ b/src/usb-backend.c
> > > @@ -108,21 +108,22 @@ static SpiceUsbBackendDevice
> > > *allocate_backend_device(libusb_device *libdev)
> > >  }
> > >
> > >  static int LIBUSB_CALL hotplug_callback(libusb_context *ctx,
> > > -                                        libusb_device *device,
> > > +                                        libusb_device *libdev,
> > >                                          libusb_hotplug_event event,
> > >                                          void *user_data)
> > >  {
> > > -    SpiceUsbBackend *be =3D (SpiceUsbBackend *)user_data;
> > > -    if (be->hotplug_callback) {
> > > -        SpiceUsbBackendDevice *dev;
> > > -        gboolean val =3D event =3D=3D LIBUSB_HOTPLUG_EVENT_DEVICE_AR=
RIVED;
> > > -        dev =3D allocate_backend_device(device);
> > > -        if (dev) {
> > > -            SPICE_DEBUG("created dev %p, usblib dev %p", dev, device=
);
> > > -            libusb_ref_device(device);
> > > -            be->hotplug_callback(be->hotplug_user_data, dev, val);
> > > -            spice_usb_backend_device_unref(dev);
> > > -        }
> > > +    SpiceUsbBackend *be =3D user_data;
> > > +    SpiceUsbBackendDevice *dev;
> > > +    gboolean arrived =3D event =3D=3D LIBUSB_HOTPLUG_EVENT_DEVICE_AR=
RIVED;
> > > +
> > > +    g_return_val_if_fail(be->hotplug_callback !=3D NULL, 0);
> > > +
> > > +    dev =3D allocate_backend_device(libdev);
> > > +    if (dev) {
> > > +        SPICE_DEBUG("created dev %p, usblib dev %p", dev, libdev);
> > > +        libusb_ref_device(libdev);
> > > +        be->hotplug_callback(be->hotplug_user_data, dev, arrived);
> > > +        spice_usb_backend_device_unref(dev);
> > >      }
> > >      return 0;
> > >  }
> >
> > Frediano
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ksustsgbsivzv63a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl03CT8ACgkQl9kSPeN6
SE827w//TqLwYvx11pCJiQuscLD/sP5AvqmB+WRiJg6l5aDXC2OWlu2El9i3tPPC
dNmuRcetkWiSkE0yk0MaEBPm1y+jM4r3U5YhOxfeMGPs7DOGMzDK3LNmd/5V7b3z
nAeFxeKOB/0uhl0VVcof5mHPdZZTZ1ktWGMqv8CZnYQoSJlOpfhOVYTVBQjmZsFX
YgLOHi8fDw6buWi8UtjXmFjzlTrrCh+YuAo68g1VAxtuvU3OkxM3LupKt2yfD7O+
6gaz+ccShtvsvVKdQ8XkSe1P1fBCK6nlZ5pIbCxSewcfrs0vQwMJFe4UYjZ4n80B
Ne1Iv1ZC089Aa0phHGSlnAleldKS+p90te7exqHaNwwwJeXO0r4qgoyK3XSN0ez2
iFElLYCrC9EVOuFJrp1o02xMJf8efHJlPaihGJzD1mF2NDuyad4NMReZeP9zIXzo
37P2FPHCLNX09JoJhcyiG8ehUIftUPM/PADa436+l08pXVCj5RCIZJfngJY0BLKD
TExSfA/Eb85JG3Mji0GxgxhqQSUMaSvQcgs7G9rzkP0apQ7RUJKqo/sH3ww6CYEZ
RHG1UvrWRuHevoKkG1USTXaPL0qwmxCZomHn4T2P3MWgKDerfNUr2+ffA4vL9dw2
09x9/BuZUshYhdpApvyTjRXgPMMBximM90ja97LcLfzgQUTiev8=
=TKc2
-----END PGP SIGNATURE-----

--ksustsgbsivzv63a--

--===============1882709513==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1882709513==--
