Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1CB6525B
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 09:22:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B726E0A6;
	Thu, 11 Jul 2019 07:22:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2EF6E0A6
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 07:22:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 77376307F5FF
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 07:22:01 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F2F915D71D;
 Thu, 11 Jul 2019 07:22:00 +0000 (UTC)
Date: Thu, 11 Jul 2019 09:22:00 +0200
From: Victor Toso <victortoso@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <20190711072200.emoa3sfn4ymppgxf@wingsuit>
References: <20190704102922.17433-1-kpouget@redhat.com>
 <20190711061636.7atf6kg7oo43f4cs@wingsuit>
 <CADJ1XR2aKM-WwP_54-Ou33b9XbQErbGht_Az7_GEJfCqyG3g-A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADJ1XR2aKM-WwP_54-Ou33b9XbQErbGht_Az7_GEJfCqyG3g-A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 11 Jul 2019 07:22:01 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] spice-client-gtk-module:
 allow sending multiple preferred video codecs
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1954794696=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1954794696==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6wootumv4hmesinb"
Content-Disposition: inline


--6wootumv4hmesinb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 11, 2019 at 08:52:44AM +0200, Kevin Pouget wrote:
> Hello,
>=20
> On Thu, Jul 11, 2019 at 8:16 AM Victor Toso <victortoso@redhat.com> wrote:
> >
> > Hi,
> >
> > On Thu, Jul 04, 2019 at 12:29:21PM +0200, Kevin Pouget wrote:
> > > spice_display_channel_change_preferred_video_codec_types: new function
> > > for sending an array of video codecs instead of only one.
> > >
> > > Signed-off-by: Kevin Pouget <kpouget@redhat.com>
> >
> > Looks fine,
> >
> > > ---
> > >  doc/reference/spice-gtk-sections.txt |  1 +
> > >  src/channel-display.c                | 76 +++++++++++++++++++++++---=
--
> > >  src/channel-display.h                |  2 +
> > >  src/map-file                         |  1 +
> > >  src/spice-glib-sym-file              |  1 +
> > >  5 files changed, 68 insertions(+), 13 deletions(-)
> > >
> > > diff --git a/doc/reference/spice-gtk-sections.txt b/doc/reference/spi=
ce-gtk-sections.txt
> > > index a0336aa..33f4038 100644
> > > --- a/doc/reference/spice-gtk-sections.txt
> > > +++ b/doc/reference/spice-gtk-sections.txt
> > > @@ -185,6 +185,7 @@ spice_display_change_preferred_compression
> > >  spice_display_channel_change_preferred_compression
> > >  spice_display_change_preferred_video_codec_type
> > >  spice_display_channel_change_preferred_video_codec_type
> > > +spice_display_channel_change_preferred_video_codec_types
> >
> > Sounds like we could deprecate the previous one but IMHO,
>=20
> yes, the previous one should be deprecated, no good reason to keep both.
> Should I update the patch ?

My point was that we might keep it and deprecate both later on
when we define a better protocol message but I don't really mind.
Yep, you can do it in this patch as it introduces the
replacement.
=20
> > eventually this preferred-video-codec protocol message might be
> > replaced by something with more relevant info of decoding
> > capabilities for better decision on encoding side... video-codec
> > type alone doesn't say much but for the time being, it was what
> > we could get...
>=20
> indeed, we'll see with the rest of the smart streaming work what
> relevant information the client can tell

Yeah! Not trivial to get this info reliably but it would be
smart.

