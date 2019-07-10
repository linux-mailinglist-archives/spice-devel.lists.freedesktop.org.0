Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD7D649DF
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 17:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C586E102;
	Wed, 10 Jul 2019 15:41:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4136E6E102
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 15:41:51 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id 65so1952263oid.13
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 08:41:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=GtSXY0UtIllNUG0wS6gMEKUw+O7Quw2gSpeMZ0I45xQ=;
 b=aM2TGVrvmOMeIJHjw3elbwtzlfdOJAfDVmX2U1Xd2TJJXXwHTfQWmq8TIG947B5qzC
 8NXV7swm3EoBP4sddrN49JWI5Wl1wmBuhOACys35/mLb0U2U3NxKYPqvTOVzEQdXfon4
 YaNd8dnectUU24VghnnIQtRPoBMmnbDNJlUVPrcV0sAYxzCwbIi9OdDnsOI0ccE0OVYJ
 PpzkvV8F2SGk0n3dfqf6eYyVY0R1QyRq6eoY/ErXTL3LjowDaje3Ibj/JqOjrpBBMy3S
 VUagpLvFq+7xf92Y1uV6bpfnpPCIt7tRUtZ5zX1+tUkiCmKZ7CV61NEOal8RgqdIJDaT
 RPfA==
X-Gm-Message-State: APjAAAV2a8qyx3v8aYecB/2Va8FIBQTZGC0NmqVolm6YuCKK6QwgHXKd
 KgYXsVXtMrgKgGdXIsx+aeEKc9W5PZp48DAxiPl1kVm+
X-Google-Smtp-Source: APXvYqwJWNQzRo3K59+XqJz5YNJ+c/Kyn9iN9T26eJ/3e0LypfYtZsWAetD/ZVv4px7dokq1qB7HSczV98PC7v2SrD8=
X-Received: by 2002:aca:cf0f:: with SMTP id f15mr3579070oig.169.1562773310288; 
 Wed, 10 Jul 2019 08:41:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190704102922.17433-1-kpouget@redhat.com>
In-Reply-To: <20190704102922.17433-1-kpouget@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Wed, 10 Jul 2019 17:41:39 +0200
Message-ID: <CADJ1XR3YL7SaZqWL9RnaaVBB6ZZULUxwdcYs+8cfbA7xdZrexQ@mail.gmail.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
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
Content-Type: multipart/mixed; boundary="===============1267845861=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1267845861==
Content-Type: multipart/alternative; boundary="000000000000064d72058d5584bb"

--000000000000064d72058d5584bb
Content-Type: text/plain; charset="UTF-8"

ping

On Thu, Jul 4, 2019 at 12:29 PM Kevin Pouget <kpouget@redhat.com> wrote:

