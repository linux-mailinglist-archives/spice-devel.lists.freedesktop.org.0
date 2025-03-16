Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC255A637A6
	for <lists+spice-devel@lfdr.de>; Sun, 16 Mar 2025 23:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B4310E103;
	Sun, 16 Mar 2025 22:02:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T8ryfs+F";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com
 [209.85.128.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F10810E103
 for <spice-devel@lists.freedesktop.org>; Sun, 16 Mar 2025 22:02:02 +0000 (UTC)
Received: by mail-yw1-f175.google.com with SMTP id
 00721157ae682-6ef60e500d7so29282667b3.0
 for <spice-devel@lists.freedesktop.org>; Sun, 16 Mar 2025 15:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742162521; x=1742767321; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=xQrF8fNBQVG3hGhI5IMgMpsBrduk7Pg9Z9WOXw207es=;
 b=T8ryfs+FPFuvktnPcctsuKte0ulLxo5aDq+TzW+Ql87DPUDtNhETn3NgOu7fb2eeFp
 1PTrX/eQ7+ZQZsM+goD1j9sYvOnxVU7nrjWDiK4mI54wspxyL2skEQlubNb/xrkchCLO
 hmODfgkdltFFHa/koEc+AY+y1wLpNS+NWC/ZM9/w1nVX6fkp5g/kxk2boDhJNwym/sUm
 hoUMV5htD/5ahJAi+qGfJoSDp+a58Q5BiLLZ1G16cfgtwyPn+ovv/xktk0V67kjj5ui9
 v0C5a48qMS6ZsYB9aIpAn5Zlmyu2jpVXUG7SDFVDw+Dh2AyOTQIDUdSGiJhNJYsSLUL8
 S5vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742162521; x=1742767321;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xQrF8fNBQVG3hGhI5IMgMpsBrduk7Pg9Z9WOXw207es=;
 b=laP37c0FtM6xfwZ5baeNycTMN9f/v78DXDf/SrD4taaRPcRx86fjJE3Hki35nhPjds
 5Vm6Tav5ich6F/cbC2tFnclGKIXApYsktAWfA+yNBKECKU4SBn7YDe6tmItjx8wcWpYy
 d2gfOiZEvrPSpDd6tA7xwpIjuBZgCFXr6ioPn8aYnKLWuQT+NR9QyN1mJ5nnvN+cee9x
 Y8TaxC5BcwVDO7Ubf8VqU+0I9yGzpHJXT51Rmec5LZ5EielQLhnuaReDje7OszPuba6e
 4ONLzHqYAsNKAtPaPqGW1QqZXmcM6JWHEPv7VI+pb8C9fikG5ka4nGgq807PDbm21Q/m
 +xLg==
X-Gm-Message-State: AOJu0YzVmvhGDFWiNboe5VU3t8t/oC8k592M+iA6ihesCNldXM+4yRX+
 xAoVUNS3gmPvlJ+GANDTovCY8TeroqZO/Wo7o4wZoJqbmPPnZ5NJd0HeeWUWKdJCmjHs8WPQ5I8
 3ktmcUs6/JyV+XDLiYXLNL5rnz42URxc7
X-Gm-Gg: ASbGncu45Ahtolah8wRZEH8kefqx1holrWCA1kFKp5wiTpChEPCcYCK/sJSVk+eqOcq
 U1x+bl1FPDS2dY3gZWLV8bFRPvqMFmwp5Tlg5OkJsKQC8glZMhC4/E3Md80eJOTGaS0iiflDBmj
 RRCogefik8e8fOeUbWW404jrc=
X-Google-Smtp-Source: AGHT+IEFAX5aXcb5PnvLCC4g9JNf1+HwWjo7q4dLB10PDnuXq/vSlLo3zV+Xsfz0Sg2zqvvMd2Habqh198JVESLHOVY=
X-Received: by 2002:a05:690c:88f:b0:6fd:97a7:1474 with SMTP id
 00721157ae682-6ff45f43335mr167396117b3.11.1742162521078; Sun, 16 Mar 2025
 15:02:01 -0700 (PDT)
MIME-Version: 1.0
References: <20250303023555.60795-1-liweishi@kylinos.cn>
In-Reply-To: <20250303023555.60795-1-liweishi@kylinos.cn>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 16 Mar 2025 22:01:50 +0000
X-Gm-Features: AQ5f1JqMKUP9z6HERbjRw8qA54l4VPGxT1LGHkAfNYhHRTM41EbQzIqjYMRPDek
Message-ID: <CAHt6W4frajHHTaZ5cgAYo8MbTeaJ0sKjpa5EWbxdjDyksrSraQ@mail.gmail.com>
Subject: Re: [PATCH v2] jpeg: optimize compression process
To: liweishi@kylinos.cn
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000035c4d506307cd244"
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000035c4d506307cd244
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 3, 2025 at 2:36=E2=80=AFAM <liweishi@kylinos.cn> wrote:

> From: Weishi Li <liweishi@kylinos.cn>
>
> similiar to mjpeg, when defined JCS_EXTENSIONS, there
> is no need to convert BGR24/BGRX32 to RGB24.
>
> Signed-off-by: Weishi Li <liweishi@kylinos.cn>
> ---
>  server/jpeg-encoder.c | 38 +++++++++++++++++++++++++++++++++++---
>  1 file changed, 35 insertions(+), 3 deletions(-)
>
> diff --git a/server/jpeg-encoder.c b/server/jpeg-encoder.c
> index fee07105..ba9058a2 100644
> --- a/server/jpeg-encoder.c
> +++ b/server/jpeg-encoder.c
> @@ -27,6 +27,16 @@
>  #include "red-common.h"
>  #include "jpeg-encoder.h"
>
> +#ifdef JCS_EXTENSIONS
> +#  ifndef WORDS_BIGENDIAN
> +#    define JCS_EXT_LE_BGRX JCS_EXT_BGRX
> +#    define JCS_EXT_LE_BGR JCS_EXT_BGR
> +#  else
> +#    define JCS_EXT_LE_BGRX JCS_EXT_XRGB
> +#    define JCS_EXT_LE_BGR JCS_EXT_RGB
> +#  endif
> +#endif
> +
>  struct JpegEncoderContext {
>      JpegEncoderUsrContext *usr;
>
> @@ -130,6 +140,7 @@ static void convert_RGB16_to_RGB24(void *line, int
> width, uint8_t **out_line)
>     }
>  }
>
> +#ifndef JCS_EXTENSIONS
>  static void convert_BGR24_to_RGB24(void *in_line, int width, uint8_t
> **out_line)
>  {
>      int x;
> @@ -165,7 +176,7 @@ static void convert_BGRX32_to_RGB24(void *line, int
> width, uint8_t **out_line)
>          *out_pix++ =3D pixel & 0xff;
>      }
>  }
> -
> +#endif
>
>  #define FILL_LINES() {                                                  =
\
>      if (lines =3D=3D lines_end) {                                       =
    \
> @@ -186,10 +197,21 @@ static void do_jpeg_encode(JpegEncoder *jpeg,
> uint8_t *lines, unsigned int num_l
>      width =3D jpeg->cur_image.width;
>      stride =3D jpeg->cur_image.stride;
>
> -    RGB24_line =3D g_new(uint8_t, width*3);
> -
>      lines_end =3D lines + (stride * num_lines);
>
> +#ifdef JCS_EXTENSIONS
> +    if (enc->cur_image.convert_line_to_RGB24 =3D=3D NULL) {
> +        for (;jpeg->cinfo.next_scanline < jpeg->cinfo.image_height; line=
s
> +=3D stride) {
> +            FILL_LINES();
> +            row_pointer[0] =3D lines;
> +            jpeg_write_scanlines(&jpeg->cinfo, row_pointer, 1);
> +        }
> +        return;
> +    }
> +#endif
> +
> +    RGB24_line =3D g_new(uint8_t, width*3);
> +
>      for (;jpeg->cinfo.next_scanline < jpeg->cinfo.image_height; lines +=
=3D
> stride) {
>          FILL_LINES();
>          jpeg->cur_image.convert_line_to_RGB24(lines, width, &RGB24_line)=
;
> @@ -215,10 +237,20 @@ int jpeg_encode(JpegEncoderContext *enc, int
> quality, JpegEncoderImageType type,
>          enc->cur_image.convert_line_to_RGB24 =3D convert_RGB16_to_RGB24;
>          break;
>      case JPEG_IMAGE_TYPE_BGR24:
> +#ifdef JCS_EXTENSIONS
> +        enc->cinfo.in_color_space   =3D JCS_EXT_LE_BGR;
> +        enc->cinfo.input_components =3D 3;
> +#else
>          enc->cur_image.convert_line_to_RGB24 =3D convert_BGR24_to_RGB24;
> +#endif
>          break;
>      case JPEG_IMAGE_TYPE_BGRX32:
> +#ifdef JCS_EXTENSIONS
> +        enc->cinfo.in_color_space =3D JCS_EXT_LE_BGRX;
> +        enc->cinfo.input_components =3D 4;
> +#else
>          enc->cur_image.convert_line_to_RGB24 =3D convert_BGRX32_to_RGB24=
;
> +#endif
>          break;
>      default:
>          spice_error("bad image type");


Hi,
   tested, fixed and merged.

Thanks,
  Frediano

--00000000000035c4d506307cd244
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Mar 3, 2025 at 2:36=E2=80=AFAM &lt;<a=
 href=3D"mailto:liweishi@kylinos.cn">liweishi@kylinos.cn</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">From: Weishi Li &lt=
;<a href=3D"mailto:liweishi@kylinos.cn" target=3D"_blank">liweishi@kylinos.=
cn</a>&gt;<br>
<br>
similiar to mjpeg, when defined JCS_EXTENSIONS, there<br>
is no need to convert BGR24/BGRX32 to RGB24.<br>
<br>
Signed-off-by: Weishi Li &lt;<a href=3D"mailto:liweishi@kylinos.cn" target=
=3D"_blank">liweishi@kylinos.cn</a>&gt;<br>
---<br>
=C2=A0server/jpeg-encoder.c | 38 +++++++++++++++++++++++++++++++++++---<br>
=C2=A01 file changed, 35 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/server/jpeg-encoder.c b/server/jpeg-encoder.c<br>
index fee07105..ba9058a2 100644<br>
--- a/server/jpeg-encoder.c<br>
+++ b/server/jpeg-encoder.c<br>
@@ -27,6 +27,16 @@<br>
=C2=A0#include &quot;red-common.h&quot;<br>
=C2=A0#include &quot;jpeg-encoder.h&quot;<br>
<br>
+#ifdef JCS_EXTENSIONS<br>
+#=C2=A0 ifndef WORDS_BIGENDIAN<br>
+#=C2=A0 =C2=A0 define JCS_EXT_LE_BGRX JCS_EXT_BGRX<br>
+#=C2=A0 =C2=A0 define JCS_EXT_LE_BGR JCS_EXT_BGR<br>
+#=C2=A0 else<br>
+#=C2=A0 =C2=A0 define JCS_EXT_LE_BGRX JCS_EXT_XRGB<br>
+#=C2=A0 =C2=A0 define JCS_EXT_LE_BGR JCS_EXT_RGB<br>
+#=C2=A0 endif<br>
+#endif<br>
+<br>
=C2=A0struct JpegEncoderContext {<br>
=C2=A0 =C2=A0 =C2=A0JpegEncoderUsrContext *usr;<br>
<br>
@@ -130,6 +140,7 @@ static void convert_RGB16_to_RGB24(void *line, int widt=
h, uint8_t **out_line)<br>
=C2=A0 =C2=A0 }<br>
=C2=A0}<br>
<br>
+#ifndef JCS_EXTENSIONS<br>
=C2=A0static void convert_BGR24_to_RGB24(void *in_line, int width, uint8_t =
**out_line)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0int x;<br>
@@ -165,7 +176,7 @@ static void convert_BGRX32_to_RGB24(void *line, int wid=
th, uint8_t **out_line)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*out_pix++ =3D pixel &amp; 0xff;<br>
=C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0}<br>
-<br>
+#endif<br>
<br>
=C2=A0#define FILL_LINES() {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0if (lines =3D=3D lines_end) {=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
@@ -186,10 +197,21 @@ static void do_jpeg_encode(JpegEncoder *jpeg, uint8_t=
 *lines, unsigned int num_l<br>
=C2=A0 =C2=A0 =C2=A0width =3D jpeg-&gt;cur_image.width;<br>
=C2=A0 =C2=A0 =C2=A0stride =3D jpeg-&gt;cur_image.stride;<br>
<br>
-=C2=A0 =C2=A0 RGB24_line =3D g_new(uint8_t, width*3);<br>
-<br>
=C2=A0 =C2=A0 =C2=A0lines_end =3D lines + (stride * num_lines);<br>
<br>
+#ifdef JCS_EXTENSIONS<br>
+=C2=A0 =C2=A0 if (enc-&gt;cur_image.convert_line_to_RGB24 =3D=3D NULL) {<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (;jpeg-&gt;cinfo.next_scanline &lt; jpeg-&=
gt;cinfo.image_height; lines +=3D stride) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 FILL_LINES();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 row_pointer[0] =3D lines;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 jpeg_write_scanlines(&amp;jpeg-&=
gt;cinfo, row_pointer, 1);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
+=C2=A0 =C2=A0 }<br>
+#endif<br>
+<br>
+=C2=A0 =C2=A0 RGB24_line =3D g_new(uint8_t, width*3);<br>
+<br>
=C2=A0 =C2=A0 =C2=A0for (;jpeg-&gt;cinfo.next_scanline &lt; jpeg-&gt;cinfo.=
image_height; lines +=3D stride) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0FILL_LINES();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0jpeg-&gt;cur_image.convert_line_to_RGB24(=
lines, width, &amp;RGB24_line);<br>
@@ -215,10 +237,20 @@ int jpeg_encode(JpegEncoderContext *enc, int quality,=
 JpegEncoderImageType type,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0enc-&gt;cur_image.convert_line_to_RGB24 =
=3D convert_RGB16_to_RGB24;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
=C2=A0 =C2=A0 =C2=A0case JPEG_IMAGE_TYPE_BGR24:<br>
+#ifdef JCS_EXTENSIONS<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 enc-&gt;cinfo.in_color_space=C2=A0 =C2=A0=3D J=
CS_EXT_LE_BGR;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 enc-&gt;cinfo.input_components =3D 3;<br>
+#else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0enc-&gt;cur_image.convert_line_to_RGB24 =
=3D convert_BGR24_to_RGB24;<br>
+#endif<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
=C2=A0 =C2=A0 =C2=A0case JPEG_IMAGE_TYPE_BGRX32:<br>
+#ifdef JCS_EXTENSIONS<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 enc-&gt;cinfo.in_color_space =3D JCS_EXT_LE_BG=
RX;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 enc-&gt;cinfo.input_components =3D 4;<br>
+#else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0enc-&gt;cur_image.convert_line_to_RGB24 =
=3D convert_BGRX32_to_RGB24;<br>
+#endif<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
=C2=A0 =C2=A0 =C2=A0default:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spice_error(&quot;bad image type&quot;);<=
/blockquote><div><br></div><div>Hi,</div><div>=C2=A0=C2=A0 tested, fixed an=
d merged.</div><div><br></div><div>Thanks,</div><div>=C2=A0 Frediano</div><=
div>=C2=A0<br></div></div></div>

--00000000000035c4d506307cd244--
