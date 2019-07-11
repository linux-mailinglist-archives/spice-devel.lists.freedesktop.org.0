Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB2D65341
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62EAF6E15F;
	Thu, 11 Jul 2019 08:35:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E51376E15F
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:35:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8A1858552E
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:35:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EC2B5D71D
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:35:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 70F991833001;
 Thu, 11 Jul 2019 08:35:07 +0000 (UTC)
Date: Thu, 11 Jul 2019 04:35:05 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <984723011.27120737.1562834105738.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190704080841.21403-1-kpouget@redhat.com>
References: <20190704080841.21403-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.21]
Thread-Topic: streaming: Restart streams on video-codec changes
Thread-Index: w9fvEMzY4vnFCPld2RQmZ+srXHx3GA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 11 Jul 2019 08:35:07 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] streaming: Restart streams
 on video-codec changes
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

PiAKPiBJbnRlcnJ1cHQgdGhlIHZpZGVvIHN0cmVhbXMgd2hlbiB0aGUgdXNlciBjaGFuZ2VzIHRo
ZSBwcmVmZXJyZWQKPiB2aWRlby1jb2RlY3MgKGRjY19oYW5kbGVfcHJlZmVycmVkX3ZpZGVvX2Nv
ZGVjX3R5cGUpIG9yIHdoZW4gdGhlIGhvc3QKPiBhZG1pbiB1cGRhdGVzIHRoZSBsaXN0IG9mIHZp
ZGVvLWNvZGVjcyBhbGxvd2VkCj4gKGRpc3BsYXlfY2hhbm5lbF9zZXRfdmlkZW9fY29kZWNzKS4K
PiAKPiBUaGUgdmlkZW8gc3RyZWFtaW5nIHdpbGwgYmUgYXV0b21hdGljYWxseSByZXN0YXJ0ZWQg
Ynkgc3BpY2UKPiB2aWRlby1kZXRlY3Rpb24gcnVsZXMuCgpJIHN1cHBvc2UgaXQgd291bGQgYmUg
bW9yZSBzbWFydCB0byBjaGVjayBpZiB0aGUgdXNlZCBjb2RlYyBpcyBzdGlsbApmaW5lIGFuZCBh
bHNvIGlmIGEgc2luZ2xlIGNsaWVudCB3YW50cyB0byBjaGFuZ2UgdGhlIGxpc3Qgb2YgY29kZWNz
Cml0IHdvdWxkIGJlIGdvb2QgdG8gY2hlY2sgYWxsIGNsaWVudHMuIE9uIHRoZSBvdGhlciBoYW5k
IHRoZSBsaXN0Cm9mIGNvZGVjcyBpcyBub3Qgc3VwcG9zZWQgdG8gYmUgY2hhbmdlZCBtdWNoIGFu
ZCB0aGUgc3VwcG9ydCBmb3IKbXVsdGlwbGUgY2xpZW50cyBpcyBzb21ldGhpbmcgbmV2ZXIgYmVl
biBwcm9kdWN0aW9uIHJlYWR5IGFuZCBkaXNhYmxlZAoob25seSBhbiBleHBlcmltZW50YWwgZmVh
dHVyZSB3aXRoIHBsZW50eSBvZiBidWdzKQoKQWNrZWQKCkZyZWRpYW5vCgo+IC0tLQo+ICBzZXJ2
ZXIvZGNjLmMgICAgICAgICAgICAgfCAyICsrCj4gIHNlcnZlci9kaXNwbGF5LWNoYW5uZWwuYyB8
IDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvc2VydmVyL2RjYy5jIGIvc2VydmVyL2RjYy5jCj4gaW5kZXggNzFkMDliNzcuLjg2ODkzZmZl
IDEwMDY0NAo+IC0tLSBhL3NlcnZlci9kY2MuYwo+ICsrKyBiL3NlcnZlci9kY2MuYwo+IEBAIC0x
MTk4LDYgKzExOTgsOCBAQCBzdGF0aWMgaW50Cj4gZGNjX2hhbmRsZV9wcmVmZXJyZWRfdmlkZW9f
Y29kZWNfdHlwZShEaXNwbGF5Q2hhbm5lbENsaWVudCAqZGNjLAo+ICAKPiAgICAgIC8qIE5ldyBj
bGllbnQgcHJlZmVyZW5jZSAqLwo+ICAgICAgZGNjX3VwZGF0ZV9wcmVmZXJyZWRfdmlkZW9fY29k
ZWNzKGRjYyk7Cj4gKyAgICB2aWRlb19zdHJlYW1fZGV0YWNoX2FuZF9zdG9wKERDQ19UT19EQyhk
Y2MpKTsKPiArCj4gICAgICByZXR1cm4gVFJVRTsKPiAgfQo+ICAKPiBkaWZmIC0tZ2l0IGEvc2Vy
dmVyL2Rpc3BsYXktY2hhbm5lbC5jIGIvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCj4gaW5kZXgg
NDY3N2MyNjEuLjc1MjY2NTk4IDEwMDY0NAo+IC0tLSBhL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwu
Ywo+ICsrKyBiL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuYwo+IEBAIC0yNTUsNiArMjU1LDggQEAg
dm9pZCBkaXNwbGF5X2NoYW5uZWxfc2V0X3ZpZGVvX2NvZGVjcyhEaXNwbGF5Q2hhbm5lbAo+ICpk
aXNwbGF5LCBHQXJyYXkgKnZpZGVvX2NvZAo+ICAgICAgZ19jbGVhcl9wb2ludGVyKCZkaXNwbGF5
LT5wcml2LT52aWRlb19jb2RlY3MsIGdfYXJyYXlfdW5yZWYpOwo+ICAgICAgZGlzcGxheS0+cHJp
di0+dmlkZW9fY29kZWNzID0gZ19hcnJheV9yZWYodmlkZW9fY29kZWNzKTsKPiAgICAgIGdfb2Jq
ZWN0X25vdGlmeShHX09CSkVDVChkaXNwbGF5KSwgInZpZGVvLWNvZGVjcyIpOwo+ICsKPiArICAg
IHZpZGVvX3N0cmVhbV9kZXRhY2hfYW5kX3N0b3AoZGlzcGxheSk7Cj4gIH0KPiAgCj4gIEdBcnJh
eSAqZGlzcGxheV9jaGFubmVsX2dldF92aWRlb19jb2RlY3MoRGlzcGxheUNoYW5uZWwgKmRpc3Bs
YXkpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
