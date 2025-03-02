Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CECCFA4B3C0
	for <lists+spice-devel@lfdr.de>; Sun,  2 Mar 2025 18:25:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2236010E064;
	Sun,  2 Mar 2025 17:25:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SDJeZUTV";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com
 [209.85.219.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D6F10E064
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Mar 2025 17:25:04 +0000 (UTC)
Received: by mail-yb1-f179.google.com with SMTP id
 3f1490d57ef6-e60f212fee7so92630276.1
 for <spice-devel@lists.freedesktop.org>; Sun, 02 Mar 2025 09:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740936304; x=1741541104; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7L/tsVnCQFAWWUaVojRAt65gjuMrVVLXTTc2BoeQnAE=;
 b=SDJeZUTVSo/sE8CNRMFpCOU/yn4aAX2y7a2eUe/D2iiDvkdVWgt2sdB23H4nQbto8G
 nC25jhOG0pMg181V9es7zb6BoBUyObDpPuBb/F40bLhoGD/D+XZhcFzpnYaGlcBR0pGb
 SVq0jRQUBm8mGEdZ/Pnvfkf3CEKchAOPP+p35MthA2Wv50EUL2T8Ioqi0kdXC+VNiXGb
 jZuchsUP9sJ7BuNHeA4VJIxth/LlKV9TtN56Y/mL8qfHrx8Xug25R9NaMuSo/c5WTG90
 1K1ipWR9rUjJBHo1pur9Q/lPMt6KkHPpSw3IuzE1Dq31i7Ki11YdZNRMsJrJZNtQzD4A
 /yaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740936304; x=1741541104;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7L/tsVnCQFAWWUaVojRAt65gjuMrVVLXTTc2BoeQnAE=;
 b=WtUtCs6F7xoAfi7FL7d1chw0n2MdFdetg1c9zgERowq6oboIapauMtBbP5wqLOueyH
 6tIOcPw7rlbR+mP0MU1asX3xzYAeqRQ9K8K1le5gqQwAUpFgEgkOr9DYLnYYuUTzc2K7
 RFm8yaFoZ5YSHFJGDsHbkhft+GT6MznHPaZLWUpdcYiNTVYv+dEOreiTwWGs8kekMCrV
 XinavmIUw1EGdZIYdKNkoJEFrHoG7b7y2jPUYOiY1rnBOzNaAd6URzBvFTgndni7TKf2
 lS4ARiAlwRajqpM/+BC1xTX1xRz9MxB9+JA32SwuyfL/ZrwDPI1LkqO5CFAHza9Lr3Ds
 6hWA==
X-Gm-Message-State: AOJu0YzshorVbRPCDPPi/Px0kUsiZI2VY3/AXCK+7QWs4Tb8zE0SMzp7
 HnI+lHQHsHsEz5CKjPzly4W0R/RRrNFD/MhFVr5vAF8VzVtIA+FtrW9MrfAixLpIt24IUWb9PZs
 dCmgIC1Jogi+Mz58PGAq/Y4548BqzmgdZ
X-Gm-Gg: ASbGncs+jjH0qEeizTJr1dxibPFVBqwRXLqNdhkxGwaZKKGKaaRFfVQpDHVoYpFhDxr
 4OV4uA5BOyNOXDxV99t4Sz4tGZ9ERPfC/E4+gM5o2K0yQyFQAPAPmcWtmj/ROM7Nlm3jlqMdwSO
 7EKaXo39aroYdgJUF8MzbdNHQ=
X-Google-Smtp-Source: AGHT+IF/eCmlNjnRCppO3teTUNUy825DqvLZpc6M7yWUG9VA/lsyJbiW0IlfgtWDS8Q6mBmyMxyCU+1PcOs6JEwK2xA=
X-Received: by 2002:a05:690c:7086:b0:6f2:9704:405c with SMTP id
 00721157ae682-6fd4a0865afmr141546997b3.15.1740936303631; Sun, 02 Mar 2025
 09:25:03 -0800 (PST)
MIME-Version: 1.0
References: <20250228090240.104897-1-liweishi@kylinos.cn>
In-Reply-To: <20250228090240.104897-1-liweishi@kylinos.cn>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 2 Mar 2025 17:24:52 +0000
X-Gm-Features: AQ5f1JpNacNWL8C3WkpS2wECZVYPvnxVm7yO2Wgw82LOC6c6kI5SUfbIUXeMRJI
Message-ID: <CAHt6W4cn3W2ewg1tYLWaMP5-zeFkZmQMsSFg5agMZXAZjep-ig@mail.gmail.com>
Subject: Re: [PATCH v1] jpeg: optimize compression process
To: liweishi@kylinos.cn
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000f46879062f5f5199"
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

--000000000000f46879062f5f5199
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 28, 2025 at 9:53=E2=80=AFPM <liweishi@kylinos.cn> wrote:

> From: Weishi Li <liweishi@kylinos.cn>
>
> similiar to mjpeg, when defined JCS_EXTENSIONS, there
> is no need to convert BGR24/BGRX32 to RGB24.
>
> Signed-off-by: Weishi Li <liweishi@kylinos.cn>
> ---
>  server/jpeg-encoder.c | 42 +++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 37 insertions(+), 5 deletions(-)
>
> diff --git a/server/jpeg-encoder.c b/server/jpeg-encoder.c
> index fee07105..fe1038f3 100644
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
> @@ -177,7 +188,7 @@ static void convert_BGRX32_to_RGB24(void *line, int
> width, uint8_t **out_line)
>      }                                                                   =
\
>  }
>
> -static void do_jpeg_encode(JpegEncoder *jpeg, uint8_t *lines, unsigned
> int num_lines)
> +static void do_jpeg_encode(JpegEncoder *jpeg, uint8_t *lines, unsigned
> int num_lines, JpegEncoderImageType type)
>  {
>      uint8_t *lines_end;
>      uint8_t *RGB24_line;
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
> +    if (type =3D=3D JPEG_IMAGE_TYPE_BGR24 || type =3D=3D JPEG_IMAGE_TYPE=
_BGRX32) {
>

Why not check if jpeg->cur_image.convert_line_to_RGB24 is NULL instead ? It
would remove the need to pass the type and reduce the difference.


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
> @@ -236,7 +268,7 @@ int jpeg_encode(JpegEncoderContext *enc, int quality,
> JpegEncoderImageType type,
>
>      jpeg_start_compress(&enc->cinfo, TRUE);
>
> -    do_jpeg_encode(enc, lines, num_lines);
> +    do_jpeg_encode(enc, lines, num_lines, type);
>
>      jpeg_finish_compress(&enc->cinfo);
>      return enc->cur_image.out_size;
>

Frediano

--000000000000f46879062f5f5199
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Feb 28, 2025 at 9:53=E2=80=AFPM &lt;<=
a href=3D"mailto:liweishi@kylinos.cn">liweishi@kylinos.cn</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">From: Weishi Li &l=
t;<a href=3D"mailto:liweishi@kylinos.cn" target=3D"_blank">liweishi@kylinos=
.cn</a>&gt;<br>
<br>
similiar to mjpeg, when defined JCS_EXTENSIONS, there<br>
is no need to convert BGR24/BGRX32 to RGB24.<br>
<br>
Signed-off-by: Weishi Li &lt;<a href=3D"mailto:liweishi@kylinos.cn" target=
=3D"_blank">liweishi@kylinos.cn</a>&gt;<br>
---<br>
=C2=A0server/jpeg-encoder.c | 42 +++++++++++++++++++++++++++++++++++++-----=
<br>
=C2=A01 file changed, 37 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/server/jpeg-encoder.c b/server/jpeg-encoder.c<br>
index fee07105..fe1038f3 100644<br>
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
@@ -177,7 +188,7 @@ static void convert_BGRX32_to_RGB24(void *line, int wid=
th, uint8_t **out_line)<br>
=C2=A0 =C2=A0 =C2=A0}=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0}<br>
<br>
-static void do_jpeg_encode(JpegEncoder *jpeg, uint8_t *lines, unsigned int=
 num_lines)<br>
+static void do_jpeg_encode(JpegEncoder *jpeg, uint8_t *lines, unsigned int=
 num_lines, JpegEncoderImageType type)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0uint8_t *lines_end;<br>
=C2=A0 =C2=A0 =C2=A0uint8_t *RGB24_line;<br>
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
+=C2=A0 =C2=A0 if (type =3D=3D JPEG_IMAGE_TYPE_BGR24 || type =3D=3D JPEG_IM=
AGE_TYPE_BGRX32) {<br></blockquote><div><br></div><div>Why not check if jpe=
g-&gt;cur_image.convert_line_to_RGB24 is NULL instead ? It would remove the=
 need to pass the type and reduce the difference.</div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
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
br>
@@ -236,7 +268,7 @@ int jpeg_encode(JpegEncoderContext *enc, int quality, J=
pegEncoderImageType type,<br>
<br>
=C2=A0 =C2=A0 =C2=A0jpeg_start_compress(&amp;enc-&gt;cinfo, TRUE);<br>
<br>
-=C2=A0 =C2=A0 do_jpeg_encode(enc, lines, num_lines);<br>
+=C2=A0 =C2=A0 do_jpeg_encode(enc, lines, num_lines, type);<br>
<br>
=C2=A0 =C2=A0 =C2=A0jpeg_finish_compress(&amp;enc-&gt;cinfo);<br>
=C2=A0 =C2=A0 =C2=A0return enc-&gt;cur_image.out_size;<br>
</blockquote><div><br></div><div>Frediano</div><div>=C2=A0<br></div></div><=
/div>

--000000000000f46879062f5f5199--
