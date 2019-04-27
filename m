Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D7AB32A
	for <lists+spice-devel@lfdr.de>; Sat, 27 Apr 2019 12:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E652892B2;
	Sat, 27 Apr 2019 10:08:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 177F1892B2
 for <spice-devel@lists.freedesktop.org>; Sat, 27 Apr 2019 10:08:23 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id q10so5139805ljc.6
 for <spice-devel@lists.freedesktop.org>; Sat, 27 Apr 2019 03:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XzFoda/bBl1Q2VWBw+vU9uywKsFN22qAqdbuiDnHT4c=;
 b=Mzxr9X558wTM9M/hpQWG/Pq78NN8sOt1RfV6FgkT4+yowNZU97lHalLH86siKhQqjR
 1TAJ42L1+frqMZDNMA27DLby64kpWnINmc4c0AEpSB32B4q8/L8G8zDLU8xg1/du2Bc2
 /1m8HscnMu13RMD02tg+A4K6Bb5FBr/4bb0bSXDR6HRToxDVgwe6Qg6aM2mruvujsOBi
 lpR/qMJolcWZSAoPgVXAfJLqrMR8ulWQkUKVwVEGlR4hDVa31hdn3YNIzjyBZpvW5uyZ
 WqrFbovlw8p/hHE+jVWWLit/6AwTKe6b6Jld7lXk36tQ8Z+WaOb6Jds94Vsc7r60ablH
 ZWhw==
X-Gm-Message-State: APjAAAWgGRmXIzuHRpw6YvgRnP3tjH0VPp+Z9mhJUzUCUKJc1pimDvtj
 wFRNEAYF6wc8OY0KMGBCbu4=
X-Google-Smtp-Source: APXvYqwRFgIRR/lJtGCgoVN+X6U07TqX/8CFr9NT8uZjh7AHhoFZUiQC1K+vrrIDLo1je8+CoPz/+A==
X-Received: by 2002:a2e:9196:: with SMTP id f22mr27548837ljg.82.1556359701590; 
 Sat, 27 Apr 2019 03:08:21 -0700 (PDT)
Received: from kloomba ([213.147.222.203])
 by smtp.gmail.com with ESMTPSA id w19sm6240434lfe.23.2019.04.27.03.08.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 27 Apr 2019 03:08:20 -0700 (PDT)
Date: Sat, 27 Apr 2019 14:08:14 +0400
From: Roman Bogorodskiy <bogorodskiy@gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190427100812.GA2924@kloomba>
References: <20190426151022.48666-1-bogorodskiy@gmail.com>
 <50108563.15231819.1556348126465.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <50108563.15231819.1556348126465.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XzFoda/bBl1Q2VWBw+vU9uywKsFN22qAqdbuiDnHT4c=;
 b=Lk7xVmvowRXNFRdKWjXcJonzQvL+YNi/YbhApIAxih8SKETv8bINMOt8bVWREhc4Hj
 zmPJfNje9UDMqgwXKL7iDPit+1a5Ky8By+k44ZHLLHj6C/VZo6QpcDcWlwkwdyFUPybv
 ROQpOcb7e8uW4s4VAImsQyGAGC9qGh7EVYTrlaehn4sjkNfuVkSbFoC7Ulh+e4eJhJ8c
 srIkoGRtvGxDdhFNqxVTVXTl8dQilXpiyPG5NZLDnplXtez0NMpZujvK+kxZTC2d4fH5
 tsAFBYgYcv6+8CFGwPd+ufW6MAFlBRd0+frLqNizZcnF+cP9R2ceaC/AK0XrVQUxEEkS
 pZfA==
Subject: Re: [Spice-devel] [PATCH] Unify openssl checks
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============0374522813=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0374522813==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

  Frediano Ziglio wrote:

> >=20
> > Currently, spice-gtk uses PKG_CHECK_MODULES(SSL, openssl) to detect
> > openssl CFLAGS and LIBS. And spice-common defines and uses
> > SPICE_CHECK_OPENSSL macro which calls
> > PKG_CHECK_MODULES(OPENSSL, openssl).
> >=20
> > This means that in order to override openssl CFLAGS or LIBS a user will
> > have to set both OPENSSL_(CFLAGS|LIBS) and SSL_(CFLAGS|LIBS).
> >=20
> > To make this more consistent, make spice-gtk use the
> > SPICE_CHECK_OPENSSL macro from spice-common.
> >=20
> > Signed-off-by: Roman Bogorodskiy <bogorodskiy@gmail.com>
>=20
> In configure.ac there's an usage of SSL_CFLAGS:
>=20
> SPICE_GLIB_CFLAGS=3D"$PIXMAN_CFLAGS $PULSE_CFLAGS $GSTAUDIO_CFLAGS $GSTVI=
DEO_CFLAGS $GLIB2_CFLAGS $GIO_CFLAGS $GOBJECT2_CFLAGS $SSL_CFLAGS $SASL_CFL=
AGS"
>=20
> should be replaced
>=20
> Frediano

Indeed, thanks, fixed in v2.

Roman Bogorodskiy

--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJcxCoMAAoJEMltX/4IwiJqPZAIAKRN88P+lcJCeCFXFH0gKxPB
oMjlm8kXb84qcJf+TWUdNNAmBjhHERk77jMoYs/ppIAk9m8a8v6T4IkfmYEKaDvo
466AtpsCO9zIIZEgtD23gG2j2fF5TldV2CpeG6Y15Q73c+95n5Fwt5CujN+cUFKm
zPkKOV5qvq495HrBxfrKcBSt9j2Nck6cFzgpiAMpo3LTyZUeg1TLYtJwGzSNE6uS
iBD4GQ4Qed3RQ1hu4czXQlSDyRn78zSsC0KU9VYgrvfTqfIIC59Of/Y/Ycexf9Fx
iGQqAV+zGs9Sw5dWvQ4bloe1L7DOk/I+OGANnJVDIFDKvnpE5Se2rm/59WaMf3g=
=bfLo
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--

--===============0374522813==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0374522813==--
