Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA237EA502
	for <lists+spice-devel@lfdr.de>; Mon, 13 Nov 2023 21:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7687810E048;
	Mon, 13 Nov 2023 20:43:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com
 [IPv6:2607:f8b0:4864:20::c2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A72DA10E048
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Nov 2023 20:43:03 +0000 (UTC)
Received: by mail-oo1-xc2e.google.com with SMTP id
 006d021491bc7-589d412e8aeso2812353eaf.3
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Nov 2023 12:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699908183; x=1700512983; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=bq04bI65mulUNhDtvzUiHcDqnO5H0WlFKBIcGu8TIZA=;
 b=Xn3Ys6NN9UTeGkHvTV28jfcgZvkVsc9VkG8mWfwf5cyRcoskVxlYmDooExhvcQbgRZ
 FiugoXX+breJs1RzwPx4fWUUL1oVb2ZvC9MTtd6gy0CXSyrmktMF3J73XPoa4v5q7TZp
 XMxjuUYBILYKEqElQDC401Qm0nhec6YJQJS6DDoRy1esS7uoxWCEaSp8eGm6HA/SAN6k
 GUrgNyik7BHpI5cRN2XwXgwWHTA4rZQtTRMGPKYq2zEerg09vTormd1wDY97vNF5ft2d
 BP8kA6MVnvmW7qfK9zExhbJHvLVJLLtXlCSbwM3QEpSh1hflalwa9sIfC2Y/vrHZWVYO
 eTqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699908183; x=1700512983;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bq04bI65mulUNhDtvzUiHcDqnO5H0WlFKBIcGu8TIZA=;
 b=HhE3AgFwvQBECwbxv4RyygiucrKbGoho1zXDRzBMe0Drlza+J8/5RIObEHG9Povc/m
 r/p12j9mQxw9MsPGywOnlVxT8O217497KWR9xBnVRKIDJ1TSEbGosNgI/r44MpdydTbT
 8YBrUMQcKDgaIOi8OAKCeklRYiFiGQEV8b0dyCAsDlygeRd3SB9flfjfXPc/RQrXA2PH
 0z5wrTQtDyq3EtY1RTmTl+YSiOgLh/+FRngusuDaA/H9nzUDL/IzHLzHyHx20AOu/9rE
 AZwk2wZK8zQdXhvSDzBdfH//Y+yFY+S7tDSv9TVI7hovd++Q9b5yix2KpqbBwKbaXK49
 XYkw==
X-Gm-Message-State: AOJu0Yzjn9i5a0Pbh0yS17IHUtsVW94O8gRyRGf7iEtZllThjsXcAH1g
 EhTjI0N4lh8IfvBRg2ayqwquIBkgbXvjqOfaD/K1jL1Kux4=
X-Google-Smtp-Source: AGHT+IEpAzxUuBzjoSs30RgdJPPTlVBHfzdXfR6z0i2FLvAo7p/P840TsuTbzD6Vmi2VNF2zytqlR3k+F6ucbFimIGw=
X-Received: by 2002:a4a:385a:0:b0:57b:8ff1:f482 with SMTP id
 o26-20020a4a385a000000b0057b8ff1f482mr7726560oof.0.1699908182698; Mon, 13 Nov
 2023 12:43:02 -0800 (PST)
MIME-Version: 1.0
References: <20231017072444.4013504-1-vivek.kasireddy@intel.com>
In-Reply-To: <20231017072444.4013504-1-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 13 Nov 2023 20:42:51 +0000
Message-ID: <CAHt6W4fVVDVtkWXfgDsqSDUHqjwEpFqQ85WbGZgZryEpkXF00Q@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH v4 1/2] gstreamer-encoder: Use an env var
 to override converter format (v3)
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

Il giorno mar 17 ott 2023 alle ore 08:45 Vivek Kasireddy
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
> v3:
> - Free converter when pipeline creation fails due to invalid codec
> - Rebase on master
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Based-on-patch-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/gstreamer-encoder.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index d08de35a..7a75923d 100644
> --- a/server/gstreamer-encoder.c
> +++ b/server/gstreamer-encoder.c
> @@ -861,13 +861,25 @@ static const gchar* get_gst_codec_name(const SpiceGstEncoder *encoder)
>      }
>  }
>
> +static gchar *get_gst_converter(void)
> +{
> +    gchar *converter, *pref_format;
> +    pref_format = getenv("SPICE_CONVERTER_PREFERRED_FORMAT");
> +    if (pref_format) {
> +        converter = g_strconcat("videoconvert ! video/x-raw,format=", pref_format, NULL);
> +    } else {
> +        converter = g_strdup("videoconvert");
> +    }
> +    return converter;
> +}
> +

Hi,
  probably my paranoia. We get an environment variable every time we
try to create a new pipeline and we put whatever string from the
environment to the pipeline string, potentially filenames or anything.
I wrote these changes to avoid these behaviour
https://gitlab.freedesktop.org/fziglio/spice/-/commit/85bc1e3deb92f0e02ad7bfa68828d1b7d4f424fb.
Also I added this
https://gitlab.freedesktop.org/fziglio/spice/-/commit/7fcd6608bd79c390f7595534a9f70d8e1f3b7b86
to make CI happier.


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
> @@ -910,6 +922,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
>      default:
>          /* gstreamer_encoder_new() should have rejected this codec type */
>          spice_warning("unsupported codec type %d", encoder->base.codec_type);
> +        g_free(converter);
>          return FALSE;
>      }
>
> @@ -919,6 +932,7 @@ static gboolean create_pipeline(SpiceGstEncoder *encoder)
>                                    converter, gstenc_name, gstenc_opts);
>      spice_debug("GStreamer pipeline: %s", desc);
>      encoder->pipeline = gst_parse_launch_full(desc, NULL, GST_PARSE_FLAG_FATAL_ERRORS, &err);
> +    g_free(converter);
>      g_free(gstenc_opts);
>      g_free(desc);
>      if (!encoder->pipeline || err) {

Regards,
  Frediano
