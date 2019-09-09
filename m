Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B2AAD565
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 11:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4293C899DE;
	Mon,  9 Sep 2019 09:10:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57ECB899DE
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 09:10:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0258B142BFA
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 09:10:57 +0000 (UTC)
Received: from localhost (unknown [10.32.181.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2484B60BF3;
 Mon,  9 Sep 2019 09:10:52 +0000 (UTC)
Date: Mon, 9 Sep 2019 11:10:51 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190909091051.qia44wyxkbmuvgbm@wingsuit>
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-5-victortoso@redhat.com>
 <81380fde-14b8-1cec-f69f-f92692172510@redhat.com>
 <1075329485.11053740.1567961066784.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1075329485.11053740.1567961066784.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 09 Sep 2019 09:10:57 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============0867980428=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0867980428==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ky2kqpd3a74wct5g"
Content-Disposition: inline


--ky2kqpd3a74wct5g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Sep 08, 2019 at 12:44:26PM -0400, Frediano Ziglio wrote:
> >=20
> > Hi,
> >=20
> > On 9/2/19 7:04 PM, Victor Toso wrote:
> > > From: Victor Toso <me@victortoso.com>
> > >
> > > Let's gst_deinit() if we initialize it for the same rationale pointed=
 out
> > > in 0381e62 "spicy: Add call of gst_deinit at program exit" in
> > > 2017-10-20 by Christophe de Dinechin <dinechin@redhat.com>
> > >
> > > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > > ---
> > >   src/spice-session.c | 8 ++++++++
> > >   1 file changed, 8 insertions(+)
> > >
> > > diff --git a/src/spice-session.c b/src/spice-session.c
> > > index db40a53..2135348 100644
> > > --- a/src/spice-session.c
> > > +++ b/src/spice-session.c
> > > @@ -123,6 +123,8 @@ struct _SpiceSessionPrivate {
> > >       gchar             *name;
> > >       SpiceImageCompression preferred_compression;
> > >  =20
> > > +    bool              gst_init_by_spice;
> > > +
> > >       /* associated objects */
> > >       SpiceAudio        *audio_manager;
> > >       SpiceUsbDeviceManager *usb_manager;
> > > @@ -343,6 +345,10 @@ spice_session_dispose(GObject *gobject)
> > >       g_warn_if_fail(s->channels_destroying =3D=3D 0);
> > >       g_warn_if_fail(s->channels =3D=3D NULL);
> > >  =20
> > > +    if (session->priv->gst_init_by_spice) {
> > > +        gst_deinit();
> >=20
> > Wouldn't it deinit on migration? (IIRC a new session is
> > created)

Seems like it, should be fixed, thanks!

> > Actually gstreamer documentation states:
> >=20
> > "It is normally not needed to call this function in a normal application
> >  as the resources will automatically be freed when the program terminat=
es.
> >  This function is therefore mostly used by testsuites and other memory
> >  profiling tools."

The memory profiling tools might be what we are interested on, as
mentioned in the commit log, I quote the original commit:

 | Without this patch, if you run spicy with                               =
                              =20
 |  GST_DEBUG=3D"GST_TRACER:7" GST_TRACERS=3D"leaks" spicy ...             =
                           =20
 | the leak tracer does not show any output,
 | because it runs in gst_deinit.


If we are not introducing something that breaks the code and
might help on debug, I'm keen to have it. Without this patch we
would rely on clients to implement this in order to gstreamer's
leak tracer to work, like the patch for spicy 0381e62

> > Before it was used only by spicy which i guess it's
> > considered more of a test client, I'm not sure we would like
> > to deinit by the session (on the other hand i'm also not sure
> > how harmful it would be)
> >=20
> >=20
> > Snir.
> >=20
>=20
> Simply don't do it. Gstreamer is not well designed to call that function.
>=20
> It leads to potential memory bugs. The check should be
>=20
> if (I_initialized_gstreamer && nobody_is_using_or_assuming_is_initialized)
>    gst_deinit()

I agree that the check should be like that

> If A initialize Gstreamer and B don't but just check is initialized then
> when A call deinit the objects used by B will contain potential dangling
> pointers. One right interface would be simply init/deinit and use a count=
er
> to track the number of initialization.

All channels are related to SpiceSession, that's why I moved it
there. Seems reasonable to me at least.

I'll fix proposed changes and send a v2, many thanks for review!

 - toso

--ky2kqpd3a74wct5g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl12FxsACgkQl9kSPeN6
SE/G8g//S7R6Gfe+SBsloXR6GpZlY96Q9Wk3HTvFpXkWGhMKVWCNFD3MvFfCRT26
X/5YrOholqlTDgQTQKIxXdiaEKycKmg5cXKHEyXl7ByM1tRmCx0Qph1g7UnKtW4d
SsZAPtj10tXG2HW/m6u44iX95j9d1eferwBPvzWv0vfanCM/i4AamnH7FlyZhpOh
2QenGFAPQQ0bZ1yjimh2VOzeYPV3jzZsRwM2LKo4o71DmVtoPZaCscl3TYihcC65
AKRKPF86L2F+jsD4WI/+Ee+0RdxxaJlmU8VtG4vxjXleoVhDClU7FLVBOM6aPkWs
o9AaXls49Ttlk0sa3RXZg5ZZiXKGxR2H3WhuzhEYok9otSwbpB5yDBa+os1jV3Ci
0oB7ctQH3EcjqTO4LayO4Kc+0dtorx90w960JnJRxN5rMFQmdp0apxbdWka8Csjy
+XPM+MQ5PrHMf6EajLPFkq5agp9q+lcHbfdc3OkprDkm6tLdg1I5Iref3IaXlIj7
7M+/fZ8J8jA7QgooOKS5K1n8ifeyjq2qHAsBd4NbjmOKhxp7sCwroCAq/FfybZP6
wJ2OWTojCWVb3YNMp4Qo0ZHVFoil7QZ9NtqodDhRpx+gCAufMbCfe5oair1yF4v3
qvPIX96YZX2ARqwa9F1cytJoH21XYSUzmf9y4UqHYVaYPBkDgwc=
=taZl
-----END PGP SIGNATURE-----

--ky2kqpd3a74wct5g--

--===============0867980428==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0867980428==--
