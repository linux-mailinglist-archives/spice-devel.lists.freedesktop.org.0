Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2E0945B23
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2024 11:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B873B10E02E;
	Fri,  2 Aug 2024 09:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="cI19aBy2";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 498CD10E02E
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2024 09:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1722591429;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HjEaAVHZQfA0N8wpPjJFMtklZDg1n6rRupcIFVyzXUY=;
 b=cI19aBy2o+X8gipwJ1yefjBq4i9ytei8F05dqZTV9E3lzlbKR4Gp3bSJPm+pvBysDFe7Kx
 ukbp0v7Ywk+rIEQnd8Ys8dTMN7s3PsJ8ZPWNKC+qwwIylQbuaJjHSP6zKCB/L1RNQmx5lp
 mN4pSahgpk45xzDMJ8TceDHi6NZzyI8=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-536-iBOsclbJOY6fsoHgPmZ1_Q-1; Fri,
 02 Aug 2024 05:37:06 -0400
X-MC-Unique: iBOsclbJOY6fsoHgPmZ1_Q-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 468631955F0D; Fri,  2 Aug 2024 09:37:05 +0000 (UTC)
Received: from localhost (unknown [10.45.225.117])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 2E839300018D; Fri,  2 Aug 2024 09:37:03 +0000 (UTC)
Date: Fri, 2 Aug 2024 11:37:02 +0200
From: Victor Toso <victortoso@redhat.com>
To: David Counter <davidjcounter@gmail.com>
Cc: spice-devel@lists.freedesktop.org
Subject: Re: Question regarding suitability of Spice for my workplace
Message-ID: <vowcjbkdvxtrtz7sz5b2r2iyfndiutv7neff2zxwly4kcmtxqr@72r4tbxvsict>
References: <CAAkeHDZcCEOUdJpijZ9HmZFGtDSsGFumUUhLqkzKi2PBTqvKBA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="pjs7eva7gyx5hotn"
Content-Disposition: inline
In-Reply-To: <CAAkeHDZcCEOUdJpijZ9HmZFGtDSsGFumUUhLqkzKi2PBTqvKBA@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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


--pjs7eva7gyx5hotn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 19, 2024 at 03:03:56PM GMT, David Counter wrote:
> Good Afternoon
>=20
> Quick question - is it possible to stream video from two separate sources=
 to
> two instances of the Spice client program on the desktop of a thin client=
? I'm
> looking to display Windows and Linux concurrently on two monitors attache=
d to
> my Wyse 5070.

Yes, just by running two spice clients.

>=20
> Thanks in advance,
>=20
> David Counter
>=20
> Systems Support Technician | Union County Emergency Services=A0
>=20
> C: (941) 953-6282
> E: davidjcounter@gmail.com

--pjs7eva7gyx5hotn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmasqL4ACgkQl9kSPeN6
SE99Qg/9GhsXJodMDec/LDni7Q60yIdtmGvyz8PZ+ZyALIT+pemvYEUJgwEHwUQx
Tpe2quIkGreSnCP+OaqMqOcpmNtSV6M4RrGyfGuBj2mWF8DDQHNBMMEG4GadaSeU
Klbt24lSM6M+OAESzJjVluZIfYnBA7Y6grKn09BJNI1lqo7EmAFTmXE6JXdACral
RmIF7t6lH5KfRqcaF1fWoU15PQKJhaXV0ZTSBzRIS9FysecJqJ9RW+89T8twyek6
QUwtv6kGyhLR2vxmaGWUaKIKXKexDcfU6I5GTbODSYCtWjkXW+k5PHQ3jys4/DHv
Raemm15+agwnhsXX2TVRZ093yn1CfX5ptyzzyt8RO/ZE8HTX+8wXPt1F3L1OhorQ
5wJrm2Sr7EjJwJaie22irtnjyHHGL3n4lstf0RgJPH7UJ9hBDfs3D7duI68EP4MO
7fuEPwwaYJhJQd7pnk35IwSFs7QoFsuFkk9wBvJHOUbl40tTcGyRlvPEpDRkqJDp
VskLeYpDLxpZ2mI8FjddwUnfuxidePXn4LCc2QWvsQZfFB6/AtOUmYAm3cCe31mr
T4G+vxQz8xeg8h5+3paSCT4VMQpbiye94DycdLQK+w+d7kWaZL22ulf8oT9TOHG3
WnnDs78QEhwRFBYTa4StyAkukJZh8rO71rhxI0qEeLbKpdK80zI=
=acjx
-----END PGP SIGNATURE-----

--pjs7eva7gyx5hotn--

