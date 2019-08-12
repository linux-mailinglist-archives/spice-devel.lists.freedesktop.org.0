Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A26F5897E1
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 09:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D666E36B;
	Mon, 12 Aug 2019 07:30:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6FF96E36B
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:30:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D7661C0740DF
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:30:47 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-153.brq.redhat.com [10.40.204.153])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2F2D110013A1;
 Mon, 12 Aug 2019 07:30:39 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 12 Aug 2019 08:29:59 +0100
Message-Id: <20190812072959.14082-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 12 Aug 2019 07:30:47 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2] glz-encode: Remove obsolete
 reference segment
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

VGhlIEdMWiBjb2RlIGlzIGJhc2ljYWxseSBMWiBjb2RlIHNoYXJpbmcgaW1hZ2Ugc2VnbWVudHMg
YmV0d2VlbgptdWx0aXBsZSBpbWFnZXMuClRoZSBjb2RlIGZvciBSTEUgY2hlY2sgaW4gTFogaXMg
ZGVhbGluZyB3aXRoIGJvdGggUkxFIGFuZCBkaWN0aW9uYXJ5Cm1hdGNoZXMgYmVpbmc6CgogICAg
aWYgKCFkaXN0YW5jZSkgewogICAgICAgIC8qIHplcm8gZGlzdGFuY2UgbWVhbnMgYSBydW4gKi8K
ICAgICAgICBQSVhFTCB4ID0gKnJlZjsKICAgICAgICB3aGlsZSAoKGlwIDwgaXBfYm91bmQpICYm
IChyZWYgPCByZWZfbGltaXQpKSB7IC8vIFRPRE86IG1heWJlIHNlcGFyYXRlIGEgcnVuIGZyb20K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8v
ICAgICAgIHRoZSBzYW1lIHNlZyBvciBmcm9tIGRpZmZlcmVudAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gICAgICAgb25lcyBpbiBvcmRl
ciB0byBzcGFyZQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLy8gICAgICAgcmVmIDwgcmVmX2xpbWl0CgppbiBHTFogdGhhdCBwYXJ0IHdhcyBj
b3BpZWQgdG8gUkxFIHBhcnQgcmVtb3ZpbmcgdGhlIG5lZWQgZm9yIHRoZQpzZWNvbmQgc2VnbWVu
dCAoInJlZiIpLiBIb3dldmVyIHRoZSBjb21tZW50IGFuZCBzZXR0aW5nIHJlZiB2YXJpYWJsZXMK
d2VyZSBub3QgcmVtb3ZlZC4gUmVtb3ZlIHRoZSBvbGQgY29kZSB0byBhdm9pZCBjb25mdXNpb25z
LgoKVGhpcyBhbHNvIHJlbW92ZSBhIENvdnNjYW4gd2FybmluZyBhcyByZWZfbGltaXQgd2FzIHNl
dCBub3Qgbm90IHVzZWQKKHJlcG9ydGVkIGJ5IFVyaSBMdWJsaW4pLgpUaGUgd2FybmluZyB3YXM6
CgpDTEFORyB3YXJuaW5nOiAiVmFsdWUgc3RvcmVkIHRvICdyZWZfbGltaXQnIGlzIG5ldmVyIHJl
YWQiCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4K
LS0tCkNoYW5nZXMgc2luY2UgdjE6Ci0gQ292c2NhbiBpcyBub3QgQ292ZXJpdHkKLS0tCiBzZXJ2
ZXIvZ2x6LWVuY29kZS50bXBsLmMgfCAxMCArKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9nbHotZW5j
b2RlLnRtcGwuYyBiL3NlcnZlci9nbHotZW5jb2RlLnRtcGwuYwppbmRleCA0OGJhYjUwYmMuLjky
ZGViMGUxMiAxMDA2NDQKLS0tIGEvc2VydmVyL2dsei1lbmNvZGUudG1wbC5jCisrKyBiL3NlcnZl
ci9nbHotZW5jb2RlLnRtcGwuYwpAQCAtMjc2LDE5ICsyNzYsMTUgQEAgc3RhdGljIHZvaWQgRk5B
TUUoY29tcHJlc3Nfc2VnKShFbmNvZGVyICplbmNvZGVyLCB1aW50MzJfdCBzZWdfaWR4LCBQSVhF
TCAqZnJvbSwKIAogICAgICAgICBpZiAoTFpfRVhQRUNUX0NPTkRJVElPTkFMKGlwID4gKFBJWEVM
ICopKHNlZy0+bGluZXMpKSkgewogICAgICAgICAgICAgaWYgKFNBTUVfUElYRUwoaXBbLTFdLCBp
cFswXSkgJiYgU0FNRV9QSVhFTChpcFswXSwgaXBbMV0pICYmIFNBTUVfUElYRUwoaXBbMV0sIGlw
WzJdKSkgewotICAgICAgICAgICAgICAgIFBJWEVMIHg7CisgICAgICAgICAgICAgICAgUElYRUwg
eCA9IGlwWzJdOworCiAgICAgICAgICAgICAgICAgcGl4X2Rpc3QgPSAxOwogICAgICAgICAgICAg
ICAgIGltYWdlX2Rpc3QgPSAwOwogCiAgICAgICAgICAgICAgICAgaXAgKz0gMzsKLSAgICAgICAg
ICAgICAgICByZWYgPSBhbmNob3IgKyAyOwotICAgICAgICAgICAgICAgIHJlZl9saW1pdCA9IChQ
SVhFTCAqKShzZWctPmxpbmVzX2VuZCk7CiAgICAgICAgICAgICAgICAgbGVuID0gMzsKIAotICAg
ICAgICAgICAgICAgIHggPSAqcmVmOwotCi0gICAgICAgICAgICAgICAgd2hpbGUgKGlwIDwgaXBf
Ym91bmQpIHsgLy8gVE9ETzogbWF5YmUgc2VwYXJhdGUgYSBydW4gZnJvbSB0aGUgc2FtZSBzZWcg
b3IgZnJvbQotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gZGlmZmVy
ZW50IG9uZXMgaW4gb3JkZXIgdG8gc3BhcmUgcmVmIDwgcmVmX2xpbWl0CisgICAgICAgICAgICAg
ICAgd2hpbGUgKGlwIDwgaXBfYm91bmQpIHsKICAgICAgICAgICAgICAgICAgICAgaWYgKCFTQU1F
X1BJWEVMKCppcCwgeCkpIHsKICAgICAgICAgICAgICAgICAgICAgICAgIGlwKys7CiAgICAgICAg
ICAgICAgICAgICAgICAgICBicmVhazsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
