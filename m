Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BCE284B61
	for <lists+spice-devel@lfdr.de>; Tue,  6 Oct 2020 14:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61EF6E479;
	Tue,  6 Oct 2020 12:09:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B276E463
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Oct 2020 12:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601986170;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KK1e8nqS85L7Q7YY5lXlBKpRwJeF5pEl2zAQrr4sO/k=;
 b=Itebu2ThtpnDSyGuvz4YdPzC9EWRxQBcQlWI/iFt4Z8HLd7O7pZ93N7ldPV+rBS6s7wFC+
 R0vstfzMVz8tqk5avIpfgFckwR0WHpUmO+qiCkERg1HG7kHwuwb2md9zJR90wW6PbXLXHu
 3AaevFzYL9oA4Vy5nNkddB5G9hBgtQc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-349-DUtHQe-RNXiFL0kLmfKFaQ-1; Tue, 06 Oct 2020 08:09:27 -0400
X-MC-Unique: DUtHQe-RNXiFL0kLmfKFaQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9022F802B6A;
 Tue,  6 Oct 2020 12:09:26 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B82C5C1C4;
 Tue,  6 Oct 2020 12:09:24 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Oct 2020 13:09:00 +0100
Message-Id: <20201006120901.17027-6-fziglio@redhat.com>
In-Reply-To: <20201006120901.17027-1-fziglio@redhat.com>
References: <20201006120901.17027-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH spice-common 5/6] test-quic: Add fuzzer
 capabilities to the test
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
Cc: Frediano Ziglio <freddy77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Frediano Ziglio <freddy77@gmail.com>

Allows it to be used for fuzzying compressed images.

Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
Acked-by: Uri Lublin <uril@redhat.com>
---
 tests/test-quic.c | 51 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/tests/test-quic.c b/tests/test-quic.c
index 7af6a68..01f159b 100644
--- a/tests/test-quic.c
+++ b/tests/test-quic.c
@@ -14,6 +14,20 @@
    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, see <http://www.gnu.org/licenses/>.
 */
+
+/* Test QUIC encoding and decoding. This test can also be used to fuzz the decoding.
+ *
+ * To use for the fuzzer you should:
+ * 1- build enabling AFL.
+ * $ make clean
+ * $ make CC=afl-gcc CFLAGS='-O2 -fno-omit-frame-pointer'
+ * 2- run AFL, the export is to use ElectricFence to detect some additional
+ *    possible buffer overflow, AFL required the program to crash in case of errors
+ * $ cd tests
+ * $ mkdir afl_findings
+ * $ export AFL_PRELOAD=/usr/lib64/libefence.so.0.0
+ * $ afl-fuzz -i fuzzer-quic-testcases -o afl_findings -m 100 -- ./test_quic --fuzzer-decode @@
+ */
 #include <config.h>
 
 #include <stdlib.h>
@@ -32,6 +46,7 @@ typedef enum {
 } color_mode_t;
 
 static color_mode_t color_mode = COLOR_MODE_RGB;
+static bool fuzzying = false;
 
 typedef struct {
     QuicUsrContext usr;
@@ -41,6 +56,10 @@ typedef struct {
 static SPICE_GNUC_NORETURN SPICE_GNUC_PRINTF(2, 3) void
 quic_usr_error(QuicUsrContext *usr, const char *fmt, ...)
 {
+    if (fuzzying) {
+        exit(1);
+    }
+
     va_list ap;
 
     va_start(ap, fmt);
@@ -300,10 +319,14 @@ static GdkPixbuf *quic_decode_to_pixbuf(GByteArray *compressed_data)
     status = quic_decode_begin(quic,
                                (uint32_t *)compressed_data->data, compressed_data->len/4,
                                &type, &width, &height);
+    /* limit size for fuzzer, he restrict virtual memory */
+    if (fuzzying && (status != QUIC_OK || (width * height) > 16 * 1024 * 1024 / 4)) {
+        exit(1);
+    }
     g_assert(status == QUIC_OK);
 
     pixbuf = gdk_pixbuf_new(GDK_COLORSPACE_RGB,
-                            (type == QUIC_IMAGE_TYPE_RGBA), 8,
+                            (type == QUIC_IMAGE_TYPE_RGBA || type == QUIC_IMAGE_TYPE_RGB32), 8,
                             width, height);
     status = quic_decode(quic, type,
                          gdk_pixbuf_get_pixels(pixbuf),
@@ -391,8 +414,34 @@ static void test_pixbuf(GdkPixbuf *pixbuf)
 
 }
 
+static int
+fuzzer_decode(const char *fn)
+{
+    GdkPixbuf *uncompressed_pixbuf;
+    GByteArray compressed_data[1];
+    gchar *contents = NULL;
+    gsize length;
+
+    fuzzying = true;
+    if (!g_file_get_contents(fn, &contents, &length, NULL)) {
+        exit(1);
+    }
+    compressed_data->data = (void*) contents;
+    compressed_data->len = length;
+    uncompressed_pixbuf = quic_decode_to_pixbuf(compressed_data);
+
+    g_object_unref(uncompressed_pixbuf);
+    g_free(contents);
+
+    return 0;
+}
+
 int main(int argc, char **argv)
 {
+    if (argc >= 3 && strcmp(argv[1], "--fuzzer-decode") == 0) {
+        return fuzzer_decode(argv[2]);
+    }
+
     if (argc >= 2) {
         for (int i = 1; i < argc; ++i) {
             GdkPixbuf *source_pixbuf;
-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
