Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26D0A4B626
	for <lists+spice-devel@lfdr.de>; Mon,  3 Mar 2025 03:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57CA310E1D2;
	Mon,  3 Mar 2025 02:36:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9007810E1D2
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Mar 2025 02:36:16 +0000 (UTC)
X-UUID: 4346af00f7d811efa216b1d71e6e1362-20250303
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45, REQID:52ef301b-51a5-4fbf-aca0-e5cdf433cc54, IP:0,
 U
 RL:0,TC:0,Content:-25,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTI
 ON:release,TS:0
X-CID-META: VersionHash:6493067, CLOUDID:d68a354f2af3f5d6f8e585354f09ac9e,
 BulkI
 D:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|50,EDM:5,IP:nil,URL
 :0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SP
 R:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 4346af00f7d811efa216b1d71e6e1362-20250303
Received: from mail.kylinos.cn [(10.44.16.175)] by mailgw.kylinos.cn
 (envelope-from <liweishi@kylinos.cn>) (Generic MTA)
 with ESMTP id 693271710; Mon, 03 Mar 2025 10:36:08 +0800
Received: from mail.kylinos.cn (localhost [127.0.0.1])
 by mail.kylinos.cn (NSMail) with SMTP id 61280E0080FF;
 Mon,  3 Mar 2025 10:36:08 +0800 (CST)
X-ns-mid: postfix-67C51598-262013614
Received: from localhost.localdomain (unknown [10.42.12.187])
 by mail.kylinos.cn (NSMail) with ESMTPA id 31528E0080FF;
 Mon,  3 Mar 2025 10:36:07 +0800 (CST)
From: liweishi@kylinos.cn
To: spice-devel@lists.freedesktop.org
Cc: liweishi@kylinos.cn
Subject: [PATCH v2] jpeg: optimize compression process
Date: Mon,  3 Mar 2025 10:35:55 +0800
Message-Id: <20250303023555.60795-1-liweishi@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
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
 server/jpeg-encoder.c | 38 +++++++++++++++++++++++++++++++++++---
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/server/jpeg-encoder.c b/server/jpeg-encoder.c
index fee07105..ba9058a2 100644
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
+    if (enc->cur_image.convert_line_to_RGB24 =3D=3D NULL) {
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
--=20
2.25.1

