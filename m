Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4368C78540D
	for <lists+spice-devel@lfdr.de>; Wed, 23 Aug 2023 11:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA4810E400;
	Wed, 23 Aug 2023 09:31:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E6D810E400
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Aug 2023 09:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1692783061;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jHbjyKFtyjgX5Jv58LWAQrOZLPVktXb53gHgFbAwCCA=;
 b=D27I2GL6RfLPPQqk+5JaIcFuYOzCg4DDTLKrfFzIzB5ujuYMdSW4urIuTRUcGaBIl19D7g
 4RKCdNQrU1TlrxBPoza4WsNGrz9gjWwffIeDZvsQNn/qvSYmr9JBKnZIqPetgCJztE7NKu
 eXlXsf+82sU5LGbB7pLWM89oG85yEo0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-2-pv-0ccL9MtKA-x04cYiiWA-1; Wed, 23 Aug 2023 05:29:42 -0400
X-MC-Unique: pv-0ccL9MtKA-x04cYiiWA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA784101A52E;
 Wed, 23 Aug 2023 09:29:41 +0000 (UTC)
Received: from localhost (unknown [10.45.224.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 667A71121315;
 Wed, 23 Aug 2023 09:29:41 +0000 (UTC)
Date: Wed, 23 Aug 2023 11:29:40 +0200
From: Victor Toso <victortoso@redhat.com>
To: Maxim Iacob <iacob_m@yahoo.com>
Message-ID: <hthmylaxtdos5yl3ihrr3qg7ecrwvsnaiqex4ar3ovnyw5qv7v@ynsj3i6d346j>
References: <520800894.1623120.1692694078214.ref@mail.yahoo.com>
 <520800894.1623120.1692694078214@mail.yahoo.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="u6zgafhqkq2tzui2"
Content-Disposition: inline
In-Reply-To: <520800894.1623120.1692694078214@mail.yahoo.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
Subject: Re: [Spice-devel] Oracle Linux 9 support
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


--u6zgafhqkq2tzui2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 22, 2023 at 08:47:58AM +0000, Maxim Iacob wrote:
> Hello,
>=20
> I'm looking to install spice-gtk to Oracle Linux 9.2 distribution, based =
on Red
> Hat Enterprise Linux release 9.2 (Plow).
>=20
> Somehow this is not possible due to error:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> $sudo dnf builddep spice-gtk
>=20
> enabling proxyt-source repository
> enabling slacktechnologies_slack-source repository
> proxyt
> source                                                                   =
                                                                           =
                                                       =20
> 817  B/s | 1.6 kB     00:02   =20
> slacktechnologies_slack                                                  =
                                                                           =
                                                              =20
> 803  B/s | 1.8 kB     00:02   =20
> slacktechnologies_slack-source                                           =
                                                                           =
                                                              =20
> 414  B/s | 951  B     00:02   =20
> no package matched: spice-gtk
> Error: Some packages could not be found.

RHEL 9.2 does not have spice-gtk. You should raise this request
to Oracle Linux 9.2 and see if they want to support it.

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Kindly let me know if there is any possible workaround to
> install it on Oracle Linux 9. I'm looking to access A Proxmox
> virtual machine via Virt-viewer and it looks spice-gtk is
> needed, otherwise I get "Unsupported graphic type 'spice'"
> error.
>=20
> Appreciate any direction to make this work. :)

I'd recommend fetching rpm sources (e.g: from fedora) and doing
the build + installation.

Not much more I can help you with it, sadly.

Ah, using some flatpak with SPICE would be another alternative.

Cheers,
Victor

--u6zgafhqkq2tzui2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmTl0YQACgkQl9kSPeN6
SE/6WA//cvGiceyD+izWt4d7N8va2OhHkJZUHyjsgdlbaGjPHSpB0Tfn8y+Zru4y
J+u6QMS5ZsGBLsLpOqDsJlOLGYGlFAa35C9DHp9Xp+CfmIFzhHU3QRUuGrufxMSD
B1a+3EvPBFJuYTKa5/aKFquvvJ4jrJeH53hAH10doihFO9othyvoo2QXp7S4nUE+
gDReNt0laN8efoRe3pLgYqmm9it3JyqXWHk4Eoil/c2bK6c7qQlmeIi7Al2cSMFy
wwoyZVD0VhkqJ/JRYYw1tXr3gPdFpa7aJrOwWn4l2A1t6PKDLQRiE0Iw7c7iKvyC
h3gWWSUsc2MgQFBBDDAM1lo+QgXmpnqW0hZIFkHhDeVnjibbGzRsKXT57zEH4WSa
QKmk6yeML3K5rqq8lvefEgbtlvutO8cxWlqjlKtMg3sImN4RZwTq+9ewvDr9G+sE
GLGDl2PJDuYksqED1dNpLLjowIheI1UstlyQYnEOqJkVpOjoMCntfMWs/+SnHGxY
4DVLNbNWmbu89sXxaBNGeOZJtepYYKOCBue07dlVeQOdzLONYmOxRijFyhnxnBaX
ulDmj4TmEmimdp8hXm8miirUbg0xKoQ7O7hFkPEKvpOaCdi8pCIqwoOj689LeB6d
rFk10EtJkmtzsJt0bZuXz1Ybn+QLHjIG9ju6WFNI4aA+3RYE3UY=
=mM8S
-----END PGP SIGNATURE-----

--u6zgafhqkq2tzui2--

