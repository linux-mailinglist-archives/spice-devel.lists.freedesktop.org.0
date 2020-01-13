Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B62138E18
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 10:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3A389C03;
	Mon, 13 Jan 2020 09:45:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8E789C03
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 09:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578908755;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dB9TURfcUL2TNzywofw2Q073Z5LwKY375T6i/2GGTjA=;
 b=ZVSQuoFzKlNZkEIUsCFEWsGrizScAJiZkDqx3b7cBbUwAY4blPjm2+YRGG2jCcHcifYkgX
 M6YjV/AJMEjjgZQbm827/F+Y6PKDuQ67tnEn/9fTkp7g4OjuNwfNtCD2NZYF45gOiZwGiF
 3WI7+p7X3TEZjoqORT4959rKbnXNhsw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-LB_jxTxDPYqykhp5jmhWQg-1; Mon, 13 Jan 2020 04:45:51 -0500
X-MC-Unique: LB_jxTxDPYqykhp5jmhWQg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D133A1007272;
 Mon, 13 Jan 2020 09:45:50 +0000 (UTC)
Received: from localhost (ovpn-117-148.ams2.redhat.com [10.36.117.148])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 669291001B35;
 Mon, 13 Jan 2020 09:45:50 +0000 (UTC)
Date: Mon, 13 Jan 2020 10:45:49 +0100
From: Victor Toso <victortoso@redhat.com>
To: Valeri Aronov <valerka@gmail.com>
Message-ID: <20200113094549.sdvmeqzvvlqnwfjf@wingsuit>
References: <CALTE0RYrP2qQM0abXvF1TkVAK7DO1tqd3T+y_UUocyqgnxa2Sg@mail.gmail.com>
 <20200113094425.fknhnwbczapujhlv@wingsuit>
MIME-Version: 1.0
In-Reply-To: <20200113094425.fknhnwbczapujhlv@wingsuit>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] fast symbolic transfer function derivatives
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
Content-Type: multipart/mixed; boundary="===============0921029402=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0921029402==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z7ipktqzqbd2wog2"
Content-Disposition: inline

--z7ipktqzqbd2wog2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jan 13, 2020 at 10:44:25AM +0100, Victor Toso wrote:
> On Mon, Jan 13, 2020 at 03:04:55PM +1100, Valeri Aronov wrote:
> > Dear all,
> >=20
> > I trust that I have an excellent proposition for the theme in the subje=
ct
> > of this post. Using my algorithm for the evaluation of all the first an=
d
> > second derivatives (by circuit parameters) of the symbolic transfer
> > function asymptotically approaches the time of the evaluation of transf=
er
> > function itself.
> >=20
> > Using these derivatives allows substantially reduce the time of circuit
> > parameter optimization because of much better precision of the derivati=
ves
>=20
> Sounds interesting for SPICE as "Simulation Program with
> Integrated Circuit Emphasis" [0] while this is a different kind
> of SPICE list [1]
>=20
> [0] https://en.wikipedia.org/wiki/SPICE
> [1] https://en.wikipedia.org/wiki/Simple_Protocol_for_Independent_Computi=
ng_Environments
>=20
> Cheers,
> Victor

Sorry for the noise, at the time I had not yet fetched the reply
from Frediano.

Cheers,

--z7ipktqzqbd2wog2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl4cPE0ACgkQl9kSPeN6
SE/V0RAAnfOu06Ei47RYKB8PYyBmAJnZIq7p9+ooHcg+MS6Jzv432eSbjmCSyCn7
Fk1sJs5cJe0uebrYxv83BSH7IPLhb04HVnoZ6xXov9v6+Rlank72ix9cxM3RBDfh
GtC80EXsF7GuY8BsqBAE8iKp1b2CE2ZnzwrKv2Qzaflw35zBNqLWPqRc8aT41qy9
QKNb85khThf9Y4NtX0xgzJgScALBaV8cj5Sk4h3SgbrgvVs80qKvLG9ovAgYgExa
jzVU1+AgMBnQ5Kj/nwbO64SCqP0TlCfC7esL8S91glIO8WGrgquofcS6iZ7RTKlt
ea+O4qz0Rrw3ZPex/DZKZTtCZnNt2FB5fRMbg4bElgzqk52at0pcZDmj36Cr7asr
57pX8zGIRAN7DH07ZcGQPxqlcydlbjw3rkNwyTajOfF/B5cN1xDLb+AopfoKtX1G
+zxdw8GsTnl9MZIpYsuzC72bn/jnfWzKj2E+CD3y4f+TwAADFm4pVWZDCv9mjXBs
Cd99mz5bIoNutjpZ45AfJhQFfTK7unXAwd5Ne9bDg4uAs45tIaQYnvFAQQ2z9Pz7
S+DFbZQ5DDIqzaBZ3VloC7fGFUA97WIIrfWhcYpdYCg5/K88B1M5MDV53aKPXTEV
/y/+RADv1LaDdtkS3pQ6KlsBaa8f2hciZH97gPsccBYAtVSA32o=
=jgXS
-----END PGP SIGNATURE-----

--z7ipktqzqbd2wog2--


--===============0921029402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0921029402==--

