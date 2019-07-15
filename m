Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6771368639
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 11:22:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E339089798;
	Mon, 15 Jul 2019 09:22:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695DC89798
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:22:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F2BE1308FC4B
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:22:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E9EAD6013B
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:22:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id DCA8E19724;
 Mon, 15 Jul 2019 09:22:07 +0000 (UTC)
Date: Mon, 15 Jul 2019 05:22:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <481537351.70125.1563182527868.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190712091242.13214-8-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-8-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.24]
Thread-Topic: vdagent: simple fix for address-of-packed-member
Thread-Index: W+zDrMDBqCGX837+tGYLUKVdmpefYQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Mon, 15 Jul 2019 09:22:08 +0000 (UTC)
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gU2VlbXMgdG8g
YmUgYSBmYWxzZSBwb3NpdGl2ZSBidXQgYXMgdGhpcyBtZXNzYWdlIG9ubHkgaGFwcGVucyB3aGVu
IHVzZXIKPiBjbGllbnQgY29ubmVjdHMsIHdlIGNhbiBjb3B5IHRoaXMgYXJyYXkgdG8gbWFrZSBj
b21waWxpbmcgd2FybiBmcmVlLgo+IAo+ICA+IHNyYy92ZGFnZW50L3ZkYWdlbnQuYzogSW4gZnVu
Y3Rpb24g4oCYZGFlbW9uX3JlYWRfY29tcGxldGXigJk6Cj4gID4gc3JjL3ZkYWdlbnQvdmRhZ2Vu
dC5jOjIyNjo3MTogZXJyb3I6IHRha2luZyBhZGRyZXNzIG9mIHBhY2tlZCBtZW1iZXIgb2YKPiAg
PiAgICAg4oCYc3RydWN0IFZEQWdlbnRBdWRpb1ZvbHVtZVN5bmPigJkgbWF5IHJlc3VsdCBpbiBh
biB1bmFsaWduZWQgcG9pbnRlcgo+ICA+ICAgICB2YWx1ZSBbLVdlcnJvcj1hZGRyZXNzLW9mLXBh
Y2tlZC1tZW1iZXJdCj4gID4gICAyMjYgfCAgICAgICAgICAgICB2ZGFnZW50X2F1ZGlvX3BsYXli
YWNrX3N5bmMoYXZzLT5tdXRlLCBhdnMtPm5jaGFubmVscywKPiAgPiAgIGF2cy0+dm9sdW1lKTsK
PiAgPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB+fn5efn5+fn5+fgo+ICA+IHNyYy92ZGFnZW50L3ZkYWdl
bnQuYzoyMjg6Njk6IGVycm9yOiB0YWtpbmcgYWRkcmVzcyBvZiBwYWNrZWQgbWVtYmVyIG9mCj4g
ID4gICAgIOKAmHN0cnVjdCBWREFnZW50QXVkaW9Wb2x1bWVTeW5j4oCZIG1heSByZXN1bHQgaW4g
YW4gdW5hbGlnbmVkIHBvaW50ZXIKPiAgPiAgICAgdmFsdWUgWy1XZXJyb3I9YWRkcmVzcy1vZi1w
YWNrZWQtbWVtYmVyXQo+ICA+ICAgMjI4IHwgICAgICAgICAgICAgdmRhZ2VudF9hdWRpb19yZWNv
cmRfc3luYyhhdnMtPm11dGUsIGF2cy0+bmNoYW5uZWxzLAo+ICA+ICAgYXZzLT52b2x1bWUpOwo+
ICA+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB+fn5efn5+fn5+fgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpY3Rv
ciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy92ZGFnZW50L3ZkYWdl
bnQuYyB8IDcgKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvdmRhZ2VudC92ZGFnZW50LmMgYi9zcmMv
dmRhZ2VudC92ZGFnZW50LmMKPiBpbmRleCBkNzk5ZDFmLi4wZTJlNzNlIDEwMDY0NAo+IC0tLSBh
L3NyYy92ZGFnZW50L3ZkYWdlbnQuYwo+ICsrKyBiL3NyYy92ZGFnZW50L3ZkYWdlbnQuYwo+IEBA
IC0yMjIsMTEgKzIyMiwxNCBAQCBzdGF0aWMgdm9pZCBkYWVtb25fcmVhZF9jb21wbGV0ZShzdHJ1
Y3QKPiB1ZHNjc19jb25uZWN0aW9uICoqY29ubnAsCj4gICAgICAgICAgYnJlYWs7Cj4gICAgICBj
YXNlIFZEQUdFTlREX0FVRElPX1ZPTFVNRV9TWU5DOiB7Cj4gICAgICAgICAgVkRBZ2VudEF1ZGlv
Vm9sdW1lU3luYyAqYXZzID0gKFZEQWdlbnRBdWRpb1ZvbHVtZVN5bmMgKilkYXRhOwo+ICsgICAg
ICAgIHVpbnQxNl90ICp2b2x1bWUgPSBnX21lbWR1cChhdnMtPnZvbHVtZSwgc2l6ZW9mKHVpbnQx
Nl90KSAqCj4gYXZzLT5uY2hhbm5lbHMpOwo+ICsKPiAgICAgICAgICBpZiAoYXZzLT5pc19wbGF5
YmFjaykgewo+IC0gICAgICAgICAgICB2ZGFnZW50X2F1ZGlvX3BsYXliYWNrX3N5bmMoYXZzLT5t
dXRlLCBhdnMtPm5jaGFubmVscywKPiBhdnMtPnZvbHVtZSk7Cj4gKyAgICAgICAgICAgIHZkYWdl
bnRfYXVkaW9fcGxheWJhY2tfc3luYyhhdnMtPm11dGUsIGF2cy0+bmNoYW5uZWxzLCB2b2x1bWUp
Owo+ICAgICAgICAgIH0gZWxzZSB7Cj4gLSAgICAgICAgICAgIHZkYWdlbnRfYXVkaW9fcmVjb3Jk
X3N5bmMoYXZzLT5tdXRlLCBhdnMtPm5jaGFubmVscywKPiBhdnMtPnZvbHVtZSk7Cj4gKyAgICAg
ICAgICAgIHZkYWdlbnRfYXVkaW9fcmVjb3JkX3N5bmMoYXZzLT5tdXRlLCBhdnMtPm5jaGFubmVs
cywgdm9sdW1lKTsKPiAgICAgICAgICB9Cj4gKyAgICAgICAgZ19mcmVlKHZvbHVtZSk7Cj4gICAg
ICAgICAgYnJlYWs7Cj4gICAgICB9Cj4gICAgICBjYXNlIFZEQUdFTlREX0ZJTEVfWEZFUl9EQVRB
OgoKVGhpcyBwYXRjaCBhZGRzIGEgYnVmZmVyIG92ZXJmbG93LgoKRnJlZGlhbm8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
