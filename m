Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9D1AD7AA
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 13:11:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCE0F89236;
	Mon,  9 Sep 2019 11:11:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF3B989236
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 11:11:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3F3E39B2D3
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 11:11:13 +0000 (UTC)
Received: from localhost (unknown [10.32.181.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DF0A35D9DC;
 Mon,  9 Sep 2019 11:11:12 +0000 (UTC)
Date: Mon, 9 Sep 2019 13:11:12 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190909111112.z2sqlubnpwbjxitq@wingsuit>
References: <20190909102949.17504-1-victortoso@redhat.com>
 <20190909102949.17504-2-victortoso@redhat.com>
 <1994863068.11125669.1568025957763.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1994863068.11125669.1568025957763.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 09 Sep 2019 11:11:13 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 1/3] session: initialize gstreamer
 once
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
Content-Type: multipart/mixed; boundary="===============2099343195=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2099343195==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q2tbwvgpbp4zvyut"
Content-Disposition: inline


--q2tbwvgpbp4zvyut
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 09, 2019 at 06:45:57AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > GStreamer is required since v0.36 with 83ab7ca "build-sys: drop
> > gstvideo option, make it required" in 2019-01-15 by Marc-Andr=E9 Lureau
> > <marcandre.lureau@redhat.com>
> >=20
> > Both channel-display-gst.c and spice-gstaudio.c have to double check
> > that GStreamer was initialized with gst_init_check() but this can be
> > done once per SpiceSession and make those code path a little bit
> > lighter with simpler check gst_is_initialized()
> >=20
>=20
> Calling gstvideo_init or gst_is_initialized is not much difference,
> potentially calling gstvideo_init is faster as the function is in
> the same module (you can cache initialization done).
> This series seems to reuse code to initialize GStreamer but this
> can simply be achieved calling gstvideo_init from the audio side
> (or write a better initialization function).
> This patch increase SpiceSession code for not great reasons,
> SpiceSession does nothing direct with Gstreamer.

Well, the initial idea really was to init + deinit so it might be
lacking purpose now. So we can drop to avoid not important
discussions.

> > This first patch does initialize a SpiceSession on it's init. As the
> > current code path does not call gst_deinit(), we are not doing it so
> > here as well but it can be later optimized to be sure resources are
> > cleaned correctly on GStreamer side.
> >=20
> This sentence is wrong. We can't do it.

Leftover from v1, thanks.

> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/spice-session.c | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >=20
> > diff --git a/src/spice-session.c b/src/spice-session.c
> > index d0d9e54..2f44816 100644
> > --- a/src/spice-session.c
> > +++ b/src/spice-session.c
> > @@ -21,6 +21,7 @@
> >  #include <gio/gnetworking.h>
> >  #include <gio/gio.h>
> >  #include <glib.h>
> > +#include <gst/gst.h>
> >  #ifdef G_OS_UNIX
> >  #include <gio/gunixsocketaddress.h>
> >  #endif
> > @@ -234,6 +235,7 @@
> > G_STATIC_ASSERT(G_N_ELEMENTS(_spice_image_compress_values) =3D=3D
> > SPICE_IMAGE_COMPRE
> > =20
> >  static const gchar* spice_session_get_shared_dir(SpiceSession *session=
);
> >  static void spice_session_set_shared_dir(SpiceSession *session, const =
gchar
> >  *dir);
> > +static void spice_session_enable_gstreamer(SpiceSession *session);
> > =20
> >  GType
> >  spice_image_compress_get_type (void)
> > @@ -295,6 +297,7 @@ static void spice_session_init(SpiceSession *sessio=
n)
> >      s->images =3D cache_image_new((GDestroyNotify)pixman_image_unref);
> >      s->glz_window =3D glz_decoder_window_new();
> >      update_proxy(session, NULL);
> > +    spice_session_enable_gstreamer(session);
> >  }
> > =20
> >  static void
> > @@ -2865,3 +2868,22 @@ gboolean
> > spice_session_set_migration_session(SpiceSession *session, SpiceSession
> > =20
> >      return TRUE;
> >  }
> > +
> > +static void
> > +spice_session_enable_gstreamer(SpiceSession *session)
> > +{
> > +    g_return_if_fail(SPICE_IS_SESSION(session));
>=20
> session argument is used only here,

Leftover from v1, thanks.

> to me it seems this utility function is more gstreamer related
> then SpiceSession related. The fact that you have to include
> gstreamer header just for that utility confirms to me that this
> utility should be in another, more gstreamer related, source
> file.

Not sure what would be the issue with initializing GStreamer on
Session init and everywhere else, that is, channel-display-gst
and spice-gstaudio, we only check that gst functions can be used.
Having multiple/different channels to potentially init gstreamer
seems weirder than initialize in the session object. Another way
to put it, gst_init_check() should have argc/argv arguments for
command line parsing and giving that to spice-display-gst and
spice-gstaudio  (...)

Maybe a spice_client_init() would make sense but I don't feel
this changes are really a requirement for a new API so, again,
just dropping it.

> > +    if (gst_is_initialized()) {
> > +        /* Either called by spice client or in previous SpiceSession */
> > +        return;
> > +    }
> > +
> > +    /* TODO: Provide argc and argv to GStreamer for command line filte=
ring
> > on
> > +     * spice-gtk level, otherwise only applications that run gst_init()
> > first
> > +     * would filter command line options */
> > +    GError *err =3D NULL;
> > +    if (!gst_init_check(NULL, NULL, &err)) {
> > +        spice_warning("Disabling GStreamer video support: %s",
> > err->message);
> > +        g_clear_error(&err);
> > +    }
> > +}
>=20
> Frediano

--q2tbwvgpbp4zvyut
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl12M1AACgkQl9kSPeN6
SE/n6A//cMsPcOHfIYXO1AxWNarUvnHRLYXTn1SFhuEYnENCux8WcWbTRNrF3Zw0
i5cZpAWNk1ix5OgURYxpijcVakMwBsTZYaIM/fgrTXA3EY/kFPLgHOvGgF1pZ9Y9
2L4ka+TR42VGsGnggZ6SUK2prglIj2FK93km312tjaJcj8mzBWmrdvqzJ9+xbp8d
0gzeRQYEF7DxPxVlerl/mCSngdD+L4jYDaAl1HM++O2yffE9Av9rnjHDieUzCqvZ
WeZNLJz3fSvGC7Y7wceV27CsF6odKfjJbCXQmB6AQAMXbJBRO4+xUo79O8tBj26p
cWnbLN5gN64QIP3Y4sNEmrNp9VkHxb4wmBquI+ZJfF2DBL3myer2ZlWoGsCyG87V
9jLgZuVZNuqtIfIn2SA2ZXHsm3tLNWHN1YD/RKYsLF4B9H1C4FwUpv0iiiMK96Cx
QKhNcrqlSTNgBh9uCfFIONtc/qU2GHOdQOQHPEpq3gJIQ7sPkZLUiGGvTA7NZ6Gh
DaHqle5t1dWD3N82pNtuD7B8FkvwaoZSwOprDa/zSTXmCebMPRB37vITc+XHSppn
MoXBv89Ag3pOjKRUm+9SYcmb9IIIO4yIoqLqamtgQQX2b7U4DaL9/XTU+bIV8ZIX
W7fcvrKvVBs+LGp06RgbusG7zxaq7vYdZPPhpqZiRVD31q3fOWI=
=F8+U
-----END PGP SIGNATURE-----

--q2tbwvgpbp4zvyut--

--===============2099343195==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2099343195==--
