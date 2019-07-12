Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA659669B2
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 11:12:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6CB6E32B;
	Fri, 12 Jul 2019 09:12:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B91A86E32A
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 61EE330C0DFB
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:48 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DF45310027C6
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:47 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:12:41 +0200
Message-Id: <20190712091242.13214-7-victortoso@redhat.com>
In-Reply-To: <20190712091242.13214-1-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Fri, 12 Jul 2019 09:12:48 +0000 (UTC)
Subject: [Spice-devel] [linux/vd-agent v1 6/7] x11-randr: simplest fix for
 address-of-packed-member
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKVGhlIHN0cnVjdCB0eXBlIGZv
ciB3aWR0aC9oZWlnaHQgaXMgdWludDMyX3Qgd2hpbGUgd2UgYXJlIHRyeWluZyB0bwphY2Nlc3Mg
YW5kIGNoYW5nZSBpdCB3aXRoIGludCogLSBjb2RlIGNhbiBiZSBpbXByb3ZlZCBhIGJpdCBpbiBm
b2xsb3dpbmcKcGF0Y2hlcyBidXQgdGhpcyBvbmUgZml4ZXMgdGhlIHdhcm5pbmcgYnkgY29weWlu
ZyB0aGUgdmFsdWUgZnJvbSB0aGUKc3RydWN0IGFuZCBjb3B5aW5nIGJhY2sgbmV3IHZhbHVlIGFm
dGVyd2FyZHMuCgpBbHNvOgotIE1vdmVkIHZhcmlhYmxlcyB0byBpbnRlcm5hbCBzY29wZTsKLSBB
ZGRlZCBicmFjZXMgdG8gaW5uZXIgaWY7CgogPiBzcmMvdmRhZ2VudC94MTEtcmFuZHIuYzogSW4g
ZnVuY3Rpb24g4oCYemVyb19iYXNlX21vbml0b3Jz4oCZOgogPiAgICAgc3JjL3ZkYWdlbnQveDEx
LXJhbmRyLmM6NjIxOjI4OiBlcnJvcjogdGFraW5nIGFkZHJlc3Mgb2YgcGFja2VkIG1lbWJlciBv
ZgogPiAgICAg4oCYc3RydWN0IFZEQWdlbnRNb25Db25maWfigJkgbWF5IHJlc3VsdCBpbiBhbiB1
bmFsaWduZWQgcG9pbnRlciB2YWx1ZQogPiBbLVdlcnJvcj1hZGRyZXNzLW9mLXBhY2tlZC1tZW1i
ZXJdCiA+ICAgNjIxIHwgICAgICAgICBtb25fd2lkdGggPSAoaW50ICopJm1vbl9jb25maWctPm1v
bml0b3JzW2ldLndpZHRoOwogPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgogPiBzcmMvdmRhZ2VudC94MTEtcmFuZHIuYzo2
MjI6Mjk6IGVycm9yOiB0YWtpbmcgYWRkcmVzcyBvZiBwYWNrZWQgbWVtYmVyIG9mCiA+ICAgICDi
gJhzdHJ1Y3QgVkRBZ2VudE1vbkNvbmZpZ+KAmSBtYXkgcmVzdWx0IGluIGFuIHVuYWxpZ25lZCBw
b2ludGVyIHZhbHVlCiA+ICAgICBbLVdlcnJvcj1hZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXJdCiA+
ICAgNjIyIHwgICAgICAgICBtb25faGVpZ2h0ID0gKGludCAqKSZtb25fY29uZmlnLT5tb25pdG9y
c1tpXS5oZWlnaHQ7CiA+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2
aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMgfCAxOCAr
KysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy92ZGFnZW50L3gxMS1yYW5kci5jIGIvc3JjL3Zk
YWdlbnQveDExLXJhbmRyLmMKaW5kZXggOTI0ZjVlYy4uNzU4NTAzMSAxMDA2NDQKLS0tIGEvc3Jj
L3ZkYWdlbnQveDExLXJhbmRyLmMKKysrIGIvc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMKQEAgLTYx
MSwyMCArNjExLDI0IEBAIHN0YXRpYyB2b2lkIHplcm9fYmFzZV9tb25pdG9ycyhzdHJ1Y3QgdmRh
Z2VudF94MTEgKngxMSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgKndpZHRo
LCBpbnQgKmhlaWdodCkKIHsKICAgICBpbnQgaSwgbWluX3ggPSBJTlRfTUFYLCBtaW5feSA9IElO
VF9NQVgsIG1heF94ID0gSU5UX01JTiwgbWF4X3kgPSBJTlRfTUlOOwotICAgIGludCAqbW9uX2hl
aWdodCwgKm1vbl93aWR0aDsKIAogICAgIGZvciAoaSA9IDA7IGkgPCBtb25fY29uZmlnLT5udW1f
b2ZfbW9uaXRvcnM7IGkrKykgewotICAgICAgICBpZiAoIW1vbml0b3JfZW5hYmxlZCgmbW9uX2Nv
bmZpZy0+bW9uaXRvcnNbaV0pKQorICAgICAgICBpbnQgbW9uX2hlaWdodCwgbW9uX3dpZHRoOwor
CisgICAgICAgIGlmICghbW9uaXRvcl9lbmFibGVkKCZtb25fY29uZmlnLT5tb25pdG9yc1tpXSkp
IHsKICAgICAgICAgICAgIGNvbnRpbnVlOworICAgICAgICB9CiAgICAgICAgIG1vbl9jb25maWct
Pm1vbml0b3JzW2ldLnggJj0gfjc7CiAgICAgICAgIG1vbl9jb25maWctPm1vbml0b3JzW2ldLndp
ZHRoICY9IH43OwotICAgICAgICBtb25fd2lkdGggPSAoaW50ICopJm1vbl9jb25maWctPm1vbml0
b3JzW2ldLndpZHRoOwotICAgICAgICBtb25faGVpZ2h0ID0gKGludCAqKSZtb25fY29uZmlnLT5t
b25pdG9yc1tpXS5oZWlnaHQ7Ci0gICAgICAgIGNvbnN0cmFpbl90b19zY3JlZW4oeDExLCBtb25f
d2lkdGgsIG1vbl9oZWlnaHQpOworICAgICAgICBtb25fd2lkdGggPSBtb25fY29uZmlnLT5tb25p
dG9yc1tpXS53aWR0aDsKKyAgICAgICAgbW9uX2hlaWdodCA9IG1vbl9jb25maWctPm1vbml0b3Jz
W2ldLmhlaWdodDsKKyAgICAgICAgY29uc3RyYWluX3RvX3NjcmVlbih4MTEsICZtb25fd2lkdGgs
ICZtb25faGVpZ2h0KTsKICAgICAgICAgbWluX3ggPSBNSU4obW9uX2NvbmZpZy0+bW9uaXRvcnNb
aV0ueCwgbWluX3gpOwogICAgICAgICBtaW5feSA9IE1JTihtb25fY29uZmlnLT5tb25pdG9yc1tp
XS55LCBtaW5feSk7Ci0gICAgICAgIG1heF94ID0gTUFYKG1vbl9jb25maWctPm1vbml0b3JzW2ld
LnggKyAqbW9uX3dpZHRoLCBtYXhfeCk7Ci0gICAgICAgIG1heF95ID0gTUFYKG1vbl9jb25maWct
Pm1vbml0b3JzW2ldLnkgKyAqbW9uX2hlaWdodCwgbWF4X3kpOworICAgICAgICBtYXhfeCA9IE1B
WChtb25fY29uZmlnLT5tb25pdG9yc1tpXS54ICsgbW9uX3dpZHRoLCBtYXhfeCk7CisgICAgICAg
IG1heF95ID0gTUFYKG1vbl9jb25maWctPm1vbml0b3JzW2ldLnkgKyBtb25faGVpZ2h0LCBtYXhf
eSk7CisgICAgICAgIG1vbl9jb25maWctPm1vbml0b3JzW2ldLndpZHRoID0gbW9uX3dpZHRoOwor
ICAgICAgICBtb25fY29uZmlnLT5tb25pdG9yc1tpXS5oZWlnaHQgPSBtb25faGVpZ2h0OwogICAg
IH0KICAgICBpZiAobWluX3ggIT0gMCB8fCBtaW5feSAhPSAwKSB7CiAgICAgICAgIHN5c2xvZyhM
T0dfRVJSLCAiJXM6IGFnZW50IGNvbmZpZyAlZCwlZCByb290ZWQsIGFkanVzdGluZyB0byAwLDAu
IiwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
