Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E318AD535
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 11:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69DB888E95;
	Mon,  9 Sep 2019 09:01:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E65288E95
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 09:01:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D175C3174649
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 09:01:49 +0000 (UTC)
Received: from localhost (unknown [10.32.181.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7AAB919C78;
 Mon,  9 Sep 2019 09:01:49 +0000 (UTC)
Date: Mon, 9 Sep 2019 11:01:48 +0200
From: Victor Toso <victortoso@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <20190909090148.axo37j7lngkfdjut@wingsuit>
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-3-victortoso@redhat.com>
 <4c7556cd-225c-136b-279d-8563cf1cd0eb@redhat.com>
MIME-Version: 1.0
In-Reply-To: <4c7556cd-225c-136b-279d-8563cf1cd0eb@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 09 Sep 2019 09:01:49 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 2/6] display-gst: rely on
 SpiceSession init of GStreamer
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
Content-Type: multipart/mixed; boundary="===============1906628967=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1906628967==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="poimygupv542dc7e"
Content-Disposition: inline


--poimygupv542dc7e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Sep 08, 2019 at 04:25:32PM +0300, Snir Sheriber wrote:
> Hi,
>=20
>=20
> On 9/2/19 7:04 PM, Victor Toso wrote:
> > From: Victor Toso <me@victortoso.com>
> >=20
> > This means we can drop gstvideo_init() function and replace its calls
> > with gst_is_initialized().
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >   src/channel-display-gst.c | 23 +++++------------------
> >   1 file changed, 5 insertions(+), 18 deletions(-)
> >=20
> > diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> > index 6fccf62..a34b5d0 100644
> > --- a/src/channel-display-gst.c
> > +++ b/src/channel-display-gst.c
> > @@ -748,22 +748,6 @@ static gboolean spice_gst_decoder_queue_frame(Vide=
oDecoder *video_decoder,
> >       return TRUE;
> >   }
> > -static gboolean gstvideo_init(void)
> > -{
> > -    static int success =3D 0;
> > -    if (!success) {
> > -        GError *err =3D NULL;
> > -        if (gst_init_check(NULL, NULL, &err)) {
> > -            success =3D 1;
> > -        } else {
> > -            spice_warning("Disabling GStreamer video support: %s", err=
->message);
> > -            g_clear_error(&err);
> > -            success =3D -1;
> > -        }
> > -    }
> > -    return success > 0;
> > -}
> > -
> >   G_GNUC_INTERNAL
> >   VideoDecoder* create_gstreamer_decoder(int codec_type, display_stream=
 *stream)
> >   {
> > @@ -771,7 +755,7 @@ VideoDecoder* create_gstreamer_decoder(int codec_ty=
pe, display_stream *stream)
> >       g_return_val_if_fail(VALID_VIDEO_CODEC_TYPE(codec_type), NULL);
> > -    if (gstvideo_init()) {
> > +    if (gst_is_initialized()) {
>=20
> Since the logical thing to do is usually to initialize
> gstreamer once you start using it

Why? GStreamer is a library and I'd say the init is to be called
early on because that would deal with command line options,
environment variables etc. No extra delay on initializing this
kind of thing when we want to create a pipeline for video/audio
processing for instance is also valid argument.

> i would add a comment it's now initialized by the session (if
> not externally)
>=20
> (also on gstaudio)

Ok, no problem. Thanks!

>=20
> Snir.
>=20
> >           decoder =3D g_new0(SpiceGstDecoder, 1);
> >           decoder->base.destroy =3D spice_gst_decoder_destroy;
> >           decoder->base.reschedule =3D spice_gst_decoder_reschedule;
> > @@ -820,7 +804,10 @@ gboolean gstvideo_has_codec(int codec_type)
> >       GstCaps *caps;
> >       GstElementFactoryListType type;
> > -    g_return_val_if_fail(gstvideo_init(), FALSE);
> > +    if (!gst_is_initialized()) {
> > +        return FALSE;
> > +    }
> > +
> >       g_return_val_if_fail(VALID_VIDEO_CODEC_TYPE(codec_type), FALSE);
> >       type =3D GST_ELEMENT_FACTORY_TYPE_DECODER |
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--poimygupv542dc7e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl12FPwACgkQl9kSPeN6
SE8TeRAAsT/dlVPGMtKcbMmxFRbQLpyfcE+p54J6knVCLBn9i8lF1VemeBfBg0Y/
cPkssW2kEqSnBwlPmyuvqtyyzJJPHHaOE/cLNaFyqSuwaU/MqfFP8YIJqPDsSMLM
+xmukZNEhbUDeYDEmo9uYiddyBFBhoKKkFe+XEfrhRgvApXt65ZbqiOiaZE6+84N
/bWkDuSB5r0FmPojfoeRNs64zJQhPu1Sp710OhKZmdbgFNax2S7goKdimkWWjrln
1bgDcCsfGMtjc5ZC8e+Gi1gYTScoJbiZvKhWs3Qs3VixS2Jel7rU/eV/2XS+B8Et
OWYymfa2bRjDAZ5f11q1/O/iI4f7/O3QYPqnIM9mHifnUZURymuDcPvBYXEiJFaO
l2sD17mWkA8pRQ6/OXaicj64S5WVDOFK2e6Gx0a0rAuWANlWenXURypGCFv3BWql
RLPfSq/VPXanxr9QG5Y1bwVBOnSnoil3KNkvuFIxOsLpVLwPSDNCKu5lGfacqBk/
UpeNkyFN+j+9MbD8T88ZwF6rbhtSu5E3aMpSnQ3SmZ0+eRlIxy5lPQLXTtcZ3EOp
6Izo5IfsM2s/HfFiCWAAIUrWdABsvf4ZhMibFfU7GqdI7g0Ic2IX1J3p+J+MIdKk
fKbMIfRb7hMz0zO6B7P+Rlb4y76NjfgtjFhz/EAi/iJ8yUp2Xu4=
=LowD
-----END PGP SIGNATURE-----

--poimygupv542dc7e--

--===============1906628967==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1906628967==--
