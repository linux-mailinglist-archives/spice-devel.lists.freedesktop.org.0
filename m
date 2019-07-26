Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6887975F7D
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 09:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4336E88F;
	Fri, 26 Jul 2019 07:09:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1336E88D
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 07:09:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 53F5581F07;
 Fri, 26 Jul 2019 07:09:34 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EFAB019C68;
 Fri, 26 Jul 2019 07:09:33 +0000 (UTC)
Date: Fri, 26 Jul 2019 09:09:33 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190726070933.wrer35srddo7z2cg@wingsuit>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-3-yuri.benditovich@daynix.com>
 <1528197574.2953680.1564045298943.JavaMail.zimbra@redhat.com>
 <CAOEp5OdB0hg4u=+Nk+2T8P=cdjdQ1n0m0GwkuhPxgLxk6rWiQg@mail.gmail.com>
 <1392106279.2977164.1564054045587.JavaMail.zimbra@redhat.com>
 <615004152.3040546.1564076765218.JavaMail.zimbra@redhat.com>
 <CAOEp5Od0O_GGhnF9q_Ne1rt0-uJUX4LQyFM9Xap+6POqE8=f_Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5Od0O_GGhnF9q_Ne1rt0-uJUX4LQyFM9Xap+6POqE8=f_Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 26 Jul 2019 07:09:34 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============1386955162=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1386955162==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kmgeiptbtm55r6mr"
Content-Disposition: inline


--kmgeiptbtm55r6mr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jul 26, 2019 at 08:08:07AM +0300, Yuri Benditovich wrote:
> On Thu, Jul 25, 2019 at 8:46 PM Frediano Ziglio <fziglio@redhat.com> wrot=
e:
> > > > > > @@ -1440,6 +1446,10 @@ gchar
> > > > > > *spice_usb_device_get_description(SpiceUsbDevice
> > > > > > *device, const gchar *for
> > > > > >
> > > > > >      g_return_val_if_fail(device !=3D NULL, NULL);
> > > > > >
> > > > > > +    if (!device->bdev) {
> > > > > > +        return g_strdup(_("USB redirection"));
> > > > > > +    }
> > > > > > +
> > > > > >      bus     =3D spice_usb_device_get_busnum(device);
> > > > > >      address =3D spice_usb_device_get_devaddr(device);
> > > > > >      vid     =3D spice_usb_device_get_vid(device);
> > > > >
> >
> > Ok, now I had understand this patch. This is removing the
> > assumption that bdev is never NULL.
> > Only to support calling spice_usb_device_manager_device_error
> > with a NULL device.
> > I would say nack to this patch and find another solution.
> > Maybe adding a "device_creation_error" signal with "error"
> > but no device.
>=20
> IMO, creating special entity for each case that is little
> different from existing ones is disrespect to Occam's principle
> (and several similar ones).

Heh, nice try. The difference here, IMO, would be that you have a
clear objective: give an error when device creation fails. You
want to do it by emit an error signal in a fake, empty device
which is quite the workaround and I wouldn't call it a simpler
alternative.

> In context of 'device error signal' the 'device' is something
> that can referenced/dereferenced and which name can be
> retrieved.
> > This is not a device error, it's a device manager error.
>=20
> We can view device manager as kind of device, then there is conflict.

That upsets me a little. When I started learning the usb stack in
spice-gtk to give some though on the design proposals, I saw lots
of potential to the usb-backend work. What you proposes here goes
in opposite direction of a clear definition of what each
component of this does.

So, I'd say also in reply to your previous argument around not
defining an API. We can define an API an still change it before
the next release, that's ok. It is also ok to deprecate it in the
next release if we feel we did it wrong. But let's do it in the
right way, trying to achieve something easy to understand and
maintain.

>=20
> > This is caused by wanting to use an interface (properties)
> > that does not allow to return an error instead.
>=20
> As any solution, this one has pros and cons. From my personal
> point of view, it has significant pro (low cost of
> implementation) and does not have any significant con.

Cheers,
Victor

--kmgeiptbtm55r6mr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl06py0ACgkQl9kSPeN6
SE+GkRAAszo6Qb9ZKKQ4V+qvsDdr88m4BifpS37Or8cDNe43AdW9z1f3v8SJpq+g
9zGRyhgy48D4ZHpfwlRVvIdnTZxbEw6MSB4TiH6Iia7SFQ1CYUhgWhitSUPvkZhl
7raJgKnqMMJ6IZlY8703vekrYlQRu+d7qTq0WXAOcQ1paCHf0xy6TMAlkmeK48Vv
aETyE8MukdBw4UzZeYazzZnyxRXasiGuiDdIztUXsEgHD6Ob3XoPi2xazlZ8WV/i
L+dHoj8ymam6XGox6bx427NtB5Oc1bEyJ8ddISu3s7qMbSeCz8IFqfUn4ON2KeR3
KUC4EAWrQSWG+zTH831smHFsayiik3i1l1AKMyY590DkXAuD5oBYLQUnccvVU9D4
sxdW8O7FeY4POewtFbk4/rgycUHieiQ+drF7g8e/Yt2+e28MBapjPVL/ey4j/Kxu
hlRZAFnvSFQkucFwZafmqvHJBBnMlQzyhyC2GIo50NjHvEUzv1sew+YOA2iVbB3d
FHzLMLSE1fGE68XWJQmSaGmqLlBVz/ObLcDcMsIVvVNvpp9jr4PBE2+0le23zo9s
FDcysleommjNsTr+QZog+thpbvYIigiUAcnAiydFZ23cbxTq/Q5I9uCnFLtZbjA0
6iUFAthB/Oc9+T/fBpKYGkJbyxCvWk6qsZppQWhYu8NtCurVgn0=
=SzTH
-----END PGP SIGNATURE-----

--kmgeiptbtm55r6mr--

--===============1386955162==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1386955162==--
