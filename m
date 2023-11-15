Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1424D7EBD50
	for <lists+spice-devel@lfdr.de>; Wed, 15 Nov 2023 08:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24CC410E4F4;
	Wed, 15 Nov 2023 07:04:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com
 [IPv6:2607:f8b0:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CD710E4F4
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Nov 2023 07:04:38 +0000 (UTC)
Received: by mail-ot1-x335.google.com with SMTP id
 46e09a7af769-6ce2c71c61fso3527606a34.1
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Nov 2023 23:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700031877; x=1700636677; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=PAn3u1eNBqEs5SzuFmXsh71UFdR2P6Yoey1KSdvGlZc=;
 b=DNshxnd6FNOGbXT2XHVIUP/60h38DkCpWwS8lgq6bL1/etY35yBLpEChvj9R+F2OPO
 ziyGQ/j9MXEYd7RR0RoKLS3MTXDpwISiV+Kpp7ik1NT0a1eqCbWiJbsWpTXsS596eANm
 Y6t43Wg9J5rllbDY6f797W8XzBMn+DP3OFe21Lk+bO1/ZrpS3AUFKuBfbdzGkb+3lKOD
 iuqVLXC5CFVT44Nn6BUwaOnDZK9QzcG3WI27d4BpZq4wCGUaDID039f1uQrsIRhV8+9m
 H414E2ry0MnhZW6Ww6B7cehJZLxuMaxXGlK8e+Pd/rdOIWdBnCxMRgkGhmwMrb9jjIit
 YvsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700031877; x=1700636677;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PAn3u1eNBqEs5SzuFmXsh71UFdR2P6Yoey1KSdvGlZc=;
 b=PMm1IDOrivbnzXAcoFAr1Uj6AjXt8yFYT7jq9nX8WnpiNFkdZxFTr8INU/6tmVaJAg
 gvt9qSoGUwv+iEZL1Fcdyci/b4p3eFpzl9X5SJWG5KBa1k4VVCxnI53Qz3R2kL5zWaaX
 ElYMSLqWwzQ/di2R+NX2Ky6+Q6LbXEE8/kd9FBNhzm1aLx/BwrfVrR5zjyrhQoh3/TGW
 uKshmRhiNyqYyapr6P7Yq9LeTEYTxt0Pwn9ljl5RA0t7XPVjzio/fI1zwXIKP06yLLJW
 ihrRnGKcSqqBnoLTLnO5bkWGDswEqg+qhATQA/0ZsXd5qFcjZc9NWG82PxJEMoMNVmRD
 V3yg==
X-Gm-Message-State: AOJu0YxVNSPVSyN9uZEPReae2BLHLo9U0KM2QrVEIB1jsG3AWc06YG7E
 3J/Kppq+Qg+xP7O7Kk5Bt1o61PSDHYDIPovqQPc=
X-Google-Smtp-Source: AGHT+IHGA608ceN3Sj9Q8dQevmM3W3hxSUt+FaSNyf4vUWYiwUpp0Ywr7qPyxNNAE2muwJbm3TprOb9dAMEq21NELGs=
X-Received: by 2002:a9d:7a49:0:b0:6b7:56d9:533 with SMTP id
 z9-20020a9d7a49000000b006b756d90533mr4449127otm.28.1700031877384; Tue, 14 Nov
 2023 23:04:37 -0800 (PST)
MIME-Version: 1.0
References: <CAHt6W4fVVDVtkWXfgDsqSDUHqjwEpFqQ85WbGZgZryEpkXF00Q@mail.gmail.com>
 <20231115062952.498665-1-vivek.kasireddy@intel.com>
In-Reply-To: <20231115062952.498665-1-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 15 Nov 2023 07:04:26 +0000
Message-ID: <CAHt6W4eEaMs-39u4X8x7_S+VQgs4Ks3DQ7fSRKHmtenFoGLRRQ@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH v4] gstreamer-encoder: Use an env var to
 override converter format (v4)
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

Il giorno mer 15 nov 2023 alle ore 06:53 Vivek Kasireddy
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
> index d08de35a..28fc1251 100644
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
> +    return (gchar *)gst_once.retval;

The second time you attempt to create a pipeline you will get a double
free, g_strdup must be done here, not inside get_pref_format_once.

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

Frediano
