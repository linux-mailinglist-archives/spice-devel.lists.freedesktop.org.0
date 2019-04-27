Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CC1B2FB
	for <lists+spice-devel@lfdr.de>; Sat, 27 Apr 2019 08:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F035F89291;
	Sat, 27 Apr 2019 06:55:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ACC89291
 for <spice-devel@lists.freedesktop.org>; Sat, 27 Apr 2019 06:55:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A172E30A9971;
 Sat, 27 Apr 2019 06:55:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 96E9A1717F;
 Sat, 27 Apr 2019 06:55:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C85C4A460;
 Sat, 27 Apr 2019 06:55:29 +0000 (UTC)
Date: Sat, 27 Apr 2019 02:55:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Roman Bogorodskiy <bogorodskiy@gmail.com>
Message-ID: <50108563.15231819.1556348126465.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190426151022.48666-1-bogorodskiy@gmail.com>
References: <20190426151022.48666-1-bogorodskiy@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.58, 10.4.195.3]
Thread-Topic: Unify openssl checks
Thread-Index: /PEDwoKz8oGhdWoRjF46Xn+osFdnMA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Sat, 27 Apr 2019 06:55:29 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] Unify openssl checks
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

PiAKPiBDdXJyZW50bHksIHNwaWNlLWd0ayB1c2VzIFBLR19DSEVDS19NT0RVTEVTKFNTTCwgb3Bl
bnNzbCkgdG8gZGV0ZWN0Cj4gb3BlbnNzbCBDRkxBR1MgYW5kIExJQlMuIEFuZCBzcGljZS1jb21t
b24gZGVmaW5lcyBhbmQgdXNlcwo+IFNQSUNFX0NIRUNLX09QRU5TU0wgbWFjcm8gd2hpY2ggY2Fs
bHMKPiBQS0dfQ0hFQ0tfTU9EVUxFUyhPUEVOU1NMLCBvcGVuc3NsKS4KPiAKPiBUaGlzIG1lYW5z
IHRoYXQgaW4gb3JkZXIgdG8gb3ZlcnJpZGUgb3BlbnNzbCBDRkxBR1Mgb3IgTElCUyBhIHVzZXIg
d2lsbAo+IGhhdmUgdG8gc2V0IGJvdGggT1BFTlNTTF8oQ0ZMQUdTfExJQlMpIGFuZCBTU0xfKENG
TEFHU3xMSUJTKS4KPiAKPiBUbyBtYWtlIHRoaXMgbW9yZSBjb25zaXN0ZW50LCBtYWtlIHNwaWNl
LWd0ayB1c2UgdGhlCj4gU1BJQ0VfQ0hFQ0tfT1BFTlNTTCBtYWNybyBmcm9tIHNwaWNlLWNvbW1v
bi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSb21hbiBCb2dvcm9kc2tpeSA8Ym9nb3JvZHNraXlAZ21h
aWwuY29tPgo+IC0tLQo+ICBjb25maWd1cmUuYWMgICAgfCA0ICsrLS0KPiAgc3JjL01ha2VmaWxl
LmFtIHwgNCArKy0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1cmUuYWMKPiBp
bmRleCBkMjM0ODIyLi4wNTU4MThmIDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3VyZS5hYwo+ICsrKyBi
L2NvbmZpZ3VyZS5hYwo+IEBAIC0xMTQsMTEgKzExNCwxMSBAQCBQS0dfQ0hFQ0tfTU9EVUxFUyhQ
SVhNQU4sIHBpeG1hbi0xID49IDAuMTcuNykKPiAgCj4gIFNQSUNFX0dMSUJfUkVRVUlSRVM9IiR7
U1BJQ0VfR0xJQl9SRVFVSVJFU30gcGl4bWFuLTEgPj0gMC4xNy43Igo+ICAKPiAtUEtHX0NIRUNL
X01PRFVMRVMoU1NMLCBvcGVuc3NsKQo+ICtTUElDRV9DSEVDS19PUEVOU1NMCj4gIAo+ICBQS0df
Q0hFQ0tfRVhJU1RTKG9wZW5zc2wsCj4gICAgW1NQSUNFX0dMSUJfUkVRVUlSRVM9IiR7U1BJQ0Vf
R0xJQl9SRVFVSVJFU30gb3BlbnNzbCJdLAo+IC0gIFtTUElDRV9HTElCX0xJQlM9IiR7U1BJQ0Vf
R0xJQl9MSUJTfSAke1NTTF9MSUJTfSJdKQo+ICsgIFtTUElDRV9HTElCX0xJQlM9IiR7U1BJQ0Vf
R0xJQl9MSUJTfSAke09QRU5TU0xfTElCU30iXSkKPiAgCj4gIFNQSUNFX0NIRUNLX1JFQ09SREVS
Cj4gIFNQSUNFX0NIRUNLX1NBU0wKPiBkaWZmIC0tZ2l0IGEvc3JjL01ha2VmaWxlLmFtIGIvc3Jj
L01ha2VmaWxlLmFtCj4gaW5kZXggY2RjNGQyOC4uN2I5ODE4MCAxMDA2NDQKPiAtLS0gYS9zcmMv
TWFrZWZpbGUuYW0KPiArKysgYi9zcmMvTWFrZWZpbGUuYW0KPiBAQCAtODAsNyArODAsNyBAQCBT
UElDRV9DT01NT05fQ1BQRkxBR1MgPQkJCQkJCVwKPiAgCSQoR0lPX0NGTEFHUykJCQkJCQlcCj4g
IAkkKEdPQkpFQ1QyX0NGTEFHUykJCQkJCVwKPiAgCSQoSlNPTl9DRkxBR1MpCQkJCQkJXAo+IC0J
JChTU0xfQ0ZMQUdTKQkJCQkJCVwKPiArCSQoT1BFTlNTTF9DRkxBR1MpCQkJCQlcCj4gIAkkKFNB
U0xfQ0ZMQUdTKQkJCQkJCVwKPiAgCSQoR1NUQVVESU9fQ0ZMQUdTKQkJCQkJXAo+ICAJJChHU1RW
SURFT19DRkxBR1MpCQkJCQlcCj4gQEAgLTE5Miw3ICsxOTIsNyBAQCBsaWJzcGljZV9jbGllbnRf
Z2xpYl9pbXBsX2xhX0xJQkFERCA9CQkJCQlcCj4gIAkkKFpfTElCUykJCQkJCQkJXAo+ICAJJChM
WjRfTElCUykJCQkJCQkJXAo+ICAJJChQSVhNQU5fTElCUykJCQkJCQkJXAo+IC0JJChTU0xfTElC
UykJCQkJCQkJXAo+ICsJJChPUEVOU1NMX0xJQlMpCQkJCQkJCVwKPiAgCSQoUFVMU0VfTElCUykJ
CQkJCQkJXAo+ICAJJChHU1RBVURJT19MSUJTKQkJCQkJCVwKPiAgCSQoR1NUVklERU9fTElCUykJ
CQkJCQlcCgpJbiBjb25maWd1cmUuYWMgdGhlcmUncyBhbiB1c2FnZSBvZiBTU0xfQ0ZMQUdTOgoK
U1BJQ0VfR0xJQl9DRkxBR1M9IiRQSVhNQU5fQ0ZMQUdTICRQVUxTRV9DRkxBR1MgJEdTVEFVRElP
X0NGTEFHUyAkR1NUVklERU9fQ0ZMQUdTICRHTElCMl9DRkxBR1MgJEdJT19DRkxBR1MgJEdPQkpF
Q1QyX0NGTEFHUyAkU1NMX0NGTEFHUyAkU0FTTF9DRkxBR1MiCgpzaG91bGQgYmUgcmVwbGFjZWQK
CkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
