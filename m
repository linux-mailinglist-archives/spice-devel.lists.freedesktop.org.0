Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1A976EAF
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 18:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33D76EDC5;
	Fri, 26 Jul 2019 16:14:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 130916EDC5
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 16:14:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A0B9D81F13;
 Fri, 26 Jul 2019 16:14:36 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4DDB360C69;
 Fri, 26 Jul 2019 16:14:36 +0000 (UTC)
Date: Fri, 26 Jul 2019 18:14:35 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190726161435.hasfx5qynsujclfq@wingsuit>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <1528197574.2953680.1564045298943.JavaMail.zimbra@redhat.com>
 <CAOEp5OdB0hg4u=+Nk+2T8P=cdjdQ1n0m0GwkuhPxgLxk6rWiQg@mail.gmail.com>
 <1392106279.2977164.1564054045587.JavaMail.zimbra@redhat.com>
 <615004152.3040546.1564076765218.JavaMail.zimbra@redhat.com>
 <CAOEp5Od0O_GGhnF9q_Ne1rt0-uJUX4LQyFM9Xap+6POqE8=f_Q@mail.gmail.com>
 <20190726070933.wrer35srddo7z2cg@wingsuit>
 <CAOEp5OdY1vOTM0dwJOdVh+f7ijg++siw6i30XJVh_B0O6p7SrQ@mail.gmail.com>
 <1977790209.3105030.1564139347711.JavaMail.zimbra@redhat.com>
 <CAOEp5OcNY7+OcAponSgd+p6OCoyxCWBGXF=JH71ADAgQ2y4v-A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5OcNY7+OcAponSgd+p6OCoyxCWBGXF=JH71ADAgQ2y4v-A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 26 Jul 2019 16:14:36 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 2/9] usb-redir: device error signal
 without device object
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
Content-Type: multipart/mixed; boundary="===============1991638556=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1991638556==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4rgs6i3fd2qffdvv"
Content-Disposition: inline


