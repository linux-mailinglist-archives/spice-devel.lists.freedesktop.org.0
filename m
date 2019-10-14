Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A15C2D6047
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 12:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD476E248;
	Mon, 14 Oct 2019 10:33:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546286E248
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 10:33:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D8F804E908
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 10:33:37 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 63516608C2
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 10:33:37 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Oct 2019 12:33:36 +0200
Message-Id: <20191014103336.28115-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 14 Oct 2019 10:33:37 +0000 (UTC)
Subject: [Spice-devel] [spice/docs] docs: include protocol and for-newbies
 documents
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKT25seSBieSBidWlsZGluZyBh
bmQgc2hhcmluZyB0aGUgZG9jdW1lbnRzIHdlIHdpbGwgYmUgYWJsZSB0byBnZXQgdGhlbQp1cCB0
byBkYXRlLgoKU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNv
bT4KLS0tCiBkb2NzL21lc29uLmJ1aWxkIHwgMTQgKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RvY3Mv
bWVzb24uYnVpbGQgYi9kb2NzL21lc29uLmJ1aWxkCmluZGV4IDgyODY0YmI4Li5jZTAzMzRjMCAx
MDA2NDQKLS0tIGEvZG9jcy9tZXNvbi5idWlsZAorKysgYi9kb2NzL21lc29uLmJ1aWxkCkBAIC0x
LDExICsxLDE3IEBACithc2NpaWRvY19maWxlcyA9IFsnc3BpY2VfZm9yX25ld2JpZXMnLAorICAg
ICAgICAgICAgICAgICAgJ3NwaWNlX3Byb3RvY29sJywKKyAgICAgICAgICAgICAgICAgICdzcGlj
ZV9zdHlsZScsCisgICAgICAgICAgICAgICAgICAnc3BpY2VfdGhyZWFkaW5nX21vZGVsJywKKyAg
ICAgICAgICAgICAgICAgICd2ZF9pbnRlcmZhY2VzJ10KKwogaWYgZ2V0X29wdGlvbignbWFudWFs
JykKICAgYXNjaWlkb2MgPSBmaW5kX3Byb2dyYW0oJ2FzY2lpZG9jJywgcmVxdWlyZWQgOiBmYWxz
ZSkKICAgaWYgYXNjaWlkb2MuZm91bmQoKQogICAgIGFzY2lpZG9jX2FyZ3MgPSBbJy1hJywgJ2Rh
dGEtdXJpJywgJy1hJywgJ2ljb25zJywgJy1hJywgJ3RvYyddCi0gICAgZm9yZWFjaCBkb2MgOiBb
J3N0eWxlJywgJ3RocmVhZGluZ19tb2RlbCddCi0gICAgICBjdXN0b21fdGFyZ2V0KCdzcGljZV9A
MEAuaHRtbCcuZm9ybWF0KGRvYyksCi0gICAgICAgICAgICAgICAgICAgIGlucHV0IDogJ3NwaWNl
X0AwQC50eHQnLmZvcm1hdChkb2MpLAotICAgICAgICAgICAgICAgICAgICBvdXRwdXQgOiAnc3Bp
Y2VfQDBALmh0bWwnLmZvcm1hdChkb2MpLAorICAgIGZvcmVhY2ggZG9jIDogYXNjaWlkb2NfZmls
ZXMKKyAgICAgIGN1c3RvbV90YXJnZXQoJ0AwQC5odG1sJy5mb3JtYXQoZG9jKSwKKyAgICAgICAg
ICAgICAgICAgICAgaW5wdXQgOiAnQDBALnR4dCcuZm9ybWF0KGRvYyksCisgICAgICAgICAgICAg
ICAgICAgIG91dHB1dCA6ICdAMEAuaHRtbCcuZm9ybWF0KGRvYyksCiAgICAgICAgICAgICAgICAg
ICAgIGJ1aWxkX2J5X2RlZmF1bHQ6IHRydWUsCiAgICAgICAgICAgICAgICAgICAgIGNvbW1hbmQg
OiBbYXNjaWlkb2MsICctbicsIGFzY2lpZG9jX2FyZ3MsICctbycsICdAT1VUUFVUQCcsICdASU5Q
VVRAJ10pCiAgICAgZW5kZm9yZWFjaAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
