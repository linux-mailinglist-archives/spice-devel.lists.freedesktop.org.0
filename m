Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC2865C0EC
	for <lists+spice-devel@lfdr.de>; Tue,  3 Jan 2023 14:37:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569DD10E052;
	Tue,  3 Jan 2023 13:37:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 871C710E052
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Jan 2023 13:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1672753032;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3wGgWP7w0qy/tksgU96miHOfo1ejBi/lZqc9FksUxDs=;
 b=ctlbZQOWacVA1E1BvE/PmMnICNMPVX8YTkaS6PaDLXzqQvhzRQF+4RR0bD51BpHVYwL0BZ
 1w0n0fokaC8vG67PmWvCEG7UjRddNV+IXVOo0csO78N28VjpLyPUrAO4/M+U0LCgHpUFpG
 jVLEDGrl5HqUl0ExOQ1NZ+t/ZjaLofM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-669-M4uyZg96NDqW2puNSokhGQ-1; Tue, 03 Jan 2023 08:37:08 -0500
X-MC-Unique: M4uyZg96NDqW2puNSokhGQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 721173C0DDB2;
 Tue,  3 Jan 2023 13:37:08 +0000 (UTC)
Received: from localhost (ovpn-193-220.brq.redhat.com [10.40.193.220])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D16BC15BA0;
 Tue,  3 Jan 2023 13:37:06 +0000 (UTC)
Date: Tue, 3 Jan 2023 14:37:05 +0100
From: Victor Toso <victortoso@redhat.com>
To: Pierre Couderc <pierre@couderc.eu>
Message-ID: <20230103133705.jpzra4n63fj4velv@tapioca>
References: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
 <CAMVti-_3iqZqpu=qbq=z+pfSZAEQPmAStFFUMRRseqJn_=UFWg@mail.gmail.com>
 <d7532e7f-5845-34bf-7ceb-1e47d856be7e@couderc.eu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="onmiz5bxw6utj35s"
Content-Disposition: inline
In-Reply-To: <d7532e7f-5845-34bf-7ceb-1e47d856be7e@couderc.eu>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
Subject: Re: [Spice-devel] In spicy,
 how to change shft-F12 to ungrab the mouse ?
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


--onmiz5bxw6utj35s
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jan 03, 2023 at 09:51:42AM +0100, Pierre Couderc wrote:
> Thank you very much.
>=20
> But it does not work I get :
>=20
> option parsing failed: Unknown option --hotkeys=3Drelease-cursor=3Dctrl+a=
lt
>=20
> Moreover,I find nowhere a :
>=20
> man spicy

Spicy is not really meant to be used by final users. It is a
testing tool. It works but you should consider using
virt-viewer/remote-viewer instead.

> Le 1/3/23 =E0 09:06, Xiaodai Wang a =E9crit=A0:
> > '--hotkeys' could do that. You may see the man page for the usage.
> >=20
> > e.g.
> > --hotkeys=3Drelease-cursor=3Dctrl+alt
> >=20
> > On Wed, Dec 28, 2022 at 5:11 PM Pierre Couderc <pierre@couderc.eu> wrot=
e:
> >=20
> >     Is is possible ? how ?

spicy runs a restore_configuration() function that loads a
settings file in $XDG_CONFIG_HOME/spicy/settings -- it might work
to just add, under "general" the grab-sequence=3D"ctrl+alt"

Cheers,
Victor

--onmiz5bxw6utj35s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmO0L4EACgkQl9kSPeN6
SE9jFhAAloo4R1YHc+yixIWBwOcCUcxA7O7CRM9l8bGJO3J888gsoNAWXS4m97pR
uRaLFQP4fGQfTc4NOqrrB1I4sEsFVvlPM2ov6qpQtBfvd6ONzEkI2eW5k9hCCYg8
ygqBtP/scxD4pv9gUND1sd6IQRDDeXPq8W4z1I2sLjP9gBSvJ80mftPYM46wcb/n
e0hYo5mMVLG4OjNe0DpNxRhC6KJQuiz5HukQt9nnHuQSrCY9Aqt3LnfU3Pus3aLK
+oJJ99BT0bTe9mg0Ts41vG+3/o8sMZNLmeKLN/ufuKgGtTMuKXUeGqNZV/KkEY0L
NtE+EHYJYKf+erOO23v3znuXhceVCyqfdlddqO+C9AkT2tox2k4A1r8RmBsga0tt
Aj1yasqkXncLqMRAwUGipm6FAQOz9ZbfTPRV8fTN9+EymwyGJrtuzJEMaculrvz5
0kuo8BMcpPokQxleQJVUwMTFm2DSpBz2pHjnzBARBvsOH+SHE051Bw97ieHegfH0
DmT/dtP71bP/fgY09dRj4EwFDwbI5CQwojYzmIhJbGQ4NItdrD5mQ3RdespymqJC
N/MJ0eiAh/RuC9e36vgIF91ROR6X3JXtlDh0Cb80LWaFQ/w63RuZBvHdj8UhKSMX
/7n8/LTGaImEtvvMEgJ2pylhsKF9kqLfQcFO1gAYiiSFiGmZnlM=
=voV7
-----END PGP SIGNATURE-----

--onmiz5bxw6utj35s--