> > >  spice_gl_scanout_free
> > >  <SUBSECTION Standard>
> > >  SPICE_DISPLAY_CHANNEL
> > > diff --git a/src/channel-display.c b/src/channel-display.c
> > > index 9a83c53..4558a56 100644
> > > --- a/src/channel-display.c
> > > +++ b/src/channel-display.c
> > > @@ -20,6 +20,7 @@
> > >  #ifdef HAVE_SYS_TYPES_H
> > >  #include <sys/types.h>
> > >  #endif
> > > +#include <glib/gi18n-lib.h>
> > >
> > >  #include "spice-client.h"
> > >  #include "spice-common.h"
> > > @@ -610,18 +611,15 @@ void spice_display_channel_change_preferred_com=
pression(SpiceChannel *channel, g
> > >  }
> > >
> > >  static void spice_display_send_client_preferred_video_codecs(SpiceCh=
annel *channel,
> > > -                                                             const G=
Array *codecs)
> > > +                                                             const g=
int *codecs, gsize ncodecs)
> > >  {
> > > -    guint i;
> > >      SpiceMsgOut *out;
> > >      SpiceMsgcDisplayPreferredVideoCodecType *msg;
> > >
> > >      msg =3D g_malloc0(sizeof(SpiceMsgcDisplayPreferredVideoCodecType=
) +
> > > -                    (sizeof(SpiceVideoCodecType) * codecs->len));
> > > -    msg->num_of_codecs =3D codecs->len;
> > > -    for (i =3D 0; i < codecs->len; i++) {
> > > -        msg->codecs[i] =3D g_array_index(codecs, gint, i);
> > > -    }
> > > +                    (sizeof(SpiceVideoCodecType) * ncodecs));
> > > +    msg->num_of_codecs =3D ncodecs;
> > > +    memcpy(msg->codecs, codecs, sizeof(*codecs) * ncodecs);
> > >
> > >      out =3D spice_msg_out_new(channel, SPICE_MSGC_DISPLAY_PREFERRED_=
VIDEO_CODEC_TYPE);
> > >      out->marshallers->msgc_display_preferred_video_codec_type(out->m=
arshaller, msg);
> > > @@ -659,8 +657,6 @@ void spice_display_change_preferred_video_codec_t=
ype(SpiceChannel *channel, gint
> > >   */
> > >  void spice_display_channel_change_preferred_video_codec_type(SpiceCh=
annel *channel, gint codec_type)
> > >  {
> > > -    GArray *codecs;
> > > -
> > >      g_return_if_fail(SPICE_IS_DISPLAY_CHANNEL(channel));
> > >      g_return_if_fail(codec_type >=3D SPICE_VIDEO_CODEC_TYPE_MJPEG &&
> > >                       codec_type < SPICE_VIDEO_CODEC_TYPE_ENUM_END);
> > > @@ -675,10 +671,64 @@ void spice_display_channel_change_preferred_vid=
eo_codec_type(SpiceChannel *chann
> > >       * This array can be rearranged to have @codec_type in the front=
 (which is
> > >       * the preferred for the client side) */
> > >      CHANNEL_DEBUG(channel, "changing preferred video codec type to %=
s", gst_opts[codec_type].name);
> > > -    codecs =3D g_array_new(FALSE, FALSE, sizeof(gint));
> > > -    g_array_append_val(codecs, codec_type);
> > > -    spice_display_send_client_preferred_video_codecs(channel, codecs=
);
> > > -    g_array_unref(codecs);
> > > +    spice_display_send_client_preferred_video_codecs(channel, &codec=
_type, 1);
> > > +}
> > > +
> > > +/**
> > > + * spice_display_channel_change_preferred_video_codecs_types:
> > > + * @channel: a #SpiceDisplayChannel
> > > + * @codecs: an array of @ncodecs #SpiceVideoCodecType types
> > > + * @ncodecs: the number of codec types in the @codecs array
> > > + * @err: #GError describing the reason why the change failed
> > > + *
> > > + * Tells the spice server the ordered preferred video codec types to
> > > + * use for streaming in @channel.
> > > + *
> > > + * Returns: %TRUE if the preferred codec list was successfully chang=
ed, and %FALSE
> > > + * otherwise.
> > > + *
> > > + * Since: 0.38
> > > + */
> > > +gboolean spice_display_channel_change_preferred_video_codec_types(Sp=
iceChannel *channel,
> > > +                                                                  co=
nst gint *codecs, gsize ncodecs,
> > > +                                                                  GE=
rror **err)
> > > +{
> > > +    gsize i;
> > > +    GString *msg;
> > > +
> > > +    g_return_val_if_fail(SPICE_IS_DISPLAY_CHANNEL(channel), FALSE);
> >
> > Is it expected to work with ncodecs =3D 0? (Didn't follow previous
> > discussion)
>=20
> I will add this guard:
>=20
> > g_return_val_if_fail(ncodecs !=3D 0, FALSE);
>=20
> as the server side doesnt't want to receive 0 codecs:

Ok

> > in dcc.c:dcc_handle_preferred_video_codec_type() :
> >> g_return_val_if_fail(msg->num_of_codecs > 0, TRUE);
>=20
> > Didn't test yet but looks fine.
>=20
> thanks,
>
> Kevin
>=20
> > > +
> > > +    if (!spice_channel_test_capability(channel, SPICE_DISPLAY_CAP_PR=
EF_VIDEO_CODEC_TYPE)) {
> > > +        CHANNEL_DEBUG(channel, "does not have capability to change t=
he preferred video codec type");
> > > +        g_set_error_literal(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ER=
ROR_FAILED,
> > > +                            _("Channel does not have capability to c=
hange the preferred video codec type"));
> > > +
> > > +        return FALSE;
> > > +    }
> > > +
> > > +    msg =3D g_string_new("changing preferred video codec type to: ");
> > > +    for (i =3D 0; i < ncodecs; i++) {
> > > +        gint codec_type =3D codecs[i];
> > > +
> > > +        if (codec_type < SPICE_VIDEO_CODEC_TYPE_MJPEG ||
> > > +            codec_type >=3D SPICE_VIDEO_CODEC_TYPE_ENUM_END)
> > > +        {

Open braces should be in the above line

With this and the guard above,
Acked-by: Victor Toso <victortoso@redhat.com>

> > > +            g_string_free(msg, TRUE);
> > > +            g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_=
FAILED,
> > > +                        _("Invalid codec-type found (%d) ... "), cod=
ec_type);
> > > +
> > > +            return FALSE;
> > > +        }
> > > +
> > > +        g_string_append_printf(msg, "%s ", gst_opts[codec_type].name=
);
> > > +
> > > +    }
> > > +    CHANNEL_DEBUG(channel, "%s", msg->str);
> > > +    g_string_free(msg, TRUE);
> > > +
> > > +    spice_display_send_client_preferred_video_codecs(channel, codecs=
, ncodecs);
> > > +
> > > +    return TRUE;
> > >  }
> > >
> > >  /**
> > > diff --git a/src/channel-display.h b/src/channel-display.h
> > > index 5b48d2f..cf18538 100644
> > > --- a/src/channel-display.h
> > > +++ b/src/channel-display.h
> > > @@ -150,6 +150,8 @@ gboolean        spice_display_channel_get_primary=
(SpiceChannel *channel, guint32
> > >
> > >  void spice_display_channel_change_preferred_compression(SpiceChannel=
 *channel, gint compression);
> > >  void spice_display_channel_change_preferred_video_codec_type(SpiceCh=
annel *channel, gint codec_type);
> > > +gboolean spice_display_channel_change_preferred_video_codec_types(Sp=
iceChannel *channel, const gint *codecs,
> > > +                                                                  gs=
ize ncodecs, GError **err);
> > >
> > >  GType           spice_gl_scanout_get_type     (void) G_GNUC_CONST;
> > >  void            spice_gl_scanout_free         (SpiceGlScanout *scano=
ut);
> > > diff --git a/src/map-file b/src/map-file
> > > index 500683c..3cb9873 100644
> > > --- a/src/map-file
> > > +++ b/src/map-file
> > > @@ -25,6 +25,7 @@ spice_display_change_preferred_compression;
> > >  spice_display_change_preferred_video_codec_type;
> > >  spice_display_channel_change_preferred_compression;
> > >  spice_display_channel_change_preferred_video_codec_type;
> > > +spice_display_channel_change_preferred_video_codec_types;
> > >  spice_display_channel_get_gl_scanout;
> > >  spice_display_channel_get_primary;
> > >  spice_display_channel_get_type;
> > > diff --git a/src/spice-glib-sym-file b/src/spice-glib-sym-file
> > > index 2df1cc0..c3b2561 100644
> > > --- a/src/spice-glib-sym-file
> > > +++ b/src/spice-glib-sym-file
> > > @@ -23,6 +23,7 @@ spice_display_change_preferred_compression
> > >  spice_display_change_preferred_video_codec_type
> > >  spice_display_channel_change_preferred_compression
> > >  spice_display_channel_change_preferred_video_codec_type
> > > +spice_display_channel_change_preferred_video_codec_types
> > >  spice_display_channel_get_gl_scanout
> > >  spice_display_channel_get_primary
> > >  spice_display_channel_get_type
> > > --
> > > 2.21.0
> > >
> > > _______________________________________________
> > > Spice-devel mailing list
> > > Spice-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/spice-devel

--6wootumv4hmesinb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0m45gACgkQl9kSPeN6
SE+QiA//fNY7MHxvpdRT3/dhUw4vIeVeFXxwvPTT9fOd4QHSD42PThBHWcPbisXh
gZKtX+eMlya8UETHjSBtokEcQPjBQkrjOY2eWA44/Tfwj49Iq2QDBy+t9YVs6llZ
YBEaXlnKqX4iLU6X9Zgn3A19c0cRRKl6+Ec5gGn8iF5Ammfl83AwPn+jEPWyPLPh
maln9lZ3eBGgwoVh9D7xLgabezqOrsT/vTxdUMS/4Mrjh011CknPryaAvomAsz3G
dXgC9Smq0QvH0ziC/fxG/S2jJ9uh9o0cePcWna9F1xSQqGxBrU9TCzJN6Yxv1m2q
apzrX+oJqmNzyx3IgWZ09IbPH5Yh13r4qWf75DU7nMk3T/kJTdIMX3+tzMtw6B4n
dZTPQ+Jr186IPLG6lnwjrcWvzQETvvssroXZ3ocJfK1d5OiD0s7q0cyrTZEntTJS
Wh4B1jY7csxJxEnCVBwOSiV5P5Ij30moiIm9eTow/oPJyAZYOv/Yk0b+vU95Ois9
dCoNGakYVel5PQiQuSb0TEoUZXQlMGmmXDnD4HaEIN/h4IJBSWyjvLSnJF8MKQha
9SuBX9UImIVPJhyT40DCazEckkdWq3SrF1LYtE5QY448L90TAK/KdcZ+ea4N1wqN
Eq6tUaTqCaKBEwxcH2GnAXe7PSKCPRcODSE2AbvEWBfX4HPK0BQ=
=JdYO
-----END PGP SIGNATURE-----

--6wootumv4hmesinb--

--===============1954794696==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1954794696==--
