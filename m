Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B57BE584E5C
	for <lists+spice-devel@lfdr.de>; Fri, 29 Jul 2022 11:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADB7210E22D;
	Fri, 29 Jul 2022 09:48:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB2010E03C
 for <spice-devel@lists.freedesktop.org>; Fri, 29 Jul 2022 09:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1659088079;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+lg3Go7Xf+X0Wl90wYtyA8DYKPbZ9BrVZJIHTHoj3k0=;
 b=DoP6X1Py5BX67WZY5kTZPjx6mEykr8tk23M3uh/qWa5lxIwbfOJevc0epMnHkIQ7bWzaiN
 ayIff0OglC858Qdau0GolpmbOPjIb51XE8Obt1m9bP1V/TiNTQwyCJhev/vTpHl5Z0vLzf
 jYYBjChckNy34PqgMHgSKx0tsCFcb74=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-eKAlsTumPs-X4E-pQVshLA-1; Fri, 29 Jul 2022 05:47:57 -0400
X-MC-Unique: eKAlsTumPs-X4E-pQVshLA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4DE985A587;
 Fri, 29 Jul 2022 09:47:56 +0000 (UTC)
Received: from localhost (unknown [10.40.194.185])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5C8DE1121314;
 Fri, 29 Jul 2022 09:47:56 +0000 (UTC)
Date: Fri, 29 Jul 2022 11:47:55 +0200
From: Victor Toso <victortoso@redhat.com>
To: James Miller <jamesstewartmiller@gmail.com>
Message-ID: <20220729094755.nlyc3mn2hkvxg42y@tapioca>
References: <CAKJvYZHs-ZZHq0py8BT5ae=EMUdghywz5WzNvuZzTYKvc5cJWA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="tpdgtdjiiyyh52rr"
Content-Disposition: inline
In-Reply-To: <CAKJvYZHs-ZZHq0py8BT5ae=EMUdghywz5WzNvuZzTYKvc5cJWA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Subject: Re: [Spice-devel] irc
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--tpdgtdjiiyyh52rr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jul 29, 2022 at 09:56:21AM +0100, James Miller wrote:
> Hi,  I wonder if the irc address on the website contact page (
> https://www.spice-space.org/contact.html) needs updating?
>=20
> I can't find irc.gnome.org - I think they now use matrix.
>=20
> I want to know if there is anyway to manage usb-redirection to a libvirt
> kvm vm from the command line.  In particular, I want to redirect a usb key
> (yubikey) to the virt-manager managed vm, from the command line, as I need
> to deauthorise the key (echoing 0 to a file under a path below sys) before
> redirecting it.

Ah, interesting, never tried this kind of device.

Wouldn't it simply work if you do echo 0 and the do the
redirection with virt-manager or remote-viewer's UI?

Cheers,
Victor

--tpdgtdjiiyyh52rr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmLjrMoACgkQl9kSPeN6
SE/JMBAAukkNWyuKZSvzUUsZJo7wTqn2EZi/6SiZEjoWai+uqMv+9RgyCC01awHF
At7MpZEr9i9Thu3WAZRoyyvH+a2bDp+iTBv8kvfiAVHa+fZmZm5sr8soufkAE0Qe
k9z5zJ2dvKzJ17MG4m5B+1aGC32kdS0XweFohIfyX9KkJcilZyyTe0G2SBm0GoaE
vc2MNpA5nnmtSXp310d9RUqp4MRBc4yGdEmkcHmt7GLiO/uWzWKU4Sqje3GvCb/t
r9OZzjuuzKytuEGWltGbTlotd7xLbT9VfoBlMKICZvGb5eUO16d1/W2LezV6kRSn
/QpfCyorCfIS2yJ80s0zy+VlO2IKUQdZ5UO1q1Ubhs1N7amRHXc58QhFD1nlC9d+
UvPIhLSTZxZrSLBCIncfFsI2iwKzXVJc+hf51+RJclzyLxVfWkXdnb01i9qEh/8S
zS/vJgs26vmJryX2XJElmUmUyrjl5mvJgTxWHQEAWQGMBBHqETjReOL1u3CgcDJ3
2deqYSCk6cDnvRzYMJRYh++li0n6pdPGNN7sRXfsefHonGKnmPfE1ycPE2EehWUp
YHKQ/R18O46WLpTme6Sga4/pmCvlG2o/kK7zVWKVVfT3GM1nS2YewdLrrLpq9AEV
5eJS0Q9r64YNfDsS2NfmyPrqMfglj3HdS9Hk9uwtoydtdC2C24Y=
=CIrx
-----END PGP SIGNATURE-----

--tpdgtdjiiyyh52rr--

