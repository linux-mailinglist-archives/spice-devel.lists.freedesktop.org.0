Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32885B37F0
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 12:21:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A97D66E203;
	Mon, 16 Sep 2019 10:21:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF386E194
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 39DA2862A
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:05 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B7F285D6A3
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 10:21:04 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 12:20:43 +0200
Message-Id: <20190916102104.20943-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 16 Sep 2019 10:21:05 +0000 (UTC)
Subject: [Spice-devel] [PATCH v7 00/20] added feature of sharing CD image
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgpPbmUgcGF0Y2ggdGhh
dCB3YXMgbm90IGFja2VkIGJ1dCBhIG11c3QgdG8gaW50ZWdyYXRlIG1vc3Qgb2YgdGhpcwpwYXRj
aGVzIHdhcyB0aGUgInVzYi1yZWRpcjogZXh0ZW5kIFVTQiBiYWNrZW5kIHRvIHN1cHBvcnQgZW11
bGF0ZWQKZGV2aWNlcyIsIHByZXZpb3VzbHkgdjYgMDQvMTgKCiAgICBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9zcGljZS1kZXZlbC8yMDE5LVNlcHRlbWJlci8wNTA3MzAu
aHRtbAoKRnJlZGlhbm8gaW1wcm92ZWQgdGhlIHN0YXRlIGEgYml0IHdpdGggdjYgMTMvMTggInVz
Yi1iYWNrZW5kOiBSZXdyaXRlClVTQiBlbXVsYXRpb24gc3VwcG9ydCIuCgogICAgaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvc3BpY2UtZGV2ZWwvMjAxOS1TZXB0ZW1iZXIv
MDUwNzM5Lmh0bWwKCkkgZG9uJ3Qgc2VlIG11Y2ggb2YgYSBwb2ludCBpbiBoYXZpbmcgYSAwNC8x
OCB0aGF0IGludHJvZHVjZXMgYSBmZXcKdGhpbmdzIGp1c3QgdG8gYmUgcmVtb3ZlZCBvbiAxMy8x
OCwgc28gSSBoYWQgYm90aCBvZiB0aGVtIG1lcmdlZCBpbiB0aGlzCnNlcmllcywgSSBob3BlIHRo
YXQgc2VlbXMgZmluZSBmb3IgeW91LgoKT25lIHRoaW5nIHRoYXQgYm90aGVyZWQgbWUgd2l0aCB2
NiAwNC8xOCBpcyB0aGUgbmVlZGVkIG9mIHVzYnJlZGlycGFyc2VyCmFsc28gZm9yIHRoZSBub24g
ZW11bGF0ZWQgc2NlbmFyaW8uIEkgZG9uJ3QgbWluZCB0aGUgZGVzaWduIGl0c2VsZiBidXQKaXQg
aXMgYSBsb3QgdG8gdGhpbmsgYW5kIHRlc3QgaW4gYSBzaW5nbGUgcGF0Y2gsIHNvIEkgcHJvcG9z
ZSB0byBzcGxpdAppdC4KCkkndmUgYWxzbyBzcGxpdHRlZCBhIGZldyBvdGhlciBjaGFuZ2VzIHRo
YXQgc2VlbWVkIHRvIG1lLCBjb3VsZCBoYXZlIGl0cwpvd24gY29tbWl0ICsgcmF0aW9uYWxlIGJl
aGluZCBpdC4gVGhlIGRpZmYgYmV0d2VlbiByZXN1bHRpbmcgY29kZSBmcm9tCnY2IGFuZCB0aGlz
IHY3IHNob3VsZG4ndCBiZSBiaWcuCgpBbGwgaW4gYWxsLCBub3QgeWV0IHN1cGVyIHNhdGlzZmll
ZCB3aXRoICJ1c2ItcmVkaXI6IGV4dGVuZCBVU0IgYmFja2VuZAp0byBzdXBwb3J0IGVtdWxhdGVk
IGRldmljZXMiIGJ1dCB3b3VsZCBiZSBmaW5lIHRvIGFjY2VwdCBpdCBpZiBubyBvbmVzCmhhcyBi
ZXR0ZXIgaWRlYXMgZm9yIGltcHJvdmVtZW50cyBvciBjb21wbGFpbnMgaW4gdGhlIGN1cnJlbnQg
Y29kZS4KCkNoZWVycywKVmljdG9yCgpGcmVkaWFubyBaaWdsaW8gKDkpOgogIHVzYi1iYWNrZW5k
OiBhZGQgc2FmZSBjaGVjayBvbiBhdHRhY2goKQogIGZpeHVwISB1c2ItcmVkaXI6IGFkZCBmaWxl
cyBmb3IgU0NTSSBhbmQgVVNCIE1TQyBpbXBsZW1lbnRhdGlvbgogIGJ1aWxkOiBEbyBub3QgYnVp
bGQgdXNicmVkaXIgZGVwZW5kZW50IGZpbGUgaXMgdXNicmVkaXIgZGlzYWJsZWQKICB0ZXN0LWNk
LWVtdTogQWRkIGJhc2UgdGVzdCBmb3IgY2QtZW11bGF0aW9uCiAgYnVpbGQ6IFVzZSBhIGNvbnZl
bmllbmNlIGxpYnJhcnkgZm9yIHRlc3RzCiAgdGVzdC1jZC1lbXU6IFRlc3QgYXR0YWNoL2RldGFj
aCBlbXVsYXRlZCBkZXZpY2UKICB0ZXN0LWNkLWVtdTogVGVzdCBkZXRhY2ggYW5kIHJlYXR0YWNo
CiAgdGVzdC1jZC1lbXU6IE1ha2Ugc3VyZSB3ZSBjYW4gY2FsbAogICAgc3BpY2VfdXNiX2JhY2tl
bmRfY2hhbm5lbF9mbHVzaF93cml0ZXMKICB0ZXN0LWNkLWVtdTogVGVzdCBubyBsaWJ1c2IgY29u
dGV4dCBzdXBwb3J0CgpWaWN0b3IgVG9zbyAoMSk6CiAgdXNiLWJhY2tlbmQ6IGFkZCBndWFyZCBh
bmQgZG9jIHRvIGNoZWNrX2ZpbHRlcigpCgpZdXJpIEJlbmRpdG92aWNoICgxMCk6CiAgdXNiLXJl
ZGlyOiBkZWZpbmUgaW50ZXJmYWNlcyB0byBzdXBwb3J0IGVtdWxhdGVkIGRldmljZXMKICB1c2It
cmVkaXI6IG1vdmUgaW1wbGVtZW50YXRpb24gb2YgZGV2aWNlIGRlc2NyaXB0aW9uIHRvIFVTQiBi
YWNrZW5kCiAgdXNiLXJlZGlyOiBkbyBub3QgdXNlIHNwaWNlX3VzYl9hY2xfaGVscGVyIGZvciBl
bXVsYXRlZCBkZXZpY2VzCiAgdXNiLWJhY2tlbmQ6IG5vIGVtdWxhdGVkIGlzb2NoIGRldmljZXMK
ICB1c2ItYmFja2VuZDogaW5jbHVkZSB1c2JyZWRpcnBhcnNlcgogIHVzYi1yZWRpcjogZXh0ZW5k
IFVTQiBiYWNrZW5kIHRvIHN1cHBvcnQgZW11bGF0ZWQgZGV2aWNlcwogIHVzYi1yZWRpcjogYWRk
IGZpbGVzIGZvciBTQ1NJIGFuZCBVU0IgTVNDIGltcGxlbWVudGF0aW9uCiAgdXNiLXJlZGlyOiBh
ZGQgaW1wbGVtZW50YXRpb24gb2YgZW11bGF0ZWQgQ0QgZGV2aWNlCiAgdXNiLXJlZGlyOiBlbmFi
bGUgcmVkaXJlY3Rpb24gb2YgZW11bGF0ZWQgQ0QgZHJpdmUKICB1c2ItcmVkaXI6IGNvbW1hbmQt
bGluZSBvcHRpb24gdG8gY3JlYXRlIGVtdWxhdGVkIENEIGRyaXZlCgogc3JjL2NkLXNjc2ktZGV2
LXBhcmFtcy5oIHwgICA0NiArCiBzcmMvY2Qtc2NzaS5jICAgICAgICAgICAgfCAyNzQwICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBzcmMvY2Qtc2NzaS5oICAgICAgICAg
ICAgfCAgMTE3ICsrCiBzcmMvY2QtdXNiLWJ1bGstbXNkLmMgICAgfCAgNTQzICsrKysrKysrCiBz
cmMvY2QtdXNiLWJ1bGstbXNkLmggICAgfCAgMTMxICsrCiBzcmMvY2hhbm5lbC11c2JyZWRpci5j
ICAgfCAgIDMxICstCiBzcmMvbWVzb24uYnVpbGQgICAgICAgICAgfCAgIDIxICstCiBzcmMvc2Nz
aS1jb25zdGFudHMuaCAgICAgfCAgMzIxICsrKysrCiBzcmMvc3BpY2Utb3B0aW9uLmMgICAgICAg
fCAgIDE3ICsKIHNyYy91c2ItYmFja2VuZC5jICAgICAgICB8ICA3NzIgKysrKysrKysrKy0KIHNy
Yy91c2ItYmFja2VuZC5oICAgICAgICB8ICAgIDggKy0KIHNyYy91c2ItZGV2aWNlLWNkLmMgICAg
ICB8ICA3ODQgKysrKysrKysrKysKIHNyYy91c2ItZGV2aWNlLWNkLmggICAgICB8ICAgMzQgKwog
c3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgICA2MyArLQogc3JjL3VzYi1lbXVsYXRpb24uaCAg
ICAgIHwgICA4OCArKwogc3JjL3VzYnV0aWwuYyAgICAgICAgICAgIHwgICAgMyAtCiBzcmMvdXNi
dXRpbC5oICAgICAgICAgICAgfCAgICA0IC0KIHRlc3RzL2NkLWVtdS5jICAgICAgICAgICB8ICAz
MjAgKysrKysKIHRlc3RzL21lc29uLmJ1aWxkICAgICAgICB8ICAgMTIgKy0KIDE5IGZpbGVzIGNo
YW5nZWQsIDU5NTMgaW5zZXJ0aW9ucygrKSwgMTAyIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IHNyYy9jZC1zY3NpLWRldi1wYXJhbXMuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9j
ZC1zY3NpLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS5oCiBjcmVhdGUgbW9kZSAx
MDA2NDQgc3JjL2NkLXVzYi1idWxrLW1zZC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL2NkLXVz
Yi1idWxrLW1zZC5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3Njc2ktY29uc3RhbnRzLmgKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWRldmljZS1jZC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQg
c3JjL3VzYi1kZXZpY2UtY2QuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy91c2ItZW11bGF0aW9u
LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9jZC1lbXUuYwoKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
