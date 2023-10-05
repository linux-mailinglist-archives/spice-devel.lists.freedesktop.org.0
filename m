Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D647BA710
	for <lists+spice-devel@lfdr.de>; Thu,  5 Oct 2023 18:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD87F10E430;
	Thu,  5 Oct 2023 16:48:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com
 [IPv6:2607:f8b0:4864:20::c29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7DD10E430
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Oct 2023 16:48:52 +0000 (UTC)
Received: by mail-oo1-xc29.google.com with SMTP id
 006d021491bc7-57ad95c555eso629546eaf.3
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Oct 2023 09:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696524532; x=1697129332; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=T9f21SgrW/yDvnUA9yTmCi2SnYBIb+GGJR+g+oWUWzg=;
 b=W6qH2hpRrnE/WIY7LAukQHxtzo7bzTl2oTS5rv3LhtFIWFmrrsHVT4awEOtpuOkI9e
 Byixl9nrzcrAj1I+7Vh2yxW3RKJw0E4CCzDcXLxx+uolOehZ0+9whNfwpVbJFreuewwo
 OtYgFLKokTC4XMII1AcsJVkbrZMZSxepUF7vg9xtnA+ZwxucJa889WfKmpuqU/laTQr6
 fgsIPXf7IW3J/VbP7OQGafE0VT57Cs4f+FFjmkU4/mb9R9GgSzhXq8+ipYYn88wREfZ6
 xlxOmDDfpM0+0rcyM6KB5SShwQAqtt5VxZLsmDDkNwQIIQANw2V/wGOmb5JNH5UARQed
 R3ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696524532; x=1697129332;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=T9f21SgrW/yDvnUA9yTmCi2SnYBIb+GGJR+g+oWUWzg=;
 b=ExPKgwhmKlUo+FA+L6T3lelABXqrZoM7xMlk+Jrn/B+phCWYD4KGPdS0lKHpKNV2VW
 qbuiJmmBYPI97DCFreE073IMTgVFJaoLutAoZ3r60nKRprJexDQgspDdSzdBtL8GtSk7
 m28kF2dwMclpmv61SrkCaLSv3NaZgBsdzaebGVhPlcQm1e7h7fiTAr3FgtVrntm1NzuF
 TCpNvquNBht3iyBsMEqcnffVcn+TY+RIZsPI4feKqUvpA00E2Late887yrTtG/du8CH8
 2PD2UjwOm2Miv07vBZn8UuBYXlfQFvr37D1nTTcNv9QPxbamamQ4PFr15T+uaSpbH1ef
 8b5Q==
X-Gm-Message-State: AOJu0YwRoZRcrFKWDDPYkIihRBbmbY30BMsv20/0xxyzcH9UBN5bP4L+
 aGtE875C/LtnY+RjAHGR0Bdb8QTux0Xj3ZsUrxI=
X-Google-Smtp-Source: AGHT+IERu5QlxPmUJ3UdQ4XzuwaTv+8CG7I7u/7I4ZMRsES5fuICXwECpizR66HOdAg8VPhrqMMevM7FELtiJltOqtY=
X-Received: by 2002:a4a:9b0b:0:b0:57e:cc93:892d with SMTP id
 a11-20020a4a9b0b000000b0057ecc93892dmr5655902ook.3.1696524531722; Thu, 05 Oct
 2023 09:48:51 -0700 (PDT)
MIME-Version: 1.0
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
 <20231002052026.2994546-4-vivek.kasireddy@intel.com>
In-Reply-To: <20231002052026.2994546-4-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 5 Oct 2023 17:48:40 +0100
Message-ID: <CAHt6W4fH3-3QXyBu9aHyYLn5JKTdNYD64JSkQfR1wJVWJ1uvWA@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH 1/2] gstreamer-encoder: Use an env var to
 override converter format (v2)
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

Il giorno lun 2 ott 2023 alle ore 06:41 Vivek Kasireddy
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
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Based-on-patch-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/gstreamer-encoder.c | 23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
>
> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index d8af91f1..1619672a 100644
> --- a/server/gstreamer-encoder.c
> +++ b/server/gstreamer-encoder.c
> @@ -913,13 +913,25 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
>      }
>  }
>
> +static gchar *get_gst_converter(void)
> +{
> +    gchar *converter, *pref_format;
> +#ifdef HAVE_GSTREAMER_0_10
> +    converter = g_strdup("ffmpegcolorspace");
> +#else
> +    pref_format = getenv("SPICE_CONVERTER_PREFERRED_FORMAT");
> +    if (pref_format) {
> +        converter = g_strconcat("videoconvert ! video/x-raw,format=", pref_format, NULL);
> +    } else {
> +        converter = g_strdup("videoconvert");
> +    }
> +#endif
> +    return converter;
> +}
> +
>  static gboolean create_pipeline(SpiceGstEncoder *encoder)
>  {
> -#ifdef HAVE_GSTREAMER_0_10
> -    const gchar *converter = "ffmpegcolorspace";
> -#else
> -    const gchar *converter = "videoconvert";
> -#endif
> +    gchar* converter = get_gst_converter();
>      const gchar* gstenc_name = get_gst_codec_name(encoder);
>      if (!gstenc_name) {
>          return FALSE;
> @@ -979,6 +991,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
>                                    converter, gstenc_name, gstenc_opts);
>      spice_debug("GStreamer pipeline: %s", desc);
>      encoder->pipeline = gst_parse_launch_full(desc, NULL, GST_PARSE_FLAG_FATAL_ERRORS, &err);
> +    g_free(converter);
>      g_free(gstenc_opts);
>      g_free(desc);
>      if (!encoder->pipeline || err) {

Hi,
  it sounds almost fine. I had to rebase on master, fixing some
conflicts (GStreamer 0.10 was removed mainwhile), and removed minor
leaks.
See https://gitlab.freedesktop.org/fziglio/spice/-/commits/gstreamer_hw/
branch, specifically
https://gitlab.freedesktop.org/fziglio/spice/-/commit/4b7fbdd6b00b0a7941655aefc5eb3ba46b8e3278
(updated commit) and
https://gitlab.freedesktop.org/fziglio/spice/-/commit/4d27bf0d38b47575a757f25a1616c1f42b4c957f
(minor fixup to fix CI).

Frediano
