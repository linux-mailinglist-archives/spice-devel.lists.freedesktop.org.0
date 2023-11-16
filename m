Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB1E7EE697
	for <lists+spice-devel@lfdr.de>; Thu, 16 Nov 2023 19:20:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810B610E654;
	Thu, 16 Nov 2023 18:20:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com
 [IPv6:2607:f8b0:4864:20::c2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D1D10E654
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Nov 2023 18:20:20 +0000 (UTC)
Received: by mail-oo1-xc2c.google.com with SMTP id
 006d021491bc7-5872b8323faso547608eaf.1
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Nov 2023 10:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700158820; x=1700763620; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=3YkD16cv5aKnhZHrWt1hEhHrmfIbR9c/q81ACjv2YNs=;
 b=e4ct4R5cgLIU0cLdLfVOeLd+5zyO6toMr6PJpYim7N9c9qLcD9Ot3xxu/xqFq8KCsT
 Wt4fbZx5PejleVsx6mE1gbOeLd03biMFyae6jHk5mxLatsfFtnZ1wJxEf3B8RYvb8oyQ
 rxVMCLeCEv5ZzjJiM7NI46A4vRo0vF5nd5b1mAb+cqAQeHDgqNUcWizhTm8NsI+WVZPL
 NDhyZZbGShDn47MZkeSmviq3eP6MZ+NxUSS6AZvpeRpH80aqqmncMp86G4ZGf02tr3JC
 OMtAoNjv4QF28YWxQbKO2jyDdN9jXg3FP8Y9EjpYwIJhejuNg9jiRLp1J4VQIYiYojXc
 nvMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700158820; x=1700763620;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3YkD16cv5aKnhZHrWt1hEhHrmfIbR9c/q81ACjv2YNs=;
 b=YBJ/qUGyO8MLplK3/XBGmfjJwfvsvH9JMJVI3zDkYjsTp2z5NMp51C00bYG4RD511c
 kU8q0r4Do8fEFI2ci1WF6ZJLe7eXWB4PGO2stbRgc2MtCT6x6kTkjiMhHCvySg3D7iks
 drovz95Iz8Cm8UUArwv0n1ro86WYL4+djgDi3velFjIx26pcEfZRnTnqd8gMkP/Mq0tk
 cI6RUjpXuWayUszR44OZFb9fzK9fKfsKWSeGjX6vEdcaOrM5fUQ6xwQ3+aDWaBkFVrlq
 LIHB09XZBKy37o+DE6Trk7E7kroZiTbcPLwAlFNxRn/Wi2K4osS2mHeIBDqEK13g9DQq
 ROdw==
X-Gm-Message-State: AOJu0YxJFsYiipZ9gWsxSSvB4R8QaepeG0u2Gr5V655cbBuDQNUZ4XRr
 ezxDONscKHVlaasqCdjWQ262DPNp0Pe4YwL24P0=
X-Google-Smtp-Source: AGHT+IGsZxVXdgX0F0YPBKdbiLnzTDb1nLUXvRhaxoQZkkP6TpGcjkQojEjHs072fgHbju9rWt1Fz4gAOpLvohucQrc=
X-Received: by 2002:a05:6820:2c04:b0:58a:67b5:2df2 with SMTP id
 dw4-20020a0568202c0400b0058a67b52df2mr10982304oob.8.1700158819742; Thu, 16
 Nov 2023 10:20:19 -0800 (PST)
MIME-Version: 1.0
References: <CAHt6W4eEaMs-39u4X8x7_S+VQgs4Ks3DQ7fSRKHmtenFoGLRRQ@mail.gmail.com>
 <20231115090445.503069-1-vivek.kasireddy@intel.com>
In-Reply-To: <20231115090445.503069-1-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 16 Nov 2023 18:20:08 +0000
Message-ID: <CAHt6W4eOqFnPSXDeFGhd3epfAMQwqwivu438GGP3dvLFTXBACg@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH v5] gstreamer-encoder: Use an env var to
 override converter format (v5)
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org, Dongwon Kim <dongwon.kim@intel.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mer 15 nov 2023 alle ore 09:28 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> If we use the x264enc encoder to encode a stream, then videoconvert
> would convert the BGRx data into Y444, which is the preferred format
> for x264enc. However, some decoders particularly the ones that are
> h/w based cannot work with Y444 if it was the format used by the
> encoder. Therefore, to address these situations, we need a way to
> override the format used during the encoding stage which can be
> accomplished by using the environment variable introduced in this
> patch: SPICE_CONVERTER_PREFERRED_FORMAT.
>
> For example, using NV12 as the output format for the videoconvert
> element would allow us to pair a s/w based encoder (such as x264enc)
> with a h/w based decoder (such as msdkh264dec) for decoding the
> stream as most h/w based decoders only work with NV12 format given
> its popularity.
>
> Note that choosing an encoder format such as NV12 over Y444 would
> probably result in decreased video quality although it would be
> compatible with more decoders. Ideally, the client and server need
> to negotiate a suitable format dynamically but the current
> capabilities do not allow for such exchange.
>
> v2:
> - Add the environment variable to override encoding format
> - Augment the commit message to explain the impact of overriding
>   the default encoding format (Frediano)
>
> v3: (Frediano)
> - Free converter when pipeline creation fails due to invalid codec
> - Rebase on master
>
> v4: (Frediano)
> - Ensure that the preferred format obtained via the environment var
>   SPICE_CONVERTER_PREFERRED_FORMAT is valid
> - Use the g_once mechanism to cache and return the preferred format
>   after validating it
>
> v5: (Frediano)
> - Prevent the double free by doing g_strdup(gst_once.retval) in
>   get_gst_converter().
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Based-on-patch-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/gstreamer-encoder.c | 41 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
>
> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index d08de35a..40882f69 100644
> --- a/server/gstreamer-encoder.c
> +++ b/server/gstreamer-encoder.c
> @@ -861,13 +861,50 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
>      }
>  }
>
> +/* At this time, only the following formats are supported by x264enc. */
> +static const char valid_formats[][10] = {
> +    { "Y444" },
> +    { "Y42B" },
> +    { "I420" },
> +    { "YV12" },
> +    { "NV12" },
> +    { "GRAY8" },
> +    { "Y444_10LE" },
> +    { "I422_10LE" },
> +    { "I420_10LE" },
> +};
> +
> +static gpointer get_pref_format_once(gpointer data)
> +{
> +    const gchar *pref_format = getenv("SPICE_CONVERTER_PREFERRED_FORMAT");
> +    int i;
> +
> +    if (pref_format) {
> +        for (i = 0; i < G_N_ELEMENTS(valid_formats); i++) {
> +            if (strcmp(valid_formats[i], pref_format) == 0) {
> +                return g_strdup_printf("videoconvert ! video/x-raw,format=%s",
> +                                       pref_format);
> +            }
> +        }
> +    }
> +    return g_strdup("videoconvert");
> +}
> +
> +static gchar *get_gst_converter(void)
> +{
> +    static GOnce gst_once = G_ONCE_INIT;
> +
> +    g_once(&gst_once, get_pref_format_once, NULL);
> +    return g_strdup(gst_once.retval);
> +}
> +
>  static gboolean create_pipeline(SpiceGstEncoder *encoder)
>  {
> -    const gchar *converter = "videoconvert";
>      const gchar* gstenc_name = get_gst_codec_name(encoder);
>      if (!gstenc_name) {
>          return FALSE;
>      }
> +    gchar* converter = get_gst_converter();
>      gchar* gstenc_opts;
>      switch (encoder->base.codec_type)
>      {
> @@ -910,6 +947,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
>      default:
>          /* gstreamer_encoder_new() should have rejected this codec type */
>          spice_warning("unsupported codec type %d", encoder->base.codec_type);
> +        g_free(converter);
>          return FALSE;
>      }
>
> @@ -919,6 +957,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
>                                    converter, gstenc_name, gstenc_opts);
>      spice_debug("GStreamer pipeline: %s", desc);
>      encoder->pipeline = gst_parse_launch_full(desc, NULL, GST_PARSE_FLAG_FATAL_ERRORS, &err);
> +    g_free(converter);
>      g_free(gstenc_opts);
>      g_free(desc);
>      if (!encoder->pipeline || err) {

Acked and merged.

Thanks,
   Frediano
