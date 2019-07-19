Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A38836E4D1
	for <lists+spice-devel@lfdr.de>; Fri, 19 Jul 2019 13:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 052CF6E808;
	Fri, 19 Jul 2019 11:13:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B866E808
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2019 11:13:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 880A6C06511B
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2019 11:13:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EEB061991
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2019 11:13:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7735E4E58D;
 Fri, 19 Jul 2019 11:13:19 +0000 (UTC)
Date: Fri, 19 Jul 2019 07:13:19 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1726148389.1218194.1563534799281.JavaMail.zimbra@redhat.com>
In-Reply-To: <481537351.70125.1563182527868.JavaMail.zimbra@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-8-victortoso@redhat.com>
 <481537351.70125.1563182527868.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.2]
Thread-Topic: vdagent: simple fix for address-of-packed-member
Thread-Index: W+zDrMDBqCGX837+tGYLUKVdmpefYdbt6UBB
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Fri, 19 Jul 2019 11:13:19 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd-agent v1 7/7] vdagent: simple fix for
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiA+IAo+ID4gRnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgo+ID4gCj4g
PiBTZWVtcyB0byBiZSBhIGZhbHNlIHBvc2l0aXZlIGJ1dCBhcyB0aGlzIG1lc3NhZ2Ugb25seSBo
YXBwZW5zIHdoZW4gdXNlcgo+ID4gY2xpZW50IGNvbm5lY3RzLCB3ZSBjYW4gY29weSB0aGlzIGFy
cmF5IHRvIG1ha2UgY29tcGlsaW5nIHdhcm4gZnJlZS4KPiA+IAo+ID4gID4gc3JjL3ZkYWdlbnQv
dmRhZ2VudC5jOiBJbiBmdW5jdGlvbiDigJhkYWVtb25fcmVhZF9jb21wbGV0ZeKAmToKPiA+ICA+
IHNyYy92ZGFnZW50L3ZkYWdlbnQuYzoyMjY6NzE6IGVycm9yOiB0YWtpbmcgYWRkcmVzcyBvZiBw
YWNrZWQgbWVtYmVyIG9mCj4gPiAgPiAgICAg4oCYc3RydWN0IFZEQWdlbnRBdWRpb1ZvbHVtZVN5
bmPigJkgbWF5IHJlc3VsdCBpbiBhbiB1bmFsaWduZWQgcG9pbnRlcgo+ID4gID4gICAgIHZhbHVl
IFstV2Vycm9yPWFkZHJlc3Mtb2YtcGFja2VkLW1lbWJlcl0KPiA+ICA+ICAgMjI2IHwgICAgICAg
ICAgICAgdmRhZ2VudF9hdWRpb19wbGF5YmFja19zeW5jKGF2cy0+bXV0ZSwKPiA+ICA+ICAgYXZz
LT5uY2hhbm5lbHMsCj4gPiAgPiAgIGF2cy0+dm9sdW1lKTsKPiA+ICA+ICAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIH5+fl5+fn5+fn5+Cj4gPiAgPiBzcmMvdmRhZ2VudC92ZGFnZW50LmM6MjI4OjY5OiBlcnJv
cjogdGFraW5nIGFkZHJlc3Mgb2YgcGFja2VkIG1lbWJlciBvZgo+ID4gID4gICAgIOKAmHN0cnVj
dCBWREFnZW50QXVkaW9Wb2x1bWVTeW5j4oCZIG1heSByZXN1bHQgaW4gYW4gdW5hbGlnbmVkIHBv
aW50ZXIKPiA+ICA+ICAgICB2YWx1ZSBbLVdlcnJvcj1hZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXJd
Cj4gPiAgPiAgIDIyOCB8ICAgICAgICAgICAgIHZkYWdlbnRfYXVkaW9fcmVjb3JkX3N5bmMoYXZz
LT5tdXRlLCBhdnMtPm5jaGFubmVscywKPiA+ICA+ICAgYXZzLT52b2x1bWUpOwo+ID4gID4gICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIH5+fl5+fn5+fn5+Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBU
b3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICBzcmMvdmRhZ2VudC92ZGFn
ZW50LmMgfCA3ICsrKysrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc3JjL3ZkYWdlbnQvdmRhZ2VudC5j
IGIvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jCj4gPiBpbmRleCBkNzk5ZDFmLi4wZTJlNzNlIDEwMDY0
NAo+ID4gLS0tIGEvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jCj4gPiArKysgYi9zcmMvdmRhZ2VudC92
ZGFnZW50LmMKPiA+IEBAIC0yMjIsMTEgKzIyMiwxNCBAQCBzdGF0aWMgdm9pZCBkYWVtb25fcmVh
ZF9jb21wbGV0ZShzdHJ1Y3QKPiA+IHVkc2NzX2Nvbm5lY3Rpb24gKipjb25ucCwKPiA+ICAgICAg
ICAgIGJyZWFrOwo+ID4gICAgICBjYXNlIFZEQUdFTlREX0FVRElPX1ZPTFVNRV9TWU5DOiB7Cj4g
PiAgICAgICAgICBWREFnZW50QXVkaW9Wb2x1bWVTeW5jICphdnMgPSAoVkRBZ2VudEF1ZGlvVm9s
dW1lU3luYyAqKWRhdGE7Cj4gPiArICAgICAgICB1aW50MTZfdCAqdm9sdW1lID0gZ19tZW1kdXAo
YXZzLT52b2x1bWUsIHNpemVvZih1aW50MTZfdCkgKgo+ID4gYXZzLT5uY2hhbm5lbHMpOwo+ID4g
Kwo+ID4gICAgICAgICAgaWYgKGF2cy0+aXNfcGxheWJhY2spIHsKPiA+IC0gICAgICAgICAgICB2
ZGFnZW50X2F1ZGlvX3BsYXliYWNrX3N5bmMoYXZzLT5tdXRlLCBhdnMtPm5jaGFubmVscywKPiA+
IGF2cy0+dm9sdW1lKTsKPiA+ICsgICAgICAgICAgICB2ZGFnZW50X2F1ZGlvX3BsYXliYWNrX3N5
bmMoYXZzLT5tdXRlLCBhdnMtPm5jaGFubmVscywKPiA+IHZvbHVtZSk7Cj4gPiAgICAgICAgICB9
IGVsc2Ugewo+ID4gLSAgICAgICAgICAgIHZkYWdlbnRfYXVkaW9fcmVjb3JkX3N5bmMoYXZzLT5t
dXRlLCBhdnMtPm5jaGFubmVscywKPiA+IGF2cy0+dm9sdW1lKTsKPiA+ICsgICAgICAgICAgICB2
ZGFnZW50X2F1ZGlvX3JlY29yZF9zeW5jKGF2cy0+bXV0ZSwgYXZzLT5uY2hhbm5lbHMsIHZvbHVt
ZSk7Cj4gPiAgICAgICAgICB9Cj4gPiArICAgICAgICBnX2ZyZWUodm9sdW1lKTsKPiA+ICAgICAg
ICAgIGJyZWFrOwo+ID4gICAgICB9Cj4gPiAgICAgIGNhc2UgVkRBR0VOVERfRklMRV9YRkVSX0RB
VEE6Cj4gCj4gVGhpcyBwYXRjaCBhZGRzIGEgYnVmZmVyIG92ZXJmbG93Lgo+IAoKQXMgYSBzZWNv
bmQgdGhvdWdoIHRoaXMgaXMgdGhlIHByb3RvY29sIGZyb20gZGFlbW9uIHRvIGFnZW50IHNvCnNv
dXJjZSBzaG91bGQgYmUgc2FmZSBhbnl3YXkuCgpBY2tlZC4KCkZyZWRpYW5vCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
