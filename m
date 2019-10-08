Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFA3CFD6E
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 17:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65E36E832;
	Tue,  8 Oct 2019 15:18:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EACA16E832
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 15:18:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 52491309DEF0
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 15:18:24 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F30E35D6A7;
 Tue,  8 Oct 2019 15:18:23 +0000 (UTC)
Date: Tue, 8 Oct 2019 17:18:23 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191008151822.r3cpahgarymeyr4j@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007103906.30517-2-fziglio@redhat.com>
 <20191008123218.vk5uawidlweqxljy@wingsuit>
 <1186654320.5965274.1570543465788.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1186654320.5965274.1570543465788.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 08 Oct 2019 15:18:24 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/8] test-stream-device:
 Factor out VMC emulation
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
Content-Type: multipart/mixed; boundary="===============1495373170=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1495373170==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4fg3btmzu2keho6c"
Content-Disposition: inline


--4fg3btmzu2keho6c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 08, 2019 at 10:04:25AM -0400, Frediano Ziglio wrote:
> >=20
> > On Mon, Oct 07, 2019 at 11:38:59AM +0100, Frediano Ziglio wrote:
> > > Allows to reuse code for emulating a character device.
> > > It will be used for Smardcard test.
> > >=20
>=20
> ...
>=20
> > > +
> > > +void vmc_emu_reset(VmcEmu *vmc)
> > > +{
> > > +    vmc->pos =3D 0;
> > > +    vmc->write_pos =3D 0;
> > > +    vmc->message_sizes_curr =3D vmc->message_sizes;
> > > +    vmc->message_sizes_end =3D vmc->message_sizes;
> > > +}
> > > +
> > > +void vmc_emu_add_read_till(VmcEmu *vmc, uint8_t *end)
> > > +{
> > > +    g_assert(vmc->message_sizes_end - vmc->message_sizes <
> > > G_N_ELEMENTS(vmc->message_sizes));
> >=20
> > I'd move the unsigned size here and change both asserts to use
> > it, that is:
> >=20
> >     unsigned size =3D end - vmc->message;
> >     g_assert(size >=3D 0);
> >     g_assert(size <=3D G_N_ELEMENTS(vmc->message));
> >=20
>=20
> They are not exactly the same.
> size >=3D 0 will be always true, it's unsigned while the initial check
> could be false.

Ouch! True :)

> Also checking end - vmc->message <=3D G_N_ELEMENTS(vmc->message) and
> using size instead could have different results in case the difference
> is truncated to fit in an unsigned (for instance if unsigned is 32 bit
> and end - vmc->message is more than 2**32).

That's interesting, I'd guess that end - vmc->message would also
truncate before comporting with G_N_ELEMENTS(vmc->message). I
should start testing this kind of stuff.

> > This is my only nitpick for this patch, feel free to ignore if
> > you want
> >=20
> >     Acked-by: Victor Toso <victortoso@redhat.com>
> >=20
> > > +    g_assert(end >=3D vmc->message);
> > > +    g_assert(end - vmc->message <=3D G_N_ELEMENTS(vmc->message));
> > > +    unsigned prev_size =3D
> > > +        vmc->message_sizes_end > vmc->message_sizes ?
> > > vmc->message_sizes_end[-1] : 0;
> >=20
> > Forgot how long since I saw a negative index in C!
> >=20
> > > +    unsigned size =3D end - vmc->message;
> > > +    g_assert(size >=3D prev_size);
> > > +    *vmc->message_sizes_end =3D size;
> > > +    ++vmc->message_sizes_end;
> > > +}
>=20
> Mostly OT:
>=20
> This is just code for test so it's not meant to be "safe" but it seems
> that a good rule for security checks is "let's the unsafe alone".
> Just an example, having to check if we have a full message sometimes
> we do
>=20
> if (sizeof(header) + header.size >=3D buffer_size) ...
>=20
> The "header.size" usually came from network so should be considered
> unsafe but it's not alone, better to change the check to
>=20
> if (header.size >=3D buffer_size - sizeof(header)) ...
>=20
> This to avoid the possible overflow with the addition (and I would
> remember that memory is not infinite but this is another story).
>=20
> Frediano

Frediano++

--4fg3btmzu2keho6c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2cqL4ACgkQl9kSPeN6
SE+0cg/9GL2Q3D5q4N0pYcMWfWG5v6tOrTkXMY093XgwUpERS8Ze7j7YAGYkxW3N
JNaZ6nPrUu3ju0Xq9TTripGaF0/fE2IqzbCdQRaW4XBwEfUXTc7+dGFuGn9pHKhO
tPAzDhOynreD0QmBQLDqPJgsY5YwEgwIkEU9Fg9YT6Mz/QlAGKtI6xAMivYAJL6i
d1PSx0M8IqB5nkMpwiXZl4L0ADkFwrHod99CkaQVahlJo26Gs/W5DcHOitEZWEkQ
C7aNInedvvdY2szwy8qzkAbP/sGHBzuDzZV2ukSj43KlSd0GGk00Dsj3XlCbxa7A
5i5B6p6/QSVXu1Fy3fIRV57V3Q7hINDx6u5F7yZCwEq/kabvJVsQaz4tepPRdhpU
Epcpfxufa1YNuxs+MEalNvhAhirSDAazXUfLQHXmenw9Z+5qaetsc9fKU6jFGsHf
e/suYY3tlryhHtDpfYpmoxaSkSCBQpmkNfSJjrSBWsD7m/sKvIe1ZWr8Yr/yJcWe
38a1vXRg4OLDHR5obybvJK4GunuN9talVUWLY+JahSupfF5mynjCRHUJLMqVHyEX
edt8eK13d7cixn6EzAehdAzoRIK6KAm+kziKcYFHGYHaj6i/lFX587EL/LlWIz3l
XTA8eugvZhu2xItj1uJ4W222Z5u1HOY/aYsOPhQUm1Enwi+DLKk=
=2VLl
-----END PGP SIGNATURE-----

--4fg3btmzu2keho6c--

--===============1495373170==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1495373170==--
