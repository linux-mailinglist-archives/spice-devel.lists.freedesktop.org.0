Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D01E8B32E
	for <lists+spice-devel@lfdr.de>; Sat, 27 Apr 2019 12:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1AF58925D;
	Sat, 27 Apr 2019 10:35:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D06A8925D
 for <spice-devel@lists.freedesktop.org>; Sat, 27 Apr 2019 10:35:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8EFAE314E260;
 Sat, 27 Apr 2019 10:35:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 842A327BBF;
 Sat, 27 Apr 2019 10:35:32 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B0454A460;
 Sat, 27 Apr 2019 10:35:32 +0000 (UTC)
Date: Sat, 27 Apr 2019 06:35:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Roman Bogorodskiy <bogorodskiy@gmail.com>
Message-ID: <1431872367.15234224.1556361330820.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190427100701.23957-1-bogorodskiy@gmail.com>
References: <20190427100701.23957-1-bogorodskiy@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.83, 10.4.195.8]
Thread-Topic: Unify openssl checks
Thread-Index: PvhQxvb59ubQUwpn85P1oIaB9Gf0yg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Sat, 27 Apr 2019 10:35:32 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v2] Unify openssl checks
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

PiBDdXJyZW50bHksIHNwaWNlLWd0ayB1c2VzIFBLR19DSEVDS19NT0RVTEVTKFNTTCwgb3BlbnNz
bCkgdG8gZGV0ZWN0Cj4gb3BlbnNzbCBDRkxBR1MgYW5kIExJQlMuIEFuZCBzcGljZS1jb21tb24g
ZGVmaW5lcyBhbmQgdXNlcwo+IFNQSUNFX0NIRUNLX09QRU5TU0wgbWFjcm8gd2hpY2ggY2FsbHMK
PiBQS0dfQ0hFQ0tfTU9EVUxFUyhPUEVOU1NMLCBvcGVuc3NsKS4KPiAKPiBUaGlzIG1lYW5zIHRo
YXQgaW4gb3JkZXIgdG8gb3ZlcnJpZGUgb3BlbnNzbCBDRkxBR1Mgb3IgTElCUyBhIHVzZXIgd2ls
bAo+IGhhdmUgdG8gc2V0IGJvdGggT1BFTlNTTF8oQ0ZMQUdTfExJQlMpIGFuZCBTU0xfKENGTEFH
U3xMSUJTKS4KPiAKPiBUbyBtYWtlIHRoaXMgbW9yZSBjb25zaXN0ZW50LCBtYWtlIHNwaWNlLWd0
ayB1c2UgdGhlCj4gU1BJQ0VfQ0hFQ0tfT1BFTlNTTCBtYWNybyBmcm9tIHNwaWNlLWNvbW1vbi4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBSb21hbiBCb2dvcm9kc2tpeSA8Ym9nb3JvZHNraXlAZ21haWwu
Y29tPgoKQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKPiAt
LS0KPiAgY29uZmlndXJlLmFjICAgIHwgNiArKystLS0KPiAgc3JjL01ha2VmaWxlLmFtIHwgNCAr
Ky0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1cmUuYWMKPiBpbmRleCBkMjM0
ODIyLi4wNjY2ZTJhIDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3VyZS5hYwo+ICsrKyBiL2NvbmZpZ3Vy
ZS5hYwo+IEBAIC0xMTQsMTEgKzExNCwxMSBAQCBQS0dfQ0hFQ0tfTU9EVUxFUyhQSVhNQU4sIHBp
eG1hbi0xID49IDAuMTcuNykKPiAgCj4gIFNQSUNFX0dMSUJfUkVRVUlSRVM9IiR7U1BJQ0VfR0xJ
Ql9SRVFVSVJFU30gcGl4bWFuLTEgPj0gMC4xNy43Igo+ICAKPiAtUEtHX0NIRUNLX01PRFVMRVMo
U1NMLCBvcGVuc3NsKQo+ICtTUElDRV9DSEVDS19PUEVOU1NMCj4gIAo+ICBQS0dfQ0hFQ0tfRVhJ
U1RTKG9wZW5zc2wsCj4gICAgW1NQSUNFX0dMSUJfUkVRVUlSRVM9IiR7U1BJQ0VfR0xJQl9SRVFV
SVJFU30gb3BlbnNzbCJdLAo+IC0gIFtTUElDRV9HTElCX0xJQlM9IiR7U1BJQ0VfR0xJQl9MSUJT
fSAke1NTTF9MSUJTfSJdKQo+ICsgIFtTUElDRV9HTElCX0xJQlM9IiR7U1BJQ0VfR0xJQl9MSUJT
fSAke09QRU5TU0xfTElCU30iXSkKPiAgCj4gIFNQSUNFX0NIRUNLX1JFQ09SREVSCj4gIFNQSUNF
X0NIRUNLX1NBU0wKPiBAQCAtNDg5LDcgKzQ4OSw3IEBAIFNQSUNFX0NGTEFHUz0iJFNQSUNFX0NG
TEFHUyAkV0FSTl9DRkxBR1MiCj4gIAo+ICBBQ19TVUJTVChTUElDRV9DRkxBR1MpCj4gIAo+IC1T
UElDRV9HTElCX0NGTEFHUz0iJFBJWE1BTl9DRkxBR1MgJFBVTFNFX0NGTEFHUyAkR1NUQVVESU9f
Q0ZMQUdTCj4gJEdTVFZJREVPX0NGTEFHUyAkR0xJQjJfQ0ZMQUdTICRHSU9fQ0ZMQUdTICRHT0JK
RUNUMl9DRkxBR1MgJFNTTF9DRkxBR1MKPiAkU0FTTF9DRkxBR1MiCj4gK1NQSUNFX0dMSUJfQ0ZM
QUdTPSIkUElYTUFOX0NGTEFHUyAkUFVMU0VfQ0ZMQUdTICRHU1RBVURJT19DRkxBR1MKPiAkR1NU
VklERU9fQ0ZMQUdTICRHTElCMl9DRkxBR1MgJEdJT19DRkxBR1MgJEdPQkpFQ1QyX0NGTEFHUyAk
T1BFTlNTTF9DRkxBR1MKPiAkU0FTTF9DRkxBR1MiCj4gIFNQSUNFX0dUS19DRkxBR1M9IiRTUElD
RV9HTElCX0NGTEFHUyAkR1RLX0NGTEFHUyAiCj4gIAo+ICBBQ19TVUJTVChTUElDRV9HTElCX0NG
TEFHUykKPiBkaWZmIC0tZ2l0IGEvc3JjL01ha2VmaWxlLmFtIGIvc3JjL01ha2VmaWxlLmFtCj4g
aW5kZXggY2RjNGQyOC4uN2I5ODE4MCAxMDA2NDQKPiAtLS0gYS9zcmMvTWFrZWZpbGUuYW0KPiAr
KysgYi9zcmMvTWFrZWZpbGUuYW0KPiBAQCAtODAsNyArODAsNyBAQCBTUElDRV9DT01NT05fQ1BQ
RkxBR1MgPQkJCQkJCVwKPiAgCSQoR0lPX0NGTEFHUykJCQkJCQlcCj4gIAkkKEdPQkpFQ1QyX0NG
TEFHUykJCQkJCVwKPiAgCSQoSlNPTl9DRkxBR1MpCQkJCQkJXAo+IC0JJChTU0xfQ0ZMQUdTKQkJ
CQkJCVwKPiArCSQoT1BFTlNTTF9DRkxBR1MpCQkJCQlcCj4gIAkkKFNBU0xfQ0ZMQUdTKQkJCQkJ
CVwKPiAgCSQoR1NUQVVESU9fQ0ZMQUdTKQkJCQkJXAo+ICAJJChHU1RWSURFT19DRkxBR1MpCQkJ
CQlcCj4gQEAgLTE5Miw3ICsxOTIsNyBAQCBsaWJzcGljZV9jbGllbnRfZ2xpYl9pbXBsX2xhX0xJ
QkFERCA9CQkJCQlcCj4gIAkkKFpfTElCUykJCQkJCQkJXAo+ICAJJChMWjRfTElCUykJCQkJCQkJ
XAo+ICAJJChQSVhNQU5fTElCUykJCQkJCQkJXAo+IC0JJChTU0xfTElCUykJCQkJCQkJXAo+ICsJ
JChPUEVOU1NMX0xJQlMpCQkJCQkJCVwKPiAgCSQoUFVMU0VfTElCUykJCQkJCQkJXAo+ICAJJChH
U1RBVURJT19MSUJTKQkJCQkJCVwKPiAgCSQoR1NUVklERU9fTElCUykJCQkJCQlcCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
