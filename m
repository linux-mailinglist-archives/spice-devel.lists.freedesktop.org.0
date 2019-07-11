Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FE2651C3
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 08:16:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5928989C89;
	Thu, 11 Jul 2019 06:16:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E854889C89
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 06:16:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 68B0981F25
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 06:16:37 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 165B81001B29;
 Thu, 11 Jul 2019 06:16:36 +0000 (UTC)
Date: Thu, 11 Jul 2019 08:16:36 +0200
From: Victor Toso <victortoso@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <20190711061636.7atf6kg7oo43f4cs@wingsuit>
References: <20190704102922.17433-1-kpouget@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190704102922.17433-1-kpouget@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 11 Jul 2019 06:16:37 +0000 (UTC)
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0301601436=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0301601436==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2xzosynlpm7stxj7"
Content-Disposition: inline


--2xzosynlpm7stxj7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 04, 2019 at 12:29:21PM +0200, Kevin Pouget wrote:
> spice_display_channel_change_preferred_video_codec_types: new function
> for sending an array of video codecs instead of only one.
>=20
> Signed-off-by: Kevin Pouget <kpouget@redhat.com>

Looks fine,

> ---
>  doc/reference/spice-gtk-sections.txt |  1 +
>  src/channel-display.c                | 76 +++++++++++++++++++++++-----
>  src/channel-display.h                |  2 +
>  src/map-file                         |  1 +
>  src/spice-glib-sym-file              |  1 +
>  5 files changed, 68 insertions(+), 13 deletions(-)
>=20
> diff --git a/doc/reference/spice-gtk-sections.txt b/doc/reference/spice-g=
tk-sections.txt
> index a0336aa..33f4038 100644
> --- a/doc/reference/spice-gtk-sections.txt
> +++ b/doc/reference/spice-gtk-sections.txt
> @@ -185,6 +185,7 @@ spice_display_change_preferred_compression
>  spice_display_channel_change_preferred_compression
>  spice_display_change_preferred_video_codec_type
>  spice_display_channel_change_preferred_video_codec_type
> +spice_display_channel_change_preferred_video_codec_types

Sounds like we could deprecate the previous one but IMHO,
eventually this preferred-video-codec protocol message might be
replaced by something with more relevant info of decoding
capabilities for better decision on encoding side... video-codec
type alone doesn't say much but for the time being, it was what
we could get...

