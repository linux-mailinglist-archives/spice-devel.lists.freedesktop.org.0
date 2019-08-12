Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE03899F7
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 11:40:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A58B6E4BA;
	Mon, 12 Aug 2019 09:40:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4DBE6E4A6
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:40:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4AF24C05AA64
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:40:05 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-153.brq.redhat.com [10.40.204.153])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C594069FA2;
 Mon, 12 Aug 2019 09:40:02 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 12 Aug 2019 10:39:54 +0100
Message-Id: <20190812093954.17996-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 12 Aug 2019 09:40:05 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v3] glz-encode: Remove obsolete
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

VGhlIEdMWiBjb2RlIGlzIGJhc2ljYWxseSBMWiBjb2RlIChpbiBzcGljZS1jb21tb24pIHNoYXJp
bmcgaW1hZ2UKc2VnbWVudHMgYmV0d2VlbiBtdWx0aXBsZSBpbWFnZXMuClRoZSBjb2RlIGZvciBS
TEUgY2hlY2sgaW4gTFogKGNvbW1vbi9sel9jb21wcmVzc190bXBsLmMpIGlzIGRlYWxpbmcKd2l0
aCBib3RoIFJMRSBhbmQgZGljdGlvbmFyeSBtYXRjaGVzIGJlaW5nOgoKICAgIGlmICghZGlzdGFu
Y2UpIHsKICAgICAgICAvKiB6ZXJvIGRpc3RhbmNlIG1lYW5zIGEgcnVuICovCiAgICAgICAgUElY
RUwgeCA9ICpyZWY7CiAgICAgICAgd2hpbGUgKChpcCA8IGlwX2JvdW5kKSAmJiAocmVmIDwgcmVm
X2xpbWl0KSkgeyAvLyBUT0RPOiBtYXliZSBzZXBhcmF0ZSBhIHJ1biBmcm9tCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyAgICAgICB0aGUg
c2FtZSBzZWcgb3IgZnJvbSBkaWZmZXJlbnQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC8vICAgICAgIG9uZXMgaW4gb3JkZXIgdG8gc3BhcmUK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8v
ICAgICAgIHJlZiA8IHJlZl9saW1pdAoKaW4gR0xaIHRoYXQgcGFydCB3YXMgY29waWVkIHRvIFJM
RSBwYXJ0IHJlbW92aW5nIHRoZSBuZWVkIGZvciB0aGUKc2Vjb25kIHNlZ21lbnQgKCJyZWYiKS4g
SG93ZXZlciB0aGUgY29tbWVudCBhbmQgc2V0dGluZyByZWYgdmFyaWFibGVzCndlcmUgbm90IHJl
bW92ZWQuIFJlbW92ZSB0aGUgb2xkIGNvZGUgdG8gYXZvaWQgY29uZnVzaW9ucy4KClRoaXMgYWxz
byByZW1vdmUgYSBDb3ZzY2FuIHdhcm5pbmcgYXMgcmVmX2xpbWl0IHdhcyBzZXQgbm90IG5vdCB1
c2VkCihyZXBvcnRlZCBieSBVcmkgTHVibGluKS4KVGhlIHdhcm5pbmcgd2FzOgoKQ0xBTkcgd2Fy
bmluZzogIlZhbHVlIHN0b3JlZCB0byAncmVmX2xpbWl0JyBpcyBuZXZlciByZWFkIgoKU2lnbmVk
LW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQpDaGFuZ2Vz
IHNpbmNlIHYyOgotIGJldHRlciByZWZlcmVuY2UgdG8gc3BpY2UtY29tbW9uIGNvZGUKCkNoYW5n
ZXMgc2luY2UgdjE6Ci0gQ292c2NhbiBpcyBub3QgQ292ZXJpdHkKLS0tCiBzZXJ2ZXIvZ2x6LWVu
Y29kZS50bXBsLmMgfCAxMCArKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9nbHotZW5jb2RlLnRtcGwu
YyBiL3NlcnZlci9nbHotZW5jb2RlLnRtcGwuYwppbmRleCA0OGJhYjUwYmMuLjkyZGViMGUxMiAx
MDA2NDQKLS0tIGEvc2VydmVyL2dsei1lbmNvZGUudG1wbC5jCisrKyBiL3NlcnZlci9nbHotZW5j
b2RlLnRtcGwuYwpAQCAtMjc2LDE5ICsyNzYsMTUgQEAgc3RhdGljIHZvaWQgRk5BTUUoY29tcHJl
c3Nfc2VnKShFbmNvZGVyICplbmNvZGVyLCB1aW50MzJfdCBzZWdfaWR4LCBQSVhFTCAqZnJvbSwK
IAogICAgICAgICBpZiAoTFpfRVhQRUNUX0NPTkRJVElPTkFMKGlwID4gKFBJWEVMICopKHNlZy0+
bGluZXMpKSkgewogICAgICAgICAgICAgaWYgKFNBTUVfUElYRUwoaXBbLTFdLCBpcFswXSkgJiYg
U0FNRV9QSVhFTChpcFswXSwgaXBbMV0pICYmIFNBTUVfUElYRUwoaXBbMV0sIGlwWzJdKSkgewot
ICAgICAgICAgICAgICAgIFBJWEVMIHg7CisgICAgICAgICAgICAgICAgUElYRUwgeCA9IGlwWzJd
OworCiAgICAgICAgICAgICAgICAgcGl4X2Rpc3QgPSAxOwogICAgICAgICAgICAgICAgIGltYWdl
X2Rpc3QgPSAwOwogCiAgICAgICAgICAgICAgICAgaXAgKz0gMzsKLSAgICAgICAgICAgICAgICBy
ZWYgPSBhbmNob3IgKyAyOwotICAgICAgICAgICAgICAgIHJlZl9saW1pdCA9IChQSVhFTCAqKShz
ZWctPmxpbmVzX2VuZCk7CiAgICAgICAgICAgICAgICAgbGVuID0gMzsKIAotICAgICAgICAgICAg
ICAgIHggPSAqcmVmOwotCi0gICAgICAgICAgICAgICAgd2hpbGUgKGlwIDwgaXBfYm91bmQpIHsg
Ly8gVE9ETzogbWF5YmUgc2VwYXJhdGUgYSBydW4gZnJvbSB0aGUgc2FtZSBzZWcgb3IgZnJvbQot
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gZGlmZmVyZW50IG9uZXMg
aW4gb3JkZXIgdG8gc3BhcmUgcmVmIDwgcmVmX2xpbWl0CisgICAgICAgICAgICAgICAgd2hpbGUg
KGlwIDwgaXBfYm91bmQpIHsKICAgICAgICAgICAgICAgICAgICAgaWYgKCFTQU1FX1BJWEVMKCpp
cCwgeCkpIHsKICAgICAgICAgICAgICAgICAgICAgICAgIGlwKys7CiAgICAgICAgICAgICAgICAg
ICAgICAgICBicmVhazsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
