Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E1AD64A
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 12:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E02389733;
	Mon,  9 Sep 2019 10:06:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8C3889733
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:06:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6B59A18F3525
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:06:03 +0000 (UTC)
Received: from localhost (unknown [10.32.181.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0E61D5C21F;
 Mon,  9 Sep 2019 10:06:00 +0000 (UTC)
Date: Mon, 9 Sep 2019 12:05:59 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190909100559.wkq4flx7w5yxxwbr@wingsuit>
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-5-victortoso@redhat.com>
 <81380fde-14b8-1cec-f69f-f92692172510@redhat.com>
 <1075329485.11053740.1567961066784.JavaMail.zimbra@redhat.com>
 <20190909091051.qia44wyxkbmuvgbm@wingsuit>
 <1239308376.11119827.1568022812389.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1239308376.11119827.1568022812389.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Mon, 09 Sep 2019 10:06:03 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 4/6] session: gst_deinit()
 GStreamer if we initialize it
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
Content-Type: multipart/mixed; boundary="===============0374877746=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0374877746==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wujpoenkitxkmmnl"
Content-Disposition: inline


--wujpoenkitxkmmnl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 09, 2019 at 05:53:32AM -0400, Frediano Ziglio wrote:
> > > If A initialize Gstreamer and B don't but just check is
> > > initialized then when A call deinit the objects used by B
> > > will contain potential dangling pointers. One right
> > > interface would be simply init/deinit and use a counter to
> > > track the number of initialization.
> >=20
> > All channels are related to SpiceSession, that's why I moved
> > it there. Seems reasonable to me at least.
> >=20
>=20
> Yes, it is. But this won't fix Gstreamer API.
> Nobody forbid users to use spice-gtk library in another program
> to provide for instance multiple VM access using multiple GUI tabs.

Ah, i get what you mean. Indeed, this patch would make a
necessity that Boxes or Virt-manager to call gst_init()
themselves in order to avoid breaking a ongoing Spice session
because the owner of the caller of gst_init() is calling
gst_deinit().

I'll drop this patch and the RFC with unit test as well because
without gst_deinit() there isn't much point on unit testing this
:)

Thanks!

> If the other part will use Gstreamer calling gst_deinit without making
> sure nobody else will use it will potentially lead to memory issues.
> That's my suggestion "don't do it". Calling that from spicy is fine,
> because you know nobody else is using Gstreamer, not in a library.
>=20
> > I'll fix proposed changes and send a v2, many thanks for review!
> >=20
> >  - toso
> >=20
>=20
> Frediano

--wujpoenkitxkmmnl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl12JAcACgkQl9kSPeN6
SE/CCg/9FLvEVZNjzyKe7hmdh28HONYBenmIPKz5+qyvkLdITWC5s9UOTT07yU+5
kdUEBtXMreLc0/hxQ0zU3iyW2Rflm+lteEAc4vwDJGSM5Vay8cS+MydPCQmT5zVz
hQ7Ta2U5+WmNiW9DfzulIsgyOL0XgJ2sKwR9rk89ENC/gF1+fH+ibyhntPWrknSr
Y3onmUh0Itrb1u7CmQxXQnX0DDwdP7KTh0589uggVPS8wGySXdLi2RGDDaxksEB3
8g7/CMb/ezgLnaZuN4wFlCQniJ8tFRjidRqElzKqT3LrGb7tgnBZQaelhJiuLfpw
5NxW25FQ3I+k1ZDWLEICUJ+rMh2b7/IT11bOmmaRk3NhdBAni2oaEG52iW3vz5+g
wQ8ZdEHS2xCw3nEhTFrF4mNZS5PGpcsiOGtPRLWW8CNqYdKzmMw4E6+JNROCo0pK
UH4bfo3YcvVMwoRLKFfw697yP6YRbxq1y4sR6hT6yokq24k3hGnvFpYC9BLJVYO8
eFhMHyjYcz8aRJX8Ko+MAhFy7xRBl1nFK5CFvAnXe7pMJrEPyyJfPtcmJI1eehxK
Oisx0oXTHSE3b7ymMhPRmy5HgPvcSOGq5jZ2u3FwRDJg8zSFT5nN8To0PaLY/umk
WFYBjIToQzk7Hb959NWo/o2PvHr8wSBONEJmwh2qgcdTf/hxKoc=
=lVDF
-----END PGP SIGNATURE-----

--wujpoenkitxkmmnl--

--===============0374877746==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0374877746==--
