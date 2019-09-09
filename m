Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE30AD52D
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 10:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132858982A;
	Mon,  9 Sep 2019 08:57:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F1D08982A
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 08:57:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3C61440D89
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 08:57:21 +0000 (UTC)
Received: from localhost (unknown [10.32.181.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DAD9F5C1D8;
 Mon,  9 Sep 2019 08:57:20 +0000 (UTC)
Date: Mon, 9 Sep 2019 10:57:20 +0200
From: Victor Toso <victortoso@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <20190909085720.a5x4xkwncyqiyaax@wingsuit>
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-7-victortoso@redhat.com>
 <27429cfa-df7c-6e32-2784-cd243b0cd1bd@redhat.com>
MIME-Version: 1.0
In-Reply-To: <27429cfa-df7c-6e32-2784-cd243b0cd1bd@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 09 Sep 2019 08:57:21 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 6/6] RFC: test: session: gstreamer
 init by us or client
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
Content-Type: multipart/mixed; boundary="===============0317254148=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0317254148==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dngpeth7l7i5tkgn"
Content-Disposition: inline


--dngpeth7l7i5tkgn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Sep 08, 2019 at 04:40:46PM +0300, Snir Sheriber wrote:
> HI,
>=20
> On 9/2/19 7:04 PM, Victor Toso wrote:
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Does not work properly just because gst_is_initialized() checks if
> > gst_init() or gst_check_init() was ever called but it does not
> > consider if gst_deinit() was called too. I'm sending this RFC to check
> > if should be added or wait till feedback on upstream about the API,
> > that is, I have a downstream patch that gst_is_initialized() would
> > return FALSE if gst_deinit() was called ...
>=20
>=20
> Maybe should also be mentioned as comment in the code
>=20
>=20
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >   tests/session.c | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 49 insertions(+)
> >=20
> > diff --git a/tests/session.c b/tests/session.c
> > index 8208016..8e1814e 100644
> > --- a/tests/session.c
> > +++ b/tests/session.c
> > @@ -1,3 +1,6 @@
> > +#include <stdbool.h>
> > +#include <gst/gst.h>
> > +
> >   #include <spice-client.h>
> >   typedef struct {
> > @@ -333,6 +336,50 @@ static void test_session_uri_unix_good(void)
> >       test_session_uri_good(tests, G_N_ELEMENTS(tests));
> >   }
> > +static void session_init_test_on_gst(bool should_init)
> > +{
> > +
> > +    if (should_init) {
> > +        GError *err =3D NULL;
> > +        gst_init_check(NULL, NULL, &err);
> > +        g_assert_no_error(err);
> > +        g_assert_true(gst_is_initialized());
> > +    } else if (gst_is_initialized()) {
>=20
>=20
> Is this likely to happen?
>=20
>=20
> > +#if 0
> > +        /* Not working for now, gst_is_initialized() return TRUE also =
if
> > +         * gst_deinit() was called */
> > +        gst_deinit();
>=20
> also documentation of gst_deinit mention:
>=20
> "After this call GStreamer (including this method) should not be used
> anymore."

Well, I was wondering if for testing purposes that could be fine.

> > +        g_assert_false(gst_is_initialized());
> > +#endif
> > +    }
> > +
> > +    SpiceSession *session =3D spice_session_new();
> > +    g_assert_true(gst_is_initialized());
> > +    g_object_unref(session);
> > +    if (should_init) {
> > +        g_assert_true(gst_is_initialized());
> > +        gst_deinit();
> > +#if 0
> > +        g_assert_false(gst_is_initialized());
> > +#endif
> > +    } else {
> > +#if 0
> > +        /* Even if gst_deinit() is called, returns TRUE below */
> > +        g_assert_false(gst_is_initialized());
> > +#endif
> > +    }
> > +}
> > +
> > +static void test_session_gst_init_by_us(void)
> > +{
> > +    session_init_test_on_gst(true);
> > +}
> > +
> > +static void test_session_gst_init_by_client(void)
> > +{
> > +    session_init_test_on_gst(false);
> > +}
> > +
>=20
> I find it a bit confusing, what about init_by_session and init_by_test
> (or maybe init_externally and internally)

Sure, I'll always take advice in renaming functions :)

> Oh, and the rest of the patches i didn't comment on looks good
> to me :)

Thanks!

>=20
> Snir.
>=20
>=20
> >   int main(int argc, char* argv[])
> >   {
> >       g_test_init(&argc, &argv, NULL);
> > @@ -341,6 +388,8 @@ int main(int argc, char* argv[])
> >       g_test_add_func("/session/good-ipv4-uri", test_session_uri_ipv4_g=
ood);
> >       g_test_add_func("/session/good-ipv6-uri", test_session_uri_ipv6_g=
ood);
> >       g_test_add_func("/session/good-unix", test_session_uri_unix_good);
> > +    g_test_add_func("/session/gstreamer/init-by-us", test_session_gst_=
init_by_us);
> > +    g_test_add_func("/session/gstreamer/init-by-client", test_session_=
gst_init_by_client);
> >       return g_test_run();
> >   }
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--dngpeth7l7i5tkgn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl12E/AACgkQl9kSPeN6
SE+wKQ//dqgpeykAH1slWTZzB/NS+NrD19u5M51ssw51Y48ts1lCPPSlQumiMn6J
S5TCv5vH6nzQ2bOLOcH9v+4P/mAkb1lLEACBZs1ogy80hGlXTvweT/t3Eaj/pVih
jCTOGVzSfSrs6x121KFPis0jzO/a6lS8SGyKRlmVm83MK5Nt2RU4kgTph+6BiMOS
cAsHbzDPhOw+iEmLjo43htu0VblsfLf+CPGUfwdC2FKbMhDnQ8ynss6zQdoqS1NM
ZJMnZX3UNsNO18T+nJFjSqXYIPopqel85TcKKbMig/nGEQt/HRaYEl8Szd5SCgRd
+kVSjhtaJAC7OGOHgG7rhhwh4QW06kRalV/7w8LAaxssWyQmbRbnxjub0RAjnm48
dP5yMPM70rFEsANU8KSSSekV2N0LM0R7W4N8gVbgs+E2hlNmGDuftgRDLHwNgJEE
6ru1dEvukWp7cGX4/RGi5Xx7pAhGnsvJh0RSt6qBT0/Dgqk94lqqXegQ3ixWwfzc
BbWnpW2iwPNr5h25rJbJ533Sr4DL6dJKOBGjVPj2upcszVI/rG5eNx6K1E5Xm++o
IAg+Rdrx4gLfsAn0PTowvlz6FAgtftSzK23I88mfeSJtBKB5nRqTcSjKwIOjex/3
dSHTWs3t44Y4J6mn+wLihMzNRbFallqjYwiN1dJFstva174Oz5o=
=IKq7
-----END PGP SIGNATURE-----

--dngpeth7l7i5tkgn--

--===============0317254148==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0317254148==--
