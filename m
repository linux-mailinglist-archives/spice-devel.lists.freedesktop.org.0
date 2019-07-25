Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7372374BAF
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40DC8955D;
	Thu, 25 Jul 2019 10:36:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608378955D
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:36:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EF9CCA3B5F
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:36:00 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9E1695D71A;
 Thu, 25 Jul 2019 10:36:00 +0000 (UTC)
Date: Thu, 25 Jul 2019 12:35:59 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190725103559.4a4cmp62uidnj3bx@wingsuit>
References: <20190725101947.17341-1-victortoso@redhat.com>
 <494627912.2966701.1564050748556.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <494627912.2966701.1564050748556.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Thu, 25 Jul 2019 10:36:00 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk] spice-option: warn on command line
 failures of usbredir
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
Content-Type: multipart/mixed; boundary="===============1758435044=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1758435044==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ghsu6s3is5imhono"
Content-Disposition: inline


--ghsu6s3is5imhono
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 25, 2019 at 06:32:28AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > As spice_usb_device_manager_get() can fail for different reasons, we
> > should silently ignore it and its error.

Sorry, this was a typo. I meant we should not silently ignore the
error.

> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/spice-option.c | 18 ++++++++++++++----
> >  1 file changed, 14 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/src/spice-option.c b/src/spice-option.c
> > index c2b059e..c6c51a9 100644
> > --- a/src/spice-option.c
> > +++ b/src/spice-option.c
> > @@ -261,16 +261,26 @@ void spice_set_session_option(SpiceSession *sessi=
on)
> >              g_object_set(session, "smartcard-db", smartcard_db, NULL);
> >      }
> >      if (usbredir_auto_redirect_filter) {
> > -        SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(sess=
ion,
> > NULL);
> > -        if (m)
> > +        GError *err =3D NULL;
> > +        SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(sess=
ion,
> > &err);
> > +        if (m) {
> >              g_object_set(m, "auto-connect-filter",
> >                           usbredir_auto_redirect_filter, NULL);
> > +        } else {
> > +            g_warning("Option --spice-usbredir-auto-redirect-filter is=
 set
> > but failed: %s", err->message);
> > +            g_error_free(err);
> > +        }
> >      }
> >      if (usbredir_redirect_on_connect) {
> > -        SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(sess=
ion,
> > NULL);
> > -        if (m)
> > +        GError *err =3D NULL;
> > +        SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(sess=
ion,
> > &err);
> > +        if (m) {
> >              g_object_set(m, "redirect-on-connect",
> >                           usbredir_redirect_on_connect, NULL);
> > +        } else {
> > +            g_warning("Option --spice-usbredir-redirect-on-connect is =
set
> > but failed: %s", err->message);
> > +            g_error_free(err);
> > +        }
> >      }
> >      if (disable_usbredir)
> >          g_object_set(session, "enable-usbredir", FALSE, NULL);
>=20
> g_warning to me does not mean "silently", it was more silent before.
>=20
> Code looks a bit a copy&paste, maybe add a function

It is but the caller of below function still needs to check if m
is NULL or not. I don't mind, I'll change it.

Thanks,

> SpiceUsbDeviceManager *
> spice_usb_device_manager_get_for_option(SpiceSession *session, const char=
 *option)
> {
>    GError *err =3D NULL;
>    SpiceUsbDeviceManager *m =3D spice_usb_device_manager_get(session, &er=
r);
>    if (!m) {
>        g_warning("Option %s is set but failed: %s", option, err->message);
>        g_error_free(err);
>    }
>    return m;
> }
>=20
> (I didn't check it)
>=20
> Frediano

--ghsu6s3is5imhono
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl05hg8ACgkQl9kSPeN6
SE8HNQ//f3eJFEH2eB1iNdJLUkWIyU5QkfTjN8aQDzk54jTtver6CTIC7b7VVZtz
0tvubnaNJsjae9ZR/f8zRDHq2H6nk2yeSzdT0tpPNt7So7wh8OLdvthjApZKaVmj
lpOntdHvg5ubsdNPgeEx6nmzcuw53PJ9D0ALWuJaBeZkWwA/BSa+RmjyflFYIbm1
jlTysxgaGR5RHZ7HXpR6kIRishikW+tqBnyy5/P8BcP7/zyfkVcHU6VyReomGfl+
U0D6ETSC9QURqYO44lEfK8awlIC08mXxS6ZAYaPxhRPMIaJCjYaBzPLnnH93gxci
KqqPEmeaqZgqnYSin5HP7CVBNj4jvvWQp+CLbPS8glOIT7ctGWnkCydlQWTcqWUw
klPU/VIfqfH/foBtUDKbb7l7n9O9epafF2qG9KCM7J191XOnxZbwADBe9jPYsWec
ZpzisDY2hW8hLj7Rk9LY3aiusMlx55hO/qYinkk/vyUnDCINbrBJxWAXHZky4hpA
h4xBF9sMoGvP9tePbLjOLiORnZk7Vtx7x0tRUX99rTnHWVCN9PhZhiFVMNCWmcVD
Lc502dS5QZU4r39etxvN/xBnVyFC21YrAJktY2w34N2FRTNyv0Ycxr+z/mhFV2ey
AXvZ7OfDcqFbWol0kUoCzzsZxGf+Byejis8bkwi0hVyr5wC8Cp4=
=6ouG
-----END PGP SIGNATURE-----

--ghsu6s3is5imhono--

--===============1758435044==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1758435044==--
