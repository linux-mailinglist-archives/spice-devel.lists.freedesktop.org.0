Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F1A233EAD
	for <lists+spice-devel@lfdr.de>; Fri, 31 Jul 2020 07:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B366E9C8;
	Fri, 31 Jul 2020 05:31:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 072B96E9C8
 for <spice-devel@lists.freedesktop.org>; Fri, 31 Jul 2020 05:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596173501;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vJVnkvFsgQ/8gJasUcdbV+ngP/XHOZLuniU7LQ3k0iE=;
 b=FRKtvYZcwQrUjklKvT4AF3veGTULbTH1BQJExjhmibHaLuJU6x2SAMlhPdEcqNIQ0C4HIg
 zEUn1bgGF1WzPOsJ02nXfy6YGP2WmXdVV98ZZxCZBrdBzViEbHBmSOl0aYUoioOA2qJi9x
 I9NV0TrXjLdOOBFvxTet+hZTtytSx+c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-oLOh51UHO4Wc2V7mIocaYw-1; Fri, 31 Jul 2020 01:31:34 -0400
X-MC-Unique: oLOh51UHO4Wc2V7mIocaYw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 573F0100AA21;
 Fri, 31 Jul 2020 05:31:33 +0000 (UTC)
Received: from localhost (ovpn-112-12.ams2.redhat.com [10.36.112.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E27FB87B25;
 Fri, 31 Jul 2020 05:31:32 +0000 (UTC)
Date: Fri, 31 Jul 2020 07:31:31 +0200
From: Victor Toso <victortoso@redhat.com>
To: Koopa Koopa <codingkoopa@gmail.com>
Message-ID: <20200731053131.6gucj2b3fnt6jzg6@wingsuit>
References: <CAM1wO0kUjpzX+G-YjaG7JfhnRAvFJ2g-n6ZQByPBMYRng6jvNA@mail.gmail.com>
 <74120881.36683304.1596096615307.JavaMail.zimbra@redhat.com>
 <CAM1wO0kdFZqRVRW4h9i_G6_Pby2_XVwoNRshZUHE-j33JqZ6vQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM1wO0kdFZqRVRW4h9i_G6_Pby2_XVwoNRshZUHE-j33JqZ6vQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Webdav on Windows XP
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1552141379=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1552141379==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eyzb42estpweo47c"
Content-Disposition: inline

--eyzb42estpweo47c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 30, 2020 at 01:38:54PM -0400, Koopa Koopa wrote:
> On 7/30/20, Frediano Ziglio <fziglio@redhat.com> wrote:
> >>
> >> Hi all,
> >>
> >> I'm trying to setup a Windows XP SP3 virtual machine with SPICE folder
> >> sharing. The latest version, v2.4, fails to install, as the
> >> spice-webdavd service fails to start. Running spice-webdavd.exe
> >> manually yields the error message "The procedure entry point
> >> AcquireSRWLockExclusive could not be located in the dynamic link
> >> library KERNEL32.dll", which seems to be a deficiency in using XP [1].
> >> After some digging, I've determined that the cause of this is that,
> >> when starting the service, spice-webdavd calls g_mutex_lock from Glib
> >> [2], which had XP support removed a couple of years ago [3].
> >>
> >> Version v2.2, which comes from before the Glib change was made,
> >> successfully installs and runs. I have been able to map and somewhat
> >> use a network drive mapped to the share, but it has broken and I can't
> >> seem to get it working again; Windows just says that "The network path
> >> http://localhost:9843 could not be found." Strangely enough, when
> >> going to that address in Mypal, the share directory is displayed
> >> without any issues, and I can browse it.
> >>
> >
> > The purpose of spice-webdavd is to provide the port to be able to use
> > webdav from the guest. If another program is able to use it I would
> > try to understand why Windows cannot.
> >
> > Just to confirm, using netstat in the guest can you see the port (9843)
> > in listening state?
>=20
> Yep, that port is in the listening state.
>=20
> > Is the Windows XP service running?
>=20
> Yes, it is, and I have tried restarting it.
>=20
> In further testing, the share works perfectly fine with the free
> BitKinex client, but I still can't get it to work again as a mapped
> drive in Windows at all. Since it continues to work without any issues
> in the 3rd party programs I have tried, I'm inclined to believe that
> the issue is not at all with spice-webdavd. It seems like either an XP
> bug or misconfiguration of my (clean) installation. In any case, I'm
> exploring other options for host/guest file sharing, as I can't seem
> to resolve this.

Sorry if I missed in case you have done it before, but I think
you have to run the map-drive.bat script

=09https://gitlab.gnome.org/GNOME/phodav/-/blob/master/bin/map-drive.bat

> >> If this configuration is not supported, I totally understand. Part of
> >> why I want to point this out is so that, at the very least, this
> >> incompatibility could be added to the Spice User Manual [4]. Thanks!
> >>
> >
> > I would avoid it, Microsoft stopped supporting XP more than 6 years
> > ago. Windows XP is abandonware.
>=20
> Yeah, I have a Windows 10 VM that I use for most things, it's just
> that I have a program which requires Windows XP in order to function.

:)

--eyzb42estpweo47c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl8jrKwACgkQl9kSPeN6
SE+YlxAAiXzhLoCgjep7lit4D/WkHhbUTCCtUaFgWgk7QwV07OuKAZnjmg+w0ObV
ilXWJulnWkVIYCY28rvugFeX7mS3D1cfxCtZ3tGPr5KrVahxA4X8c3HPNitSL209
TNYj2aGFqBHi2XDurvARXvNsxn8UpjZ7J1pcHib1qM748hXW1ZoNYoHBy6plY5GJ
4DK+pNl4kN3CHjPPZwDcC4fBvA/2MPMv2t8ON2OZRnDwOLQQSmGDskQkAltAhidK
0rPxMXbgru8jtN0yTLOAR28TSbLjRfI+KePHv+lqeC3el3nsZRJBePsM9AbkhFVM
Iu+kSwKJykNPb4+8cpuREqH5scWQm9sr+1milZwAeK86CHWtYJ6f7L+jXFWJyVOz
lQuUJBcOKQPy0F688kXZQX7s3VEoEyFp9d1mSuf8y51AU/qMCo8gSBDFXUGXyDnW
Y3a8zfHSk+E4sVJ7XvgrGc4pDQHH+RzUV+7MPSUQ1NxFExqXIQESoyeFolIVLZtH
CFJSi+mqMFnEVCFkg0t6TGkiVLmHUwYei2iDCi+mYE4+x8XAi0cLEikija98DST9
Skg01RG7pNRXyF4zkzkKQb0SPQlhL2Xi59MsDOI1ZXgSpciqjF8ay2Krw4Qo0Q2n
nicgzRuxj3n/95xz7SoisNBHdiaSf30pnDuxRhMPDiHu/HpDyVI=
=GmRE
-----END PGP SIGNATURE-----

--eyzb42estpweo47c--


--===============1552141379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1552141379==--