>  spice_gl_scanout_free
>  <SUBSECTION Standard>
>  SPICE_DISPLAY_CHANNEL
> diff --git a/src/channel-display.c b/src/channel-display.c
> index 9a83c53..4558a56 100644
> --- a/src/channel-display.c
> +++ b/src/channel-display.c
> @@ -20,6 +20,7 @@
>  #ifdef HAVE_SYS_TYPES_H
>  #include <sys/types.h>
>  #endif
> +#include <glib/gi18n-lib.h>
> =20
>  #include "spice-client.h"
>  #include "spice-common.h"
> @@ -610,18 +611,15 @@ void spice_display_channel_change_preferred_compres=
sion(SpiceChannel *channel, g
>  }
> =20
>  static void spice_display_send_client_preferred_video_codecs(SpiceChanne=
l *channel,
> -                                                             const GArra=
y *codecs)
> +                                                             const gint =
*codecs, gsize ncodecs)
>  {
> -    guint i;
>      SpiceMsgOut *out;
>      SpiceMsgcDisplayPreferredVideoCodecType *msg;
> =20
>      msg =3D g_malloc0(sizeof(SpiceMsgcDisplayPreferredVideoCodecType) +
> -                    (sizeof(SpiceVideoCodecType) * codecs->len));
> -    msg->num_of_codecs =3D codecs->len;
> -    for (i =3D 0; i < codecs->len; i++) {
> -        msg->codecs[i] =3D g_array_index(codecs, gint, i);
> -    }
> +                    (sizeof(SpiceVideoCodecType) * ncodecs));
> +    msg->num_of_codecs =3D ncodecs;
> +    memcpy(msg->codecs, codecs, sizeof(*codecs) * ncodecs);
> =20
>      out =3D spice_msg_out_new(channel, SPICE_MSGC_DISPLAY_PREFERRED_VIDE=
O_CODEC_TYPE);
>      out->marshallers->msgc_display_preferred_video_codec_type(out->marsh=
aller, msg);
> @@ -659,8 +657,6 @@ void spice_display_change_preferred_video_codec_type(=
SpiceChannel *channel, gint
>   */
>  void spice_display_channel_change_preferred_video_codec_type(SpiceChanne=
l *channel, gint codec_type)
>  {
> -    GArray *codecs;
> -
>      g_return_if_fail(SPICE_IS_DISPLAY_CHANNEL(channel));
>      g_return_if_fail(codec_type >=3D SPICE_VIDEO_CODEC_TYPE_MJPEG &&
>                       codec_type < SPICE_VIDEO_CODEC_TYPE_ENUM_END);
> @@ -675,10 +671,64 @@ void spice_display_channel_change_preferred_video_c=
odec_type(SpiceChannel *chann
>       * This array can be rearranged to have @codec_type in the front (wh=
ich is
>       * the preferred for the client side) */
>      CHANNEL_DEBUG(channel, "changing preferred video codec type to %s", =
gst_opts[codec_type].name);
> -    codecs =3D g_array_new(FALSE, FALSE, sizeof(gint));
> -    g_array_append_val(codecs, codec_type);
> -    spice_display_send_client_preferred_video_codecs(channel, codecs);
> -    g_array_unref(codecs);
> +    spice_display_send_client_preferred_video_codecs(channel, &codec_typ=
e, 1);
> +}
> +
> +/**
> + * spice_display_channel_change_preferred_video_codecs_types:
> + * @channel: a #SpiceDisplayChannel
> + * @codecs: an array of @ncodecs #SpiceVideoCodecType types
> + * @ncodecs: the number of codec types in the @codecs array
> + * @err: #GError describing the reason why the change failed
> + *
> + * Tells the spice server the ordered preferred video codec types to
> + * use for streaming in @channel.
> + *
> + * Returns: %TRUE if the preferred codec list was successfully changed, =
and %FALSE
> + * otherwise.
> + *
> + * Since: 0.38
> + */
> +gboolean spice_display_channel_change_preferred_video_codec_types(SpiceC=
hannel *channel,
> +                                                                  const =
gint *codecs, gsize ncodecs,
> +                                                                  GError=
 **err)
> +{
> +    gsize i;
> +    GString *msg;
> +
> +    g_return_val_if_fail(SPICE_IS_DISPLAY_CHANNEL(channel), FALSE);

Is it expected to work with ncodecs =3D 0? (Didn't follow previous
discussion)

Didn't test yet but looks fine.

> +
> +    if (!spice_channel_test_capability(channel, SPICE_DISPLAY_CAP_PREF_V=
IDEO_CODEC_TYPE)) {
> +        CHANNEL_DEBUG(channel, "does not have capability to change the p=
referred video codec type");
> +        g_set_error_literal(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_=
FAILED,
> +                            _("Channel does not have capability to chang=
e the preferred video codec type"));
> +
> +        return FALSE;
> +    }
> +
> +    msg =3D g_string_new("changing preferred video codec type to: ");
> +    for (i =3D 0; i < ncodecs; i++) {
> +        gint codec_type =3D codecs[i];
> +
> +        if (codec_type < SPICE_VIDEO_CODEC_TYPE_MJPEG ||
> +            codec_type >=3D SPICE_VIDEO_CODEC_TYPE_ENUM_END)
> +        {
> +            g_string_free(msg, TRUE);
> +            g_set_error(err, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAIL=
ED,
> +                        _("Invalid codec-type found (%d) ... "), codec_t=
ype);
> +
> +            return FALSE;
> +        }
> +
> +        g_string_append_printf(msg, "%s ", gst_opts[codec_type].name);
> +
> +    }
> +    CHANNEL_DEBUG(channel, "%s", msg->str);
> +    g_string_free(msg, TRUE);
> +
> +    spice_display_send_client_preferred_video_codecs(channel, codecs, nc=
odecs);
> +
> +    return TRUE;
>  }
> =20
>  /**
> diff --git a/src/channel-display.h b/src/channel-display.h
> index 5b48d2f..cf18538 100644
> --- a/src/channel-display.h
> +++ b/src/channel-display.h
> @@ -150,6 +150,8 @@ gboolean        spice_display_channel_get_primary(Spi=
ceChannel *channel, guint32
> =20
>  void spice_display_channel_change_preferred_compression(SpiceChannel *ch=
annel, gint compression);
>  void spice_display_channel_change_preferred_video_codec_type(SpiceChanne=
l *channel, gint codec_type);
> +gboolean spice_display_channel_change_preferred_video_codec_types(SpiceC=
hannel *channel, const gint *codecs,
> +                                                                  gsize =
ncodecs, GError **err);
> =20
>  GType           spice_gl_scanout_get_type     (void) G_GNUC_CONST;
>  void            spice_gl_scanout_free         (SpiceGlScanout *scanout);
> diff --git a/src/map-file b/src/map-file
> index 500683c..3cb9873 100644
> --- a/src/map-file
> +++ b/src/map-file
> @@ -25,6 +25,7 @@ spice_display_change_preferred_compression;
>  spice_display_change_preferred_video_codec_type;
>  spice_display_channel_change_preferred_compression;
>  spice_display_channel_change_preferred_video_codec_type;
> +spice_display_channel_change_preferred_video_codec_types;
>  spice_display_channel_get_gl_scanout;
>  spice_display_channel_get_primary;
>  spice_display_channel_get_type;
> diff --git a/src/spice-glib-sym-file b/src/spice-glib-sym-file
> index 2df1cc0..c3b2561 100644
> --- a/src/spice-glib-sym-file
> +++ b/src/spice-glib-sym-file
> @@ -23,6 +23,7 @@ spice_display_change_preferred_compression
>  spice_display_change_preferred_video_codec_type
>  spice_display_channel_change_preferred_compression
>  spice_display_channel_change_preferred_video_codec_type
> +spice_display_channel_change_preferred_video_codec_types
>  spice_display_channel_get_gl_scanout
>  spice_display_channel_get_primary
>  spice_display_channel_get_type
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--2xzosynlpm7stxj7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0m1EQACgkQl9kSPeN6
SE/xRhAAswjBU2III9TsphjehZQDcM96otpFWoMju7wmjcGKBuijZ+IzeU642Y6Y
OzYRnipXZTYsCxYp5+qbLisK7doHqy8q6c0IbLyPWPlMznQ68yPAEvv3TvqSvQbR
cC8G8GUFaacL9gRj8dK9COEzTJYbp1PSKqs6L+6p/zpDnEAHrEox+s1t3idER3bz
om2e3Ew81dM0lwUW/hzeEFhHsVAfQ61HIwGPC79cDjuQAlxLhohIMtfKat95UFgc
XBH68WcMqR/RwVk8/Grgs+240uoGlUUd4ypclpVo0QpjySCi7+gGTO/UCmyPqo7V
PBGol1bAoemzGismm/9qLWVB8Q/VLY/xa1u3bIo1jHX74awHy1O/iKdjWN0qWo2S
WMMb9Dvp20Yo1tr9m6SScWSMcwrzNsl2/MNhxozx4juPsFWHsfyEKRm4uWUwfEd7
n9Q8ZpCocnqmzapm+OEJvRFHuit78JrE2BgkKU2WfU1qRJJyQvVy3WkWELywOcka
awSgt6p1PnpzO/2eWikIqUeFaV9j1u537++wFOeKKCzgt6D1hjqa3Nke3eRMSfjQ
V2M68fm5VF/fTBAhAe9/bgQrr98ihyLJUEdhEzNaVagWZFWO1t3J5BFD1pNxLWZU
h0BxcEMjUlpMyx9fBFE5h1Xg/OeULch+imMRRj+29k7SOp2vXfY=
=4sZ6
-----END PGP SIGNATURE-----

--2xzosynlpm7stxj7--

--===============0301601436==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0301601436==--
