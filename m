Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAAB8912F
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 12:02:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDDE06E321;
	Sun, 11 Aug 2019 10:02:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3F86E321
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 10:02:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9CE3B307D84D
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 10:02:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 919531853A
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 10:02:25 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 84AD918089C8;
 Sun, 11 Aug 2019 10:02:25 +0000 (UTC)
Date: Sun, 11 Aug 2019 06:02:25 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <844999742.5452572.1565517745161.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190811092605.31952-2-uril@redhat.com>
References: <20190811092605.31952-1-uril@redhat.com>
 <20190811092605.31952-2-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.53, 10.4.195.20]
Thread-Topic: test-marshallers.proto: ArrayMessage: make space for name
Thread-Index: RIT89RkhBdnyVieGfhli9YrMGGTLZQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Sun, 11 Aug 2019 10:02:25 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-common PATCH 2/2] test-marshallers.proto:
 ArrayMessage: make space for name
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

PiAKPiBEbyBpdCBieSBhZGRpbmcgQGVuZCB0YWcuCj4gV2l0aG91dCBpdCAnbmFtZScgaXMgYSBu
b24tYWxsb2NhdGVkIHBvaW50ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJp
bEByZWRoYXQuY29tPgo+IC0tLQo+IAo+IElzIHRoZXJlIGEgYmV0dGVyIHdheSB0byBkbyBpdCA/
CgpJcyBub3QgY2xlYXIgd2hhdCB5b3UgYXJlIHRyeWluZyB0byBhY2hpZXZlIHdpdGggdGhpcyBw
YXRjaC4KCj4gCj4gLS0tCj4gCj4gIHRlc3RzL3Rlc3QtbWFyc2hhbGxlcnMucHJvdG8gfCAyICst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS90ZXN0cy90ZXN0LW1hcnNoYWxsZXJzLnByb3RvIGIvdGVzdHMvdGVzdC1tYXJz
aGFsbGVycy5wcm90bwo+IGluZGV4IDM0Y2M4OTIuLmVhYmQ0ODcgMTAwNjQ0Cj4gLS0tIGEvdGVz
dHMvdGVzdC1tYXJzaGFsbGVycy5wcm90bwo+ICsrKyBiL3Rlc3RzL3Rlc3QtbWFyc2hhbGxlcnMu
cHJvdG8KPiBAQCAtNiw3ICs2LDcgQEAgY2hhbm5lbCBUZXN0Q2hhbm5lbCB7Cj4gICAgIH0gU2hv
cnREYXRhU3ViTWFyc2hhbGw7Cj4gIAo+ICAgICBtZXNzYWdlIHsKPiAtICAgICAgaW50OCBuYW1l
W107Cj4gKyAgICAgIGludDggbmFtZVtdIEBlbmQ7Cj4gICAgIH0gQXJyYXlNZXNzYWdlOwo+ICAK
PiAgICAgIG1lc3NhZ2UgewoKV29uZGVyaW5nIHdoZXJlIHRoaXMgbWVzc2FnZSBpcyB1c2VkLCBJ
IGNhbm5vdCBmaW5kIG11Y2ggcmVmZXJlbmNlcwp0byBpdCBiZXNpZGUgYXV0b2dlbmVyYXRlZCBj
b2RlLgoKVGhlcmUncyBhIGRlY2xhcmF0aW9uIGZvciB0aGUgdHlwZToKCnR5cGVkZWYgc3RydWN0
IHsKICAgIGludDhfdCAqbmFtZTsKfSBTcGljZU1zZ01haW5BcnJheU1lc3NhZ2U7CgpJIHRyaWVk
IHRvIHVzZSB0aGUgY29kZSB0byBnZW5lcmF0ZSB0aGUgc3RydWN0dXJlIGRlZmluaXRpb25zIGFu
ZApJIGdvdCB0aGlzIGluc3RlYWQKCnR5cGVkZWYgc3RydWN0IFNwaWNlTXNnTWFpbkFycmF5TWVz
c2FnZSB7CiAgICBpbnQ4X3QgbmFtZVswXTsKfSBTcGljZU1zZ01haW5BcnJheU1lc3NhZ2U7CgpU
aGUgZGVtYXJzaGFsbGVyIHNlZW1zIHRvIG5vdCBhbGxvY2F0ZSBzcGFjZSBmb3IgdGhlIGZpZWxk
IHdoaWNoCnNlZW1zIHF1aXRlIGEgcHJvYmxlbSAobWF5YmUgdGhpcyBpcyBkZXRlY3RlZCBieSBD
b3Zlcml0eT8/KS4KCkkgcmVtZW1iZXIgSSBoYWQgYSBwYXRjaCB3aXRoIHNvbWUgbm90ZXMgYWJv
dXQgcG9zc2libGUKc2VjdXJpdHkgY29uY2VybmVkIG1peCBvZiBhdHRyaWJ1dGVzLCBtYXliZSB0
aGlzIHdhcyBvbmUKc2l0dWF0aW9uLgpUaGVyZSBhcmUgbm8gb2NjdXJyZW5jZXMgb2YgdGhpcyBt
aXggaW4gc3BpY2UucHJvdG8sIGVpdGhlcgp5b3UgaGF2ZSBAZW5kIG9yIEBhc19wdHIgbm90IGFy
cmF5cyB3aXRoIHVuc3BlY2lmaWVkIGxlbmd0aC4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
