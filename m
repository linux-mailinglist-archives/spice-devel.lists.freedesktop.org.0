Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A815711E7
	for <lists+spice-devel@lfdr.de>; Tue, 12 Jul 2022 07:43:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0154710FE48;
	Tue, 12 Jul 2022 05:43:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E00E10FF10
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Jul 2022 05:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1657604578;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UAUsOEfuw9O1mWeEieRBZt0cuwwDOxtcG2wJrx5IFSE=;
 b=HisgiCOuOIRhbF55k0MR02/xb2ssyFCtJ6sKrteODqPoimJFuQ9BHnM6XT/MtT7NlkQEIY
 euUXyg1gKhtdM09MuSUtYnhuRdBADPesp+dYEbFgp/Ck4CvyACUofwEFCS9aKw3Q+/rbVf
 r8vJH1rcPbYuy1niHTvINTfnBGkmvzM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-154-3cC5ET8CMG-nTeu3obGODA-1; Tue, 12 Jul 2022 01:42:53 -0400
X-MC-Unique: 3cC5ET8CMG-nTeu3obGODA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A59C1C1BD24;
 Tue, 12 Jul 2022 05:42:53 +0000 (UTC)
Received: from localhost (unknown [10.40.192.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E404E18EB7;
 Tue, 12 Jul 2022 05:42:52 +0000 (UTC)
Date: Tue, 12 Jul 2022 07:42:51 +0200
From: Victor Toso <victortoso@redhat.com>
To: "yuyang247@163.com" <yuyang247@163.com>
Message-ID: <20220712054251.e7qvryjreebvsoue@tapioca>
References: <2022070517070230029125@163.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="wryx5hr24dx73c4j"
Content-Disposition: inline
In-Reply-To: <2022070517070230029125@163.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Subject: Re: [Spice-devel] Issue: About how to config the resolution of
 monitor in spice-server
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--wryx5hr24dx73c4j
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 05, 2022 at 05:07:03PM +0800, yuyang247@163.com wrote:
>=20
> HI,
>=20
> I am a user of spice,  I have a issue  to request your help.
> that,  when debuging spice-server, I want to dynamic config the resolutio=
n of monitor=E3=80=82
> I debug it in  fuction  reds_on_main_agent_monitors_config  of
> red.c,   and   operated  some  sentence as
> monitors_config->monitors[0].height =3D 600; but this
> configuration  was  changed  at the next time.=20
> =20
> so ,which function  in  spice-server  could help to  solve this
> problem , or how  operating the fuction in spice-server , I
> cloud  adjust the  resolution of monitor at will.
>=20
> thank you, very much!=20

Why do you want to hard code this on host side? Wouldn't it be
fine if you set the Display size from the Guest and disabling
SPICE Client's auto-resizing?

What usually happens is that auto-resizing is enabled
("resize-guest" property of spice-gtk's spice-widget) and every
time client's widget changes its size, it sends the new monitor
message with new display size/state. Disabling this (which is the
default for spice-gtk), should be enough.

Cheers,
Victor

--wryx5hr24dx73c4j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmLNCdsACgkQl9kSPeN6
SE8mLQ//bYd32nyn4+eVubaPUXm7pwyuNns25V4n+CaPyIi/EC6A4Iz61KtRGuI3
H4Bo6/5lpkdcGw6R43Cbz3QeIZd6BJ/hZHjy5KyyWLDknfGrSw7Uzp37dv55Hx42
7LNmijtlhxJEG6L1o0G5GQP98NzTUBIBnYa5dWcWijdOItUSZzqxBY5cFR9cihD7
fR0qet0nry4/Og03u+yA5cDx5mMSt/5syLlwe7y3AtfIRPYILG4H/360XBtoiCEF
OdpQMIsYmlXP6Lh6cDsBxdvaPKgl/lq3aU/RrDcfRxia8iIRK+AcrA+ZKjH/nfu/
FPYzdJ5Rs0slE1zuSXtFH5rcWKDJY90tUp9IYWa/rDTXRIXloX6Egs57lYp8MtLk
loomWs7SePPqE7Iu/UrMrMojlfTjZ5afBYfneS+Yi3jPNFRD3MvLzPBKB9TuLbcX
/W2E2q9RNFyo8Rtj/UCcbVLK6mbpVC0BR4C8DSgq/7h5lVYHLtEjX208MEYNgVRp
Gkfd3eCoArgXhvFJjRfe2g7XNe52QaxJVKQ453zYC1SvI1nvwZlAQln+ZupOC6gZ
SkcuWHtaekVaYE6bEv9J3NldiVPqESOUEB6hb6mI8IVsCyDfhQSPfuERty1C6K47
aFtuG/xIF65r0yCgWPjiIaSyqelYQGl8aL4+ViUyg1KHoVmUYxM=
=uI1Q
-----END PGP SIGNATURE-----

--wryx5hr24dx73c4j--

