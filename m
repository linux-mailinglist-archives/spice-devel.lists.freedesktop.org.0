Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B99DAA4A567
	for <lists+spice-devel@lfdr.de>; Fri, 28 Feb 2025 22:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9363710E32A;
	Fri, 28 Feb 2025 21:52:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 301 seconds by postgrey-1.36 at gabe;
 Fri, 28 Feb 2025 09:08:00 UTC
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFEF210EC22
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Feb 2025 09:08:00 +0000 (UTC)
X-UUID: c54e4bacf5b211efa216b1d71e6e1362-20250228
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45, REQID:7d6178a1-a5a7-4375-973b-e13cd66def66, IP:0,
 U
 RL:0,TC:0,Content:-25,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTI
 ON:release,TS:0
X-CID-META: VersionHash:6493067, CLOUDID:ed3a326e66c7a4f0c7b0bea55b000a02,
 BulkI
 D:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|50,EDM:5,IP:nil,URL
 :0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SP
 R:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: c54e4bacf5b211efa216b1d71e6e1362-20250228
Received: from mail.kylinos.cn [(10.44.16.175)] by mailgw.kylinos.cn
 (envelope-from <liweishi@kylinos.cn>) (Generic MTA)
 with ESMTP id 1034228739; Fri, 28 Feb 2025 17:02:43 +0800
Received: from mail.kylinos.cn (localhost [127.0.0.1])
 by mail.kylinos.cn (NSMail) with SMTP id 54646E0080FF;
 Fri, 28 Feb 2025 17:02:43 +0800 (CST)
X-ns-mid: postfix-67C17BB3-2503071301
Received: from localhost.localdomain (unknown [10.42.12.187])
 by mail.kylinos.cn (NSMail) with ESMTPA id 2E57AE0080FF;
 Fri, 28 Feb 2025 17:02:42 +0800 (CST)
From: liweishi@kylinos.cn
To: spice-devel@lists.freedesktop.org
Cc: liweishi@kylinos.cn
Subject: [PATCH v1] jpeg: optimize compression process
Date: Fri, 28 Feb 2025 17:02:40 +0800
Message-Id: <20250228090240.104897-1-liweishi@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 28 Feb 2025 21:52:58 +0000
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

From: Weishi Li <liweishi@kylinos.cn>

similiar to mjpeg, when defined JCS_EXTENSIONS, there
is no need to convert BGR24/BGRX32 to RGB24.

Signed-off-by: Weishi Li <liweishi@kylinos.cn>
---
 server/jpeg-encoder.c | 42 +++++++++++++++++++++++++++++++++++++-----
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/server/jpeg-encoder.c b/server/jpeg-encoder.c
index fee07105..fe1038f3 100644
--- a/server/jpeg-encoder.c
+++ b/server/jpeg-encoder.c
@@ -27,6 +27,16 @@
 #include "red-common.h"
 #include "jpeg-encoder.h"
=20
+#ifdef JCS_EXTENSIONS
+#  ifndef WORDS_BIGENDIAN
+#    define JCS_EXT_LE_BGRX JCS_EXT_BGRX
+#    define JCS_EXT_LE_BGR JCS_EXT_BGR
+#  else
+#    define JCS_EXT_LE_BGRX JCS_EXT_XRGB
+#    define JCS_EXT_LE_BGR JCS_EXT_RGB
+#  endif
+#endif
+
 struct JpegEncoderContext {
     JpegEncoderUsrContext *usr;
=20
@@ -130,6 +140,7 @@ static void convert_RGB16_to_RGB24(void *line, int wi=
dth, uint8_t **out_line)
    }
 }
=20
+#ifndef JCS_EXTENSIONS
 static void convert_BGR24_to_RGB24(void *in_line, int width, uint8_t **o=
ut_line)
 {
     int x;
@@ -165,7 +176,7 @@ static void convert_BGRX32_to_RGB24(void *line, int w=
idth, uint8_t **out_line)
         *out_pix++ =3D pixel & 0xff;
     }
 }
-
+#endif
=20
 #define FILL_LINES() {                                                  =
\
     if (lines =3D=3D lines_end) {                                       =
    \
@@ -177,7 +188,7 @@ static void convert_BGRX32_to_RGB24(void *line, int w=
idth, uint8_t **out_line)
     }                                                                   =
\
 }
=20
-static void do_jpeg_encode(JpegEncoder *jpeg, uint8_t *lines, unsigned i=
nt num_lines)
+static void do_jpeg_encode(JpegEncoder *jpeg, uint8_t *lines, unsigned i=
nt num_lines, JpegEncoderImageType type)
 {
     uint8_t *lines_end;
     uint8_t *RGB24_line;
@@ -186,10 +197,21 @@ static void do_jpeg_encode(JpegEncoder *jpeg, uint8=
_t *lines, unsigned int num_l
     width =3D jpeg->cur_image.width;
     stride =3D jpeg->cur_image.stride;
=20
-    RGB24_line =3D g_new(uint8_t, width*3);
-
     lines_end =3D lines + (stride * num_lines);
=20
+#ifdef JCS_EXTENSIONS
+    if (type =3D=3D JPEG_IMAGE_TYPE_BGR24 || type =3D=3D JPEG_IMAGE_TYPE=
_BGRX32) {
+        for (;jpeg->cinfo.next_scanline < jpeg->cinfo.image_height; line=
s +=3D stride) {
+            FILL_LINES();
+            row_pointer[0] =3D lines;
+            jpeg_write_scanlines(&jpeg->cinfo, row_pointer, 1);
+        }
+        return;
+    }
+#endif
+
+    RGB24_line =3D g_new(uint8_t, width*3);
+
     for (;jpeg->cinfo.next_scanline < jpeg->cinfo.image_height; lines +=3D=
 stride) {
         FILL_LINES();
         jpeg->cur_image.convert_line_to_RGB24(lines, width, &RGB24_line)=
;
@@ -215,10 +237,20 @@ int jpeg_encode(JpegEncoderContext *enc, int qualit=
y, JpegEncoderImageType type,
         enc->cur_image.convert_line_to_RGB24 =3D convert_RGB16_to_RGB24;
         break;
     case JPEG_IMAGE_TYPE_BGR24:
+#ifdef JCS_EXTENSIONS
+        enc->cinfo.in_color_space   =3D JCS_EXT_LE_BGR;
+        enc->cinfo.input_components =3D 3;
+#else
         enc->cur_image.convert_line_to_RGB24 =3D convert_BGR24_to_RGB24;
+#endif
         break;
     case JPEG_IMAGE_TYPE_BGRX32:
+#ifdef JCS_EXTENSIONS
+        enc->cinfo.in_color_space =3D JCS_EXT_LE_BGRX;
+        enc->cinfo.input_components =3D 4;
+#else
         enc->cur_image.convert_line_to_RGB24 =3D convert_BGRX32_to_RGB24=
;
+#endif
         break;
     default:
         spice_error("bad image type");
@@ -236,7 +268,7 @@ int jpeg_encode(JpegEncoderContext *enc, int quality,=
 JpegEncoderImageType type,
=20
     jpeg_start_compress(&enc->cinfo, TRUE);
=20
-    do_jpeg_encode(enc, lines, num_lines);
+    do_jpeg_encode(enc, lines, num_lines, type);
=20
     jpeg_finish_compress(&enc->cinfo);
     return enc->cur_image.out_size;
--=20
2.25.1

