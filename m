Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071E1345C81
	for <lists+spice-devel@lfdr.de>; Tue, 23 Mar 2021 12:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FAAE6E8A4;
	Tue, 23 Mar 2021 11:12:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A826E8A4
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Mar 2021 11:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616497919;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7W2ZRlYAQoIXLtSatHcmhsK11LkQviOxkEwp0PRsEl0=;
 b=RcrduxBCZq8dzRXtpKcURY54h2lp5lksAsg63U5SSDHK18EhysQJQTPYxQwJkDrb2k7OCM
 n3mzjzWGBVX6QhCnFt978O+VkwKsViIQaY0N7U12KVc3ONn05m962uDfV37A1iTVgJMOgK
 xrZ505G2jAl5b+cy218TC60wDLwQPYc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-545-ZXb45nYPM1qNnB22wCjltw-1; Tue, 23 Mar 2021 07:11:55 -0400
X-MC-Unique: ZXb45nYPM1qNnB22wCjltw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA9551084D6B;
 Tue, 23 Mar 2021 11:11:53 +0000 (UTC)
Received: from localhost (unknown [10.40.195.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9FE960BE5;
 Tue, 23 Mar 2021 11:11:50 +0000 (UTC)
Date: Tue, 23 Mar 2021 12:11:49 +0100
From: Victor Toso <victortoso@redhat.com>
To: "Dr. Jennifer Nussbaum" <bg271828@yahoo.com>
Message-ID: <20210323111149.d64uowl3pmbfxhmo@wingsuit>
References: <1460907569.2869086.1616420768731.ref@mail.yahoo.com>
 <1460907569.2869086.1616420768731@mail.yahoo.com>
 <20210322145139.kuigwqkyjdkby35r@wingsuit>
 <2044021456.514716.1616426838206@mail.yahoo.com>
 <b734810e-8bba-7afd-b104-5b48a06659f7@redhat.com>
 <749011737.954954.1616435403564@mail.yahoo.com>
 <CAD5yKqwRzPD5Pp4N1W9V1=weDFLy6mdcg5JoBFARh9o+VxOMUQ@mail.gmail.com>
 <965619202.3203082.1616496608587@mail.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <965619202.3203082.1616496608587@mail.yahoo.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Multiple monitors at 4K, in virt-manager?
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1704127401=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1704127401==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vkjvfuk4g5eccqrh"
Content-Disposition: inline

--vkjvfuk4g5eccqrh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 23, 2021 at 10:50:08AM +0000, Dr. Jennifer Nussbaum wrote:
>  On Tuesday, March 23, 2021, 04:04:27 AM EDT, Julien Rope <jrope@redhat.c=
om> wrote:
> =20
> =20
>  > I still am offered only 2952 x 1781 in the guest. With those
>  > settings except 'heads=3D"2"', it is exactly>=A0> the same--that
>  > resolution, and only one display, "Virtual-0".>=A0>=A0>=A0> As
>  > mentioned in my original message, when I use the Virtio
>  > instead of the QXL device, I do get 4K,>=A0> though again
>  > choosing 'heads=3D"2"' doesn't give me an additional display
>  > in the guest. (Curiously>=A0> the one display I get is
>  > "Virtual-1" rather than "Virtual-0".) With this device
>  > there's no option for>=A0> changing the video memory in the
>  > XML.>=A0
>  >=A0
> >=A0The numbering (Virtual-0 vs Virtual-1) is expected - this is
> >not an issue.>=A0 =A0Do you actually get the choice of
> >additional=A0displays in virt-viewer (not in the guest) ?>=A0Under
> >the top menu "View -> Displays" you should have a list of
> >available displays. Do you see them ? Are they enabled or
> >grayed out ?

> Ah, that is some kind of progress!
> This is not visible in the integrated viewer in virt-manager,
> but when I launch virt-viewer on itsown, yes, I do get the
> option of two displays.

Although they might share some code, they are different
applications. Virt manager, AFAIK, never supported multi-monitor


> And enabling them both does allow me to launcha second display.
> I cannot then launch the display settings in the guest,
> however; it segfaults right away. I'll look into=A0that.

The sefault happens ins virt-viewer? You can run with
--spice-debug to know what's going on and a backtrace and help
too.

> But xrandr does report two displays; the second one is=A02135 x
> 1647, though. Not clear why Istill don't get a 4K option with
> QXL.

The whole multi-monitor + QXL works from the guest kernel
perspective as if another monitor is being plugged in (by QEMU) ~
so, what are you running in your Guest? The kernel version +
Desktop enviroment

> If I try this with the virtio device (instead of QXL) with two
> heads, it's similar: a separate virt-viewer=A0instance allows=A0me
> to launch two displays; in this case xrandr reports 4K
> displays. But as before,=A0the display settings manager segfaults
> right away.  Exploring further.  Jen

Ah, it is the guest's display settings that segfaults. Quite odd!

Cheers,
Victor

--vkjvfuk4g5eccqrh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmBZzPUACgkQl9kSPeN6
SE+bZw/+OB0uwfmzmzmogfgyPGisMxcqtmh5nV9YU5oXPKk9SNM1RH2lDroaE+kd
fiDHw3+jJ7I8J5iebVshHDivReiZ7qfMgR676CEgh/Gho+OAWJZbvhcIO9gMzifY
9BM6VZN2C1ZsWwq/6WyNPo6BhuYsznK7in3VQzCAbGBbihI3yq4NCn6UE22IVNF8
LQioB5EEjSjTO5BT7lv9Usfv8qrP55TFJcJk1lIjQ0Fxf/po1o920bPUIj+COeo3
wrugnY6LYOkhJ9ZlM4m2Tex7DuVlnrMb93sisZ7KQQuB2Q9j+ag6jSkhcEWw6Uvk
JZyACOw0EJggZfeMEG/TzzGLF4rOnZRWIgSCpvDOO/IokWf0BXJNJplTfXTT1blt
/ZVKWXFlF9c7EJzA7zp6pph1f6xMz/BUwO8+ME+pcRBU5eSgQiN8gFvq/2eZtdrn
3HCVoI7tlfj9HqgiMrM56tIXsRb57lU9CZDAynzBIn7hxoK5PlhXTb+yRFi6LYRF
BYWEBugQiXGANEWstTw+50E4tLFCtN3I2jFbyjPW3F29pO1x4+q/mlx8dYF51QTM
6ORotAATmpIv3iaMrmAPuZ0x0mpocjoJX3gKFC35OnJPgcMcZILAdoIlDHIdjuHZ
ScLGQLn5qSaoUUnuVF4CWSTHjUhYmjZVFyr3vA+M/euYCCnBnhk=
=7Y3H
-----END PGP SIGNATURE-----

--vkjvfuk4g5eccqrh--


--===============1704127401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1704127401==--

