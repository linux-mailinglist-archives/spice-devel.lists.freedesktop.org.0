Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E69043C860
	for <lists+spice-devel@lfdr.de>; Wed, 27 Oct 2021 13:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 770B46E883;
	Wed, 27 Oct 2021 11:16:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CADF16E883
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Oct 2021 11:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635333362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nJHpwhDeAEq4dvUiDDMEAdoTUNKWDSMJDj0HZ5kC9cM=;
 b=dWtojThnol1ZJ+7k5KAzfUN8kdoA4xZYvFY4DSmOuFEgOmr6QVTQtZ/44w8/NR2GVyEbhm
 UA2WL09qFC3eFDyAiE4V86Cgw1zeumI6qT+W6m3kBkcbE9L07uuH1DgmgJJo/FQDLH1GSG
 BnRhzEerLUW8uTPe7md1CLkBkuVXCpE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-45-QqQ4a1A7PCmS9ksiLqi_Xw-1; Wed, 27 Oct 2021 07:14:38 -0400
X-MC-Unique: QqQ4a1A7PCmS9ksiLqi_Xw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 06C9C9126B;
 Wed, 27 Oct 2021 11:14:37 +0000 (UTC)
Received: from localhost (unknown [10.40.193.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8F59D100E12D;
 Wed, 27 Oct 2021 11:14:36 +0000 (UTC)
Date: Wed, 27 Oct 2021 13:14:35 +0200
From: Victor Toso <victortoso@redhat.com>
To: John Paul Morrison <jmorrison@bogomips.com>
Cc: spice-devel@lists.freedesktop.org
Message-ID: <20211027111435.a2nyooujxu7pczci@tapioca>
References: <CAO-kYtH=j7gCQVn0P5-UtZog93v1cxvM+dNW43Yow9Ms51BeBw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO-kYtH=j7gCQVn0P5-UtZog93v1cxvM+dNW43Yow9Ms51BeBw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="6bokarkgn5cevw5w"
Content-Disposition: inline
Subject: Re: [Spice-devel] phodav build/run on OSX
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--6bokarkgn5cevw5w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 26, 2021 at 02:45:23PM -0700, John Paul Morrison wrote:
> Hi
>=20
> This change is for building phodav on OSX/Darwin
>=20
> I am able to build and run spice-webdavd on Catalina/Xcode using brew for
> meson, glib etc.
>=20
> - meson defaults to clang and it builds with a warning. Clang
> spice-webdav runs but there are more warnings with G_MESSAGES_DEBUG=3Dall=
.
> After a few file/folder operations my Spice client  (Fedora 34,
> remote-viewer 9.0) crashed
>=20
> - Using CC=3Dgcc-11 (homebrew) for meson builds without warnings.
> gcc spice-webdav logs fewer warnings at runtime and also works better.  I
> can copy files, extract archives etc.  It seems more robust than the clan=
g
> build but I got a timeout trying to clone a repository into the webdav
> folder.
>=20
> John Paul
>=20
>=20
> https://gitlab.gnome.org/jpmorrison/phodav/-/commit/ae9ac98c1b3db26070111=
661aba02594c62d2cef

Thanks for the updates John!

Cheers,

--6bokarkgn5cevw5w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmF5NJsACgkQl9kSPeN6
SE/CKA/9FIxKJ7hL8mSwN6iJJlKhNAtxdQRbQadLfEfrq4eopAiZTNKDn7Nweis1
6bwPkhZlJyJnS0y/eriUypxlDhYsECRJHHDLZqgwfJn887lkA5QlEpxUb4P7JxzG
6lU1tXlgNlMTYVmPGEM5vHg0ULGn8ov6DjPgoRpCeP1HyTiTgpzr/FKSYZTXSPKa
QHfdDm7+gfzWqh3WPypundiivjGoqJcPJZ9n021W3CyxWl3OnLrtjxhSkxxBjv3X
1yTH09TpWP2aS3s8F/JCTCM8qPf7H+d0bEllAMIMctbYUTJUUEZM8JdCHkHIO2Vf
HW2fEnzVFl0IOdJKe1Mnz3EpVx8+IBURFBk5Qdf1KgJeg2LYfCuuQNo1qAqqjnKo
hTRHY7fyRx7Ha5kLVGL9ZuvYwlNwiDEL9TMo6kkrjC1vByzhl+apRlAyLeEcWZMm
cHZSQ2Z9LfhtyAl18FBfBZVHoPqnmYJ6H8zyDHM45bPjBP9++UnRfzOgtX8loxn+
zKeCqEuPpkHerg+xWW2urmU4Gal4J5t5HAhW3oKXorBW0Z+wdGaLr3y0uVJm9U4I
iYCRyCQaIebAvhUOszSqrsfvh3UdFg2ipWMB15IXw865+DxP5XiiQVdjw6Xxph55
wuNUeRc2/Xo5qRrKiJSkYisq/f1E0kUoFB2n+oixxcDDVaZnRIg=
=mGWV
-----END PGP SIGNATURE-----

--6bokarkgn5cevw5w--

