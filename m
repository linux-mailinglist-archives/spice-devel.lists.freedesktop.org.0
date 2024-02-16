Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A722C857BDF
	for <lists+spice-devel@lfdr.de>; Fri, 16 Feb 2024 12:40:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D99710E616;
	Fri, 16 Feb 2024 11:40:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="M7WmklzU";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E375010E616
 for <spice-devel@lists.freedesktop.org>; Fri, 16 Feb 2024 11:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1708083613;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KcJY7SNe0GdYbLO6xaoMgFDA1wHmE5saGd8VhNrR04Q=;
 b=M7WmklzUCrxSeCt/XIRP4dZyMoun8pExGBiQKrkFH1CiiFD2gdUfwYpxwF3Pu2jDBfX/ZV
 Lvat+Sl/F55tr4Yl09n0pMT7iUq+0DaFd5Sg1HnQnIR6DZDcS15qTLnTUiyWk0jytXKaAn
 Un4KQiGBESA9rP9lzBNpxspFkdzsM+0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-486-0cI_jiquN1yhHO4HZ_Jg5w-1; Fri, 16 Feb 2024 06:40:11 -0500
X-MC-Unique: 0cI_jiquN1yhHO4HZ_Jg5w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6AFB1101A52A;
 Fri, 16 Feb 2024 11:40:10 +0000 (UTC)
Received: from localhost (unknown [10.45.224.199])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AAF951121337;
 Fri, 16 Feb 2024 11:40:09 +0000 (UTC)
Date: Fri, 16 Feb 2024 12:40:08 +0100
From: Victor Toso <victortoso@redhat.com>
To: Jason Chen <jastsai@outlook.com>
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Subject: Re: Mouse Back and Forward button
Message-ID: <mrt5axug6lvnqxinursmztitpgo7yizhue6xlbi4tw24dab3az@77aepu5i7bol>
References: <CY8PR20MB5428D720ECDF97FB942AFE33AB462@CY8PR20MB5428.namprd20.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="db7p4ahicvw6v7x5"
Content-Disposition: inline
In-Reply-To: <CY8PR20MB5428D720ECDF97FB942AFE33AB462@CY8PR20MB5428.namprd20.prod.outlook.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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


--db7p4ahicvw6v7x5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 06, 2024 at 08:16:44PM +0000, Jason Chen wrote:
> Hi Devs,
>=20
> Thank you very much for making Spice.  It is 100% faster than any other
> software I have used.
>=20
> The only problem I have with the software is my mouse.  My back/forward b=
utton
> on my mouse (Logitech G502) is registered as a scroll input.  My scroll w=
eeks
> is working as intended.  Windows RDP works flawlessly in this respect.
>=20
> Is there something I'm missing?  I haven't been able to figure it out and=
 this
> great affects the way I navigate.
>=20
> Can you please help?  Thank you very much.

Someone worked on extra mouse buttons in spice-protocol v0.14.3
https://gitlab.freedesktop.org/spice/spice-protocol/-/merge_requests/22

This seems to be implemented in spice-gtk v0.40 and Linux
spice-vdagent 0.22.0. It doesn't seem to be implemented in
Windows agent.

Not much we can help atm. If you have the right components with
the right versions, it should work otherwise it is a bug.

Cheers,
Victor

--db7p4ahicvw6v7x5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmXPSZcACgkQl9kSPeN6
SE+kIBAAk+/GRgIIE3I9rPlVIqh4lzzHoxR4qqoxI2yjUwIieGALzY2ddceeRDm8
osi5OHGFewYZqjQX4xMfnwmrv4NWXb1CUZ0YC4PMgrU6mrvc6UC2woplm6QM4cnS
uABk/JozwWNn4HKx0/RkFEicBXbYBNJH8MoPh5qHaNhnhQANYA0vjUHo25JuW22K
ufy97zeTZBBHHUVVRDNEBXQrM8juLdchvseFEjq4uIdHtV9jxiB2Z5O9tlc0Y53N
WyhcDe8edJYbflR2SvwBeXVD41VxvCNSESc2mDTMfwaDa/WowBMX9RYHP+FUe35v
3unfWzTGVAnPmXX7yO0zk3De+CKCgpScmwCeGTFL9n4UtgL11qLSTnmwKEmmqwbZ
Q4T1b7//nn76WmESjPBBs9+b4Gtdv3YQalp71VzHxAgYTTwAMLu8NzrGUZ1PVA01
daevp76UieqvEZm9r9W4a38s4DPPyepXbTtVHi9kgzwVayagbutURiCAN1qON37F
knWUcYs6qw3tJBHRGZ32bvbJFXAAzwn2RKO31FKrpVkAuQWpFq134ZCPEBz9tfLL
yxwibVzAH1P9PQjJynmYmLhXFuIdBAXbnn4JOBMg25bwxG2A9YI6vSij+ffaDSOU
5VqJbhdNVI0vQRzhDgqLL6qfczg21dnV+EruIgrFfoSOk/k35jA=
=Ajje
-----END PGP SIGNATURE-----

--db7p4ahicvw6v7x5--

