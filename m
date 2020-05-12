Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B91461D0041
	for <lists+spice-devel@lfdr.de>; Tue, 12 May 2020 23:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECB276E99E;
	Tue, 12 May 2020 21:11:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C906E99E
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 21:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589317906;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hqn3HUeqE6xh/nEmyj60yoF+NPpqzYR9/jsvSIWc3N8=;
 b=iY6J3TyHtvPrzcbpe65mcK8Vk8e+6omw1k21s7bFqaDa1hF7lrEmfSdF0tTSX6V4eQDmXM
 6Tz20yKhXanlSXBwXMS1FQveeryQT3o42G4vWuDbzq5SePnjTc9tvOK7tdDOE1nYI/NERy
 JpU97nx2GIW7FHcgOg+TWgQ70TPwhe0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-2kRuyDoLOFK5Xb-9mFkL5Q-1; Tue, 12 May 2020 17:11:44 -0400
X-MC-Unique: 2kRuyDoLOFK5Xb-9mFkL5Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6BCF2107ACF2;
 Tue, 12 May 2020 21:11:43 +0000 (UTC)
Received: from localhost (ovpn-112-136.ams2.redhat.com [10.36.112.136])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 01A2B6E6E7;
 Tue, 12 May 2020 21:11:42 +0000 (UTC)
Date: Tue, 12 May 2020 23:11:41 +0200
From: Victor Toso <victortoso@redhat.com>
To: Francesco Giudici <fgiudici@redhat.com>
Message-ID: <20200512211141.gjewx74ruurghvot@wingsuit>
References: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
 <20200512092427.GI1191162@redhat.com>
 <80cd33e2-94e1-df9a-65ea-ac84d07b18d1@redhat.com>
 <CAJ+F1C+pJ3irit25KgUrppZSiRHCaL7Lt+iqaPYaFmM16PavnQ@mail.gmail.com>
 <aeadf3f5-b104-4ebf-e2e9-90aa5d320d5f@redhat.com>
MIME-Version: 1.0
In-Reply-To: <aeadf3f5-b104-4ebf-e2e9-90aa5d320d5f@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] About decisions and reviews
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1831704456=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1831704456==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o6xxxa5kx3umefoe"
Content-Disposition: inline

--o6xxxa5kx3umefoe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, May 12, 2020 at 10:08:46PM +0200, Francesco Giudici wrote:
> So, let's move forward... Frediano merged it, this is done.
> What would you propose to do now? Let's move the discussion on
> what to do now :-)

I agree that this is the best course of action.

My suggestion was to ping people that used to be involved in
Spice and are proficient in C++ and possibly would enjoy some
wine and/or chocolates as good incentive to make time to
review/test it (before the merge). So, options that come to mind
now:

1) Revert, wait review, reviewed, (merging again or not)
2) Revert, wait review, never reviewed, (cyber dust or a fork)
3) Revert and fork it.

I have a quite heavy trust in Frediano so my expectation of a
fork is that it would become quite hard to GObject server to stay
in parity with spice-cpp without new contributors.

Cheers,
Victor

--o6xxxa5kx3umefoe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl67EQ0ACgkQl9kSPeN6
SE9jzQ/+IJR9HVlUXHnk4F9zOP22ffg+F/2rXpmDgnDRerIjnGqyVLbIkNaKwdpz
wAfoMnf2J2PSV4PY0u9R1R+dDIWT/Le3omxpj208U9XJuSKjgtdREgOa7fAEs6Iy
cBy8kT74BhDQqExBR7/RaDaFNwUx7qgMcTBmf2TG0DQd1cCF5sm7QwqJmeXPXOv3
dQ3iyTWyGCtBaTp8hforqhK7EEdd1DGfsPLwamjSmyzeS0BnB7QIE6fq76Fv4CwK
iQFjHkZRYm9WlGsusBEJwUN4z/PrTYZ2MTuclL9aYL/cu+Xs8CPj/iXPSwCR5FIx
yJvztFcaIhTEaNGEMmm1JCA1LoKuKinRcuIvrlYQgDTI6HKsxx3YyD5XVFpBUf1E
NFirGCuJMvbyu0/F/kExlnWyai+AhVC+XlaHTGUMU54faXqs1S98NyXoPystaotv
LIo8kkDIVq8K550VRgsretiPkyfGqeYo5lldlYP3Vq9lAaZUTKHp8p+TWWB1ceHi
nyVq1TRWrsCYVHRxwYUKrxLBE3NRXYZsQxtjDZxp4NKkGRJdMpg8AiA/eP6P03FH
YKyGd7lvXBMJrDxeZGSC6tbSEGJ0xRWXkECI8HGrAEGlzrHZnMGnH6L4pJE91jQX
tgpzeOLwCaypO9u6YKQehqUh/8oW62w78clLFA6kC/jLfdJOTzY=
=IxbF
-----END PGP SIGNATURE-----

--o6xxxa5kx3umefoe--


--===============1831704456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1831704456==--