--4rgs6i3fd2qffdvv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jul 26, 2019 at 06:30:51PM +0300, Yuri Benditovich wrote:
> On Fri, Jul 26, 2019 at 2:09 PM Frediano Ziglio <fziglio@redhat.com> wrot=
e:
> >
> > >
> > > On Fri, Jul 26, 2019 at 10:09 AM Victor Toso <victortoso@redhat.com> =
wrote:
> > > >
> > > > Hi,
> > > >
> > > > On Fri, Jul 26, 2019 at 08:08:07AM +0300, Yuri Benditovich wrote:
> > > > > On Thu, Jul 25, 2019 at 8:46 PM Frediano Ziglio <fziglio@redhat.c=
om>
> > > > > wrote:
> > > > > > > > > > @@ -1440,6 +1446,10 @@ gchar
> > > > > > > > > > *spice_usb_device_get_description(SpiceUsbDevice
> > > > > > > > > > *device, const gchar *for
> > > > > > > > > >
> > > > > > > > > >      g_return_val_if_fail(device !=3D NULL, NULL);
> > > > > > > > > >
> > > > > > > > > > +    if (!device->bdev) {
> > > > > > > > > > +        return g_strdup(_("USB redirection"));
> > > > > > > > > > +    }
> > > > > > > > > > +
> > > > > > > > > >      bus     =3D spice_usb_device_get_busnum(device);
> > > > > > > > > >      address =3D spice_usb_device_get_devaddr(device);
> > > > > > > > > >      vid     =3D spice_usb_device_get_vid(device);
> > > > > > > > >
> > > > > >
> > > > > > Ok, now I had understand this patch. This is removing the
> > > > > > assumption that bdev is never NULL.
> > > > > > Only to support calling spice_usb_device_manager_device_error
> > > > > > with a NULL device.
> > > > > > I would say nack to this patch and find another solution.
> > > > > > Maybe adding a "device_creation_error" signal with "error"
> > > > > > but no device.
> > > > >
> > > > > IMO, creating special entity for each case that is little
> > > > > different from existing ones is disrespect to Occam's principle
> > > > > (and several similar ones).
> > > >
> > > > Heh, nice try. The difference here, IMO, would be that you have a
> > > > clear objective: give an error when device creation fails. You
> > > > want to do it by emit an error signal in a fake, empty device
> > > > which is quite the workaround and I wouldn't call it a simpler
> > > > alternative.
> > > >
> > > > > In context of 'device error signal' the 'device' is something
> > > > > that can referenced/dereferenced and which name can be
> > > > > retrieved.
> > > > > > This is not a device error, it's a device manager error.
> > > > >
> > > > > We can view device manager as kind of device, then there is confl=
ict.
> > > >
> > > > That upsets me a little. When I started learning the usb stack in
> > > > spice-gtk to give some though on the design proposals, I saw lots
> > > > of potential to the usb-backend work. What you proposes here goes
> > > > in opposite direction of a clear definition of what each
> > > > component of this does.
> > > >
> > > > So, I'd say also in reply to your previous argument around not
> > > > defining an API. We can define an API an still change it before
> > > > the next release, that's ok. It is also ok to deprecate it in the
> > > > next release if we feel we did it wrong. But let's do it in the
> > > > right way, trying to achieve something easy to understand and
> > > > maintain.
> > >
> > > The point is that even we define the API (in old preview version of
> > > cd-sharing it was)
> > > the error that can happen during creation of device can not be propag=
ated up.
> > > The spice-session does not have such ability (if I'm not mistaken).
> > > So it can only issue debug warning. But this is always possible also
> > > without current patch.
> > > usb-device-manager is able to send the error up to the application,
> > > this is a reason why I wanted to use this method.
> > >
> >
> > Why an API like:
> >
> > gboolean
> > spice_usb_device_manager_create_shared_cd(SpiceUsbDeviceManager *manage=
r,
> >                                           const char *share_cd, GError =
**err);
> >
> > cannot work and propagate the error?
>=20
> Tell me if I am mistaken.
> Propagate (for me) means report the error to the application
> where it can be processed, as it is done with device_error.

Yes, let's say, remote-viewer's UI has somewhere "Redirect CD"
which opens a file chooser so you can browse and find that ISO
you want. If, for some reason redirect cd fails, an error should
pop up somewhere. Ok.

> If spice-session-something calls
> spice_usb_device_manager_create_shared_cd and receive error, it
> does not have a way to raise this indication to the viever,
> need to invent it.

Yes..

> So, IMO, even with API it is preferred way to use device_error
> with fake device.  BTW, the remote-viewer ignore the device
> parameter and uses only error->message

=2E. and yes. I understand what you mean but for a second, let's
focus on the documentation of "device-error"

    "The #SpiceUsbDeviceManager::device-error signal is emitted
     whenever an error happens which causes a device to no longer
     be available to the guest."

It was redirect but then, not anymore. Not the case here, thus a
workaround.

So, doing what you propose is easier but gets a bit confusing
with existing code and its purposes. I'd either have a new way to
cover both cases (likely deprecating device-error for instance)
or something specific to this emulation code, e.g:
emulation-error, and yes, add that to all spice clients that are
interested in cd-room.

That's how I see this at the moment.

> > > > > > This is caused by wanting to use an interface (properties)
> > > > > > that does not allow to return an error instead.
> > > > >
> > > > > As any solution, this one has pros and cons. From my personal
> > > > > point of view, it has significant pro (low cost of
> > > > > implementation) and does not have any significant con.
> > > >
> > > > Cheers,
> > > > Victor
> > >

--4rgs6i3fd2qffdvv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl07JusACgkQl9kSPeN6
SE/u8BAAr5NM8cZIKgbBiqaboMyYfCt6vrdSIAEjqzAg6jYkJucR+i6jPxwX92HZ
mguxEeranJkusCGUQGd/6R2XJTGiBT+akujaXja3duVd5Ss/iaORkGX38Ot3kPkj
EaByeeJx06simzTy5QOv3NoWZ+MfiQmIpUN/aygd10l8vdRC3Nia1oAKq3ZCa1/m
/b1HBhhYRVdOKBmk2MKJA7myIOhB/Kgd77sczfH/1H8FnSBAJ2ppTwaJdW1vF0M1
a75hMmCpz27X+TKmICpb3Lg9hSXPHSXIyK8wuchgQU11IuM5XrOIRbsL4zWC8KZU
GaHLN0ztjAqfwMg/Z641vyJNd6Dgz9zKKko1VF2i3lhA+wweZ81zsg7bT1Ocm2im
dgumKkwhpwrElIOc87ihr8zgmFZRxLam9ya8GKpSFdEedZXDwUKcxCNyLuIhfo9E
fNUfsHQJltyP9E4ZFBiI/Qwdg9DADMQ1amUI445qxpu1LuffV39Cxm7wGj+X/HzV
SAHM7ZiNqTnwZU7RLGrIIb4AQFgmTPlqK57zBN3vOeJ0mezSrCi6kjobMjxY4lJn
baB0tjPAbYy6kkCCDrpSa7aYgPTRkvyeTxBS0Sl8nZscH+riWhBL6X5xCAijRFiC
KqBW1iFMtQEPtsq5kAftMNks+GGauZ8MUv05/1V0jJKetJCzUhk=
=1gzz
-----END PGP SIGNATURE-----

--4rgs6i3fd2qffdvv--

--===============1991638556==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1991638556==--