> spice_display_channel_change_preferred_video_codec_types: new function
> for sending an array of video codecs instead of only one.
>
> Signed-off-by: Kevin Pouget <kpouget@redhat.com>
> ---
>  doc/reference/spice-gtk-sections.txt |  1 +
>  src/channel-display.c                | 76 +++++++++++++++++++++++-----
>  src/channel-display.h                |  2 +
>  src/map-file                         |  1 +
>  src/spice-glib-sym-file              |  1 +
>  5 files changed, 68 insertions(+), 13 deletions(-)
>
> diff --git a/doc/reference/spice-gtk-sections.txt
> b/doc/reference/spice-gtk-sections.txt
> index a0336aa..33f4038 100644
> --- a/doc/reference/spice-gtk-sections.txt
> +++ b/doc/reference/spice-gtk-sections.txt
> @@ -185,6 +185,7 @@ spice_display_change_preferred_compression
>  spice_display_channel_change_preferred_compression
>  spice_display_change_preferred_video_codec_type
>  spice_display_channel_change_preferred_video_codec_type
> +spice_display_channel_change_preferred_video_codec_types
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
>
>  #include "spice-client.h"
>  #include "spice-common.h"
> @@ -610,18 +611,15 @@ void
> spice_display_channel_change_preferred_compression(SpiceChannel *channel, g
>  }
>
>  static void spice_display_send_client_preferred_video_codecs(SpiceChannel
> *channel,
> -                                                             const GArray
> *codecs)
> +                                                             const gint
> *codecs, gsize ncodecs)
>  {
> -    guint i;
>      SpiceMsgOut *out;
>      SpiceMsgcDisplayPreferredVideoCodecType *msg;
>
>      msg = g_malloc0(sizeof(SpiceMsgcDisplayPreferredVideoCodecType) +
> -                    (sizeof(SpiceVideoCodecType) * codecs->len));
> -    msg->num_of_codecs = codecs->len;
> -    for (i = 0; i < codecs->len; i++) {
> -        msg->codecs[i] = g_array_index(codecs, gint, i);
> -    }
> +                    (sizeof(SpiceVideoCodecType) * ncodecs));
> +    msg->num_of_codecs = ncodecs;
> +    memcpy(msg->codecs, codecs, sizeof(*codecs) * ncodecs);
>
>      out = spice_msg_out_new(channel,
> SPICE_MSGC_DISPLAY_PREFERRED_VIDEO_CODEC_TYPE);
>
>  out->marshallers->msgc_display_preferred_video_codec_type(out->marshaller,
> msg);
> @@ -659,8 +657,6 @@ void
> spice_display_change_preferred_video_codec_type(SpiceChannel *channel, gint
>   */
>  void spice_display_channel_change_preferred_video_codec_type(SpiceChannel
> *channel, gint codec_type)
>  {
> -    GArray *codecs;
> -
>      g_return_if_fail(SPICE_IS_DISPLAY_CHANNEL(channel));
>      g_return_if_fail(codec_type >= SPICE_VIDEO_CODEC_TYPE_MJPEG &&
>                       codec_type < SPICE_VIDEO_CODEC_TYPE_ENUM_END);
> @@ -675,10 +671,64 @@ void
> spice_display_channel_change_preferred_video_codec_type(SpiceChannel *chann
>       * This array can be rearranged to have @codec_type in the front
> (which is
>       * the preferred for the client side) */
>      CHANNEL_DEBUG(channel, "changing preferred video codec type to %s",
> gst_opts[codec_type].name);
> -    codecs = g_array_new(FALSE, FALSE, sizeof(gint));
> -    g_array_append_val(codecs, codec_type);
> -    spice_display_send_client_preferred_video_codecs(channel, codecs);
> -    g_array_unref(codecs);
> +    spice_display_send_client_preferred_video_codecs(channel,
> &codec_type, 1);
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
> + * Returns: %TRUE if the preferred codec list was successfully changed,
> and %FALSE
> + * otherwise.
> + *
> + * Since: 0.38
> + */
> +gboolean
> spice_display_channel_change_preferred_video_codec_types(SpiceChannel
> *channel,
> +                                                                  const
> gint *codecs, gsize ncodecs,
> +                                                                  GError
> **err)
> +{
> +    gsize i;
> +    GString *msg;
> +
> +    g_return_val_if_fail(SPICE_IS_DISPLAY_CHANNEL(channel), FALSE);
> +
> +    if (!spice_channel_test_capability(channel,
> SPICE_DISPLAY_CAP_PREF_VIDEO_CODEC_TYPE)) {
> +        CHANNEL_DEBUG(channel, "does not have capability to change the
> preferred video codec type");
> +        g_set_error_literal(err, SPICE_CLIENT_ERROR,
> SPICE_CLIENT_ERROR_FAILED,
> +                            _("Channel does not have capability to change
> the preferred video codec type"));
> +
> +        return FALSE;
> +    }
> +
> +    msg = g_string_new("changing preferred video codec type to: ");
> +    for (i = 0; i < ncodecs; i++) {
> +        gint codec_type = codecs[i];
> +
> +        if (codec_type < SPICE_VIDEO_CODEC_TYPE_MJPEG ||
> +            codec_type >= SPICE_VIDEO_CODEC_TYPE_ENUM_END)
> +        {
> +            g_string_free(msg, TRUE);
> +            g_set_error(err, SPICE_CLIENT_ERROR,
> SPICE_CLIENT_ERROR_FAILED,
> +                        _("Invalid codec-type found (%d) ... "),
> codec_type);
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
> +    spice_display_send_client_preferred_video_codecs(channel, codecs,
> ncodecs);
> +
> +    return TRUE;
>  }
>
>  /**
> diff --git a/src/channel-display.h b/src/channel-display.h
> index 5b48d2f..cf18538 100644
> --- a/src/channel-display.h
> +++ b/src/channel-display.h
> @@ -150,6 +150,8 @@ gboolean
> spice_display_channel_get_primary(SpiceChannel *channel, guint32
>
>  void spice_display_channel_change_preferred_compression(SpiceChannel
> *channel, gint compression);
>  void spice_display_channel_change_preferred_video_codec_type(SpiceChannel
> *channel, gint codec_type);
> +gboolean
> spice_display_channel_change_preferred_video_codec_types(SpiceChannel
> *channel, const gint *codecs,
> +                                                                  gsize
> ncodecs, GError **err);
>
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
> --
> 2.21.0
>
>

--000000000000064d72058d5584bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ping<br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Jul 4, 2019 at 12:29 PM Kevin Pouget &lt;<=
a href=3D"mailto:kpouget@redhat.com">kpouget@redhat.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">spice_display_channe=
l_change_preferred_video_codec_types: new function<br>
for sending an array of video codecs instead of only one.<br>
<br>
Signed-off-by: Kevin Pouget &lt;<a href=3D"mailto:kpouget@redhat.com" targe=
t=3D"_blank">kpouget@redhat.com</a>&gt;<br>
---<br>
=C2=A0doc/reference/spice-gtk-sections.txt |=C2=A0 1 +<br>
=C2=A0src/channel-display.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | 76 +++++++++++++++++++++++-----<br>
=C2=A0src/channel-display.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 |=C2=A0 2 +<br>
=C2=A0src/map-file=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 1 +<br>
=C2=A0src/spice-glib-sym-file=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 1 +<br>
=C2=A05 files changed, 68 insertions(+), 13 deletions(-)<br>
<br>
diff --git a/doc/reference/spice-gtk-sections.txt b/doc/reference/spice-gtk=
-sections.txt<br>
index a0336aa..33f4038 100644<br>
--- a/doc/reference/spice-gtk-sections.txt<br>
+++ b/doc/reference/spice-gtk-sections.txt<br>
@@ -185,6 +185,7 @@ spice_display_change_preferred_compression<br>
=C2=A0spice_display_channel_change_preferred_compression<br>
=C2=A0spice_display_change_preferred_video_codec_type<br>
=C2=A0spice_display_channel_change_preferred_video_codec_type<br>
+spice_display_channel_change_preferred_video_codec_types<br>
=C2=A0spice_gl_scanout_free<br>
=C2=A0&lt;SUBSECTION Standard&gt;<br>
=C2=A0SPICE_DISPLAY_CHANNEL<br>
diff --git a/src/channel-display.c b/src/channel-display.c<br>
index 9a83c53..4558a56 100644<br>
--- a/src/channel-display.c<br>
+++ b/src/channel-display.c<br>
@@ -20,6 +20,7 @@<br>
=C2=A0#ifdef HAVE_SYS_TYPES_H<br>
=C2=A0#include &lt;sys/types.h&gt;<br>
=C2=A0#endif<br>
+#include &lt;glib/gi18n-lib.h&gt;<br>
<br>
=C2=A0#include &quot;spice-client.h&quot;<br>
=C2=A0#include &quot;spice-common.h&quot;<br>
@@ -610,18 +611,15 @@ void spice_display_channel_change_preferred_compressi=
on(SpiceChannel *channel, g<br>
=C2=A0}<br>
<br>
=C2=A0static void spice_display_send_client_preferred_video_codecs(SpiceCha=
nnel *channel,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const =
GArray *codecs)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const =
gint *codecs, gsize ncodecs)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 guint i;<br>
=C2=A0 =C2=A0 =C2=A0SpiceMsgOut *out;<br>
=C2=A0 =C2=A0 =C2=A0SpiceMsgcDisplayPreferredVideoCodecType *msg;<br>
<br>
=C2=A0 =C2=A0 =C2=A0msg =3D g_malloc0(sizeof(SpiceMsgcDisplayPreferredVideo=
CodecType) +<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (siz=
eof(SpiceVideoCodecType) * codecs-&gt;len));<br>
-=C2=A0 =C2=A0 msg-&gt;num_of_codecs =3D codecs-&gt;len;<br>
-=C2=A0 =C2=A0 for (i =3D 0; i &lt; codecs-&gt;len; i++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 msg-&gt;codecs[i] =3D g_array_index(codecs, gi=
nt, i);<br>
-=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (siz=
eof(SpiceVideoCodecType) * ncodecs));<br>
+=C2=A0 =C2=A0 msg-&gt;num_of_codecs =3D ncodecs;<br>
+=C2=A0 =C2=A0 memcpy(msg-&gt;codecs, codecs, sizeof(*codecs) * ncodecs);<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0out =3D spice_msg_out_new(channel, SPICE_MSGC_DISPLAY_P=
REFERRED_VIDEO_CODEC_TYPE);<br>
=C2=A0 =C2=A0 =C2=A0out-&gt;marshallers-&gt;msgc_display_preferred_video_co=
dec_type(out-&gt;marshaller, msg);<br>
@@ -659,8 +657,6 @@ void spice_display_change_preferred_video_codec_type(Sp=
iceChannel *channel, gint<br>
=C2=A0 */<br>
=C2=A0void spice_display_channel_change_preferred_video_codec_type(SpiceCha=
nnel *channel, gint codec_type)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 GArray *codecs;<br>
-<br>
=C2=A0 =C2=A0 =C2=A0g_return_if_fail(SPICE_IS_DISPLAY_CHANNEL(channel));<br=
>
=C2=A0 =C2=A0 =C2=A0g_return_if_fail(codec_type &gt;=3D SPICE_VIDEO_CODEC_T=
YPE_MJPEG &amp;&amp;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 codec_type &lt; SPICE_VIDEO_CODEC_TYPE_ENUM_END);<br>
@@ -675,10 +671,64 @@ void spice_display_channel_change_preferred_video_cod=
ec_type(SpiceChannel *chann<br>
=C2=A0 =C2=A0 =C2=A0 * This array can be rearranged to have @codec_type in =
the front (which is<br>
=C2=A0 =C2=A0 =C2=A0 * the preferred for the client side) */<br>
=C2=A0 =C2=A0 =C2=A0CHANNEL_DEBUG(channel, &quot;changing preferred video c=
odec type to %s&quot;, gst_opts[codec_type].name);<br>
-=C2=A0 =C2=A0 codecs =3D g_array_new(FALSE, FALSE, sizeof(gint));<br>
-=C2=A0 =C2=A0 g_array_append_val(codecs, codec_type);<br>
-=C2=A0 =C2=A0 spice_display_send_client_preferred_video_codecs(channel, co=
decs);<br>
-=C2=A0 =C2=A0 g_array_unref(codecs);<br>
+=C2=A0 =C2=A0 spice_display_send_client_preferred_video_codecs(channel, &a=
mp;codec_type, 1);<br>
+}<br>
+<br>
+/**<br>
+ * spice_display_channel_change_preferred_video_codecs_types:<br>
+ * @channel: a #SpiceDisplayChannel<br>
+ * @codecs: an array of @ncodecs #SpiceVideoCodecType types<br>
+ * @ncodecs: the number of codec types in the @codecs array<br>
+ * @err: #GError describing the reason why the change failed<br>
+ *<br>
+ * Tells the spice server the ordered preferred video codec types to<br>
+ * use for streaming in @channel.<br>
+ *<br>
+ * Returns: %TRUE if the preferred codec list was successfully changed, an=
d %FALSE<br>
+ * otherwise.<br>
+ *<br>
+ * Since: 0.38<br>
+ */<br>
+gboolean spice_display_channel_change_preferred_video_codec_types(SpiceCha=
nnel *channel,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 const gint *codecs, gsize ncodecs,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 GError **err)<br>
+{<br>
+=C2=A0 =C2=A0 gsize i;<br>
+=C2=A0 =C2=A0 GString *msg;<br>
+<br>
+=C2=A0 =C2=A0 g_return_val_if_fail(SPICE_IS_DISPLAY_CHANNEL(channel), FALS=
E);<br>
+<br>
+=C2=A0 =C2=A0 if (!spice_channel_test_capability(channel, SPICE_DISPLAY_CA=
P_PREF_VIDEO_CODEC_TYPE)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 CHANNEL_DEBUG(channel, &quot;does not have cap=
ability to change the preferred video codec type&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_set_error_literal(err, SPICE_CLIENT_ERROR, S=
PICE_CLIENT_ERROR_FAILED,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 _(&quot;Channel does not have capability to change=
 the preferred video codec type&quot;));<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return FALSE;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 msg =3D g_string_new(&quot;changing preferred video codec ty=
pe to: &quot;);<br>
+=C2=A0 =C2=A0 for (i =3D 0; i &lt; ncodecs; i++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 gint codec_type =3D codecs[i];<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (codec_type &lt; SPICE_VIDEO_CODEC_TYPE_MJP=
EG ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 codec_type &gt;=3D SPICE_VIDEO_C=
ODEC_TYPE_ENUM_END)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_string_free(msg, TRUE);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_set_error(err, SPICE_CLIENT_ER=
ROR, SPICE_CLIENT_ERROR_FAILED,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 _(&quot;Invalid codec-type found (%d) ... &quot;), codec_type);<=
br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return FALSE;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_string_append_printf(msg, &quot;%s &quot;, g=
st_opts[codec_type].name);<br>
+<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 CHANNEL_DEBUG(channel, &quot;%s&quot;, msg-&gt;str);<br>
+=C2=A0 =C2=A0 g_string_free(msg, TRUE);<br>
+<br>
+=C2=A0 =C2=A0 spice_display_send_client_preferred_video_codecs(channel, co=
decs, ncodecs);<br>
+<br>
+=C2=A0 =C2=A0 return TRUE;<br>
=C2=A0}<br>
<br>
=C2=A0/**<br>
diff --git a/src/channel-display.h b/src/channel-display.h<br>
index 5b48d2f..cf18538 100644<br>
--- a/src/channel-display.h<br>
+++ b/src/channel-display.h<br>
@@ -150,6 +150,8 @@ gboolean=C2=A0 =C2=A0 =C2=A0 =C2=A0 spice_display_chann=
el_get_primary(SpiceChannel *channel, guint32<br>
<br>
=C2=A0void spice_display_channel_change_preferred_compression(SpiceChannel =
*channel, gint compression);<br>
=C2=A0void spice_display_channel_change_preferred_video_codec_type(SpiceCha=
nnel *channel, gint codec_type);<br>
+gboolean spice_display_channel_change_preferred_video_codec_types(SpiceCha=
nnel *channel, const gint *codecs,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 gsize ncodecs, GError **err);<br>
<br>
=C2=A0GType=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spice_gl_scanout_get_ty=
pe=C2=A0 =C2=A0 =C2=A0(void) G_GNUC_CONST;<br>
=C2=A0void=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spice_gl_scanout_free=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(SpiceGlScanout *scanout);<br>
diff --git a/src/map-file b/src/map-file<br>
index 500683c..3cb9873 100644<br>
--- a/src/map-file<br>
+++ b/src/map-file<br>
@@ -25,6 +25,7 @@ spice_display_change_preferred_compression;<br>
=C2=A0spice_display_change_preferred_video_codec_type;<br>
=C2=A0spice_display_channel_change_preferred_compression;<br>
=C2=A0spice_display_channel_change_preferred_video_codec_type;<br>
+spice_display_channel_change_preferred_video_codec_types;<br>
=C2=A0spice_display_channel_get_gl_scanout;<br>
=C2=A0spice_display_channel_get_primary;<br>
=C2=A0spice_display_channel_get_type;<br>
diff --git a/src/spice-glib-sym-file b/src/spice-glib-sym-file<br>
index 2df1cc0..c3b2561 100644<br>
--- a/src/spice-glib-sym-file<br>
+++ b/src/spice-glib-sym-file<br>
@@ -23,6 +23,7 @@ spice_display_change_preferred_compression<br>
=C2=A0spice_display_change_preferred_video_codec_type<br>
=C2=A0spice_display_channel_change_preferred_compression<br>
=C2=A0spice_display_channel_change_preferred_video_codec_type<br>
+spice_display_channel_change_preferred_video_codec_types<br>
=C2=A0spice_display_channel_get_gl_scanout<br>
=C2=A0spice_display_channel_get_primary<br>
=C2=A0spice_display_channel_get_type<br>
-- <br>
2.21.0<br>
<br>
</blockquote></div>

--000000000000064d72058d5584bb--

--===============1267845861==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1267845861==--
