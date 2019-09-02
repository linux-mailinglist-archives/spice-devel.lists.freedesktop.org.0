Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD847A5B0E
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 18:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6061A89183;
	Mon,  2 Sep 2019 16:04:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313578916F
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D0ECA8CF1AE
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:51 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 581CA5D9C3
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:51 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 18:04:44 +0200
Message-Id: <20190902160449.19589-2-victortoso@redhat.com>
In-Reply-To: <20190902160449.19589-1-victortoso@redhat.com>
References: <20190902160449.19589-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Mon, 02 Sep 2019 16:04:51 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 1/6] session: initialize gstreamer once
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKR1N0cmVhbWVyIGlzIHJlcXVp
cmVkIHNpbmNlIHYwLjM2IHdpdGggODNhYjdjYSAiYnVpbGQtc3lzOiBkcm9wCmdzdHZpZGVvIG9w
dGlvbiwgbWFrZSBpdCByZXF1aXJlZCIgaW4gMjAxOS0wMS0xNSBieSBNYXJjLUFuZHLDqSBMdXJl
YXUKPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNvbT4KCkJvdGggY2hhbm5lbC1kaXNwbGF5LWdz
dC5jIGFuZCBzcGljZS1nc3RhdWRpby5jIGhhdmUgdG8gZG91YmxlIGNoZWNrCnRoYXQgR1N0cmVh
bWVyIHdhcyBpbml0aWFsaXplZCB3aXRoIGdzdF9pbml0X2NoZWNrKCkgYnV0IHRoaXMgY2FuIGJl
CmRvbmUgb25jZSBwZXIgU3BpY2VTZXNzaW9uIGFuZCBtYWtlIHRob3NlIGNvZGUgcGF0aCBhIGxp
dHRsZSBiaXQKbGlnaHRlciB3aXRoIHNpbXBsZXIgY2hlY2sgZ3N0X2lzX2luaXRpYWxpemVkKCkK
ClRoaXMgZmlyc3QgcGF0Y2ggZG9lcyBpbml0aWFsaXplIGEgU3BpY2VTZXNzaW9uIG9uIGl0J3Mg
aW5pdC4gQXMgdGhlCmN1cnJlbnQgY29kZSBwYXRoIGRvZXMgbm90IGNhbGwgZ3N0X2RlaW5pdCgp
LCB3ZSBhcmUgbm90IGRvaW5nIGl0IHNvCmhlcmUgYXMgd2VsbCBidXQgaXQgY2FuIGJlIGxhdGVy
IG9wdGltaXplZCB0byBiZSBzdXJlIHJlc291cmNlcyBhcmUKY2xlYW5lZCBjb3JyZWN0bHkgb24g
R1N0cmVhbWVyIHNpZGUuCgpTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0By
ZWRoYXQuY29tPgotLS0KIHNyYy9zcGljZS1zZXNzaW9uLmMgfCAyMiArKysrKysrKysrKysrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Ny
Yy9zcGljZS1zZXNzaW9uLmMgYi9zcmMvc3BpY2Utc2Vzc2lvbi5jCmluZGV4IDA0YmExMjQuLmRi
NDBhNTMgMTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS1zZXNzaW9uLmMKKysrIGIvc3JjL3NwaWNlLXNl
c3Npb24uYwpAQCAtMjEsNiArMjEsNyBAQAogI2luY2x1ZGUgPGdpby9nbmV0d29ya2luZy5oPgog
I2luY2x1ZGUgPGdpby9naW8uaD4KICNpbmNsdWRlIDxnbGliLmg+CisjaW5jbHVkZSA8Z3N0L2dz
dC5oPgogI2lmZGVmIEdfT1NfVU5JWAogI2luY2x1ZGUgPGdpby9ndW5peHNvY2tldGFkZHJlc3Mu
aD4KICNlbmRpZgpAQCAtMjM0LDYgKzIzNSw3IEBAIEdfU1RBVElDX0FTU0VSVChHX05fRUxFTUVO
VFMoX3NwaWNlX2ltYWdlX2NvbXByZXNzX3ZhbHVlcykgPT0gU1BJQ0VfSU1BR0VfQ09NUFJFCiAK
IHN0YXRpYyBjb25zdCBnY2hhciogc3BpY2Vfc2Vzc2lvbl9nZXRfc2hhcmVkX2RpcihTcGljZVNl
c3Npb24gKnNlc3Npb24pOwogc3RhdGljIHZvaWQgc3BpY2Vfc2Vzc2lvbl9zZXRfc2hhcmVkX2Rp
cihTcGljZVNlc3Npb24gKnNlc3Npb24sIGNvbnN0IGdjaGFyICpkaXIpOworc3RhdGljIHZvaWQg
c3BpY2Vfc2Vzc2lvbl9lbmFibGVfZ3N0cmVhbWVyKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbik7CiAK
IEdUeXBlCiBzcGljZV9pbWFnZV9jb21wcmVzc19nZXRfdHlwZSAodm9pZCkKQEAgLTI5NSw2ICsy
OTcsNyBAQCBzdGF0aWMgdm9pZCBzcGljZV9zZXNzaW9uX2luaXQoU3BpY2VTZXNzaW9uICpzZXNz
aW9uKQogICAgIHMtPmltYWdlcyA9IGNhY2hlX2ltYWdlX25ldygoR0Rlc3Ryb3lOb3RpZnkpcGl4
bWFuX2ltYWdlX3VucmVmKTsKICAgICBzLT5nbHpfd2luZG93ID0gZ2x6X2RlY29kZXJfd2luZG93
X25ldygpOwogICAgIHVwZGF0ZV9wcm94eShzZXNzaW9uLCBOVUxMKTsKKyAgICBzcGljZV9zZXNz
aW9uX2VuYWJsZV9nc3RyZWFtZXIoc2Vzc2lvbik7CiB9CiAKIHN0YXRpYyB2b2lkCkBAIC0yODY4
LDMgKzI4NzEsMjIgQEAgZ2Jvb2xlYW4gc3BpY2Vfc2Vzc2lvbl9zZXRfbWlncmF0aW9uX3Nlc3Np
b24oU3BpY2VTZXNzaW9uICpzZXNzaW9uLCBTcGljZVNlc3Npb24KIAogICAgIHJldHVybiBUUlVF
OwogfQorCitzdGF0aWMgdm9pZAorc3BpY2Vfc2Vzc2lvbl9lbmFibGVfZ3N0cmVhbWVyKFNwaWNl
U2Vzc2lvbiAqc2Vzc2lvbikKK3sKKyAgICBnX3JldHVybl9pZl9mYWlsKFNQSUNFX0lTX1NFU1NJ
T04oc2Vzc2lvbikpOworICAgIGlmIChnc3RfaXNfaW5pdGlhbGl6ZWQoKSkgeworICAgICAgICAv
KiBFaXRoZXIgY2FsbGVkIGJ5IHNwaWNlIGNsaWVudCBvciBpbiBwcmV2aW91cyBTcGljZVNlc3Np
b24gKi8KKyAgICAgICAgcmV0dXJuOworICAgIH0KKworICAgIC8qIFRPRE86IFByb3ZpZGUgYXJn
YyBhbmQgYXJndiB0byBHU3RyZWFtZXIgZm9yIGNvbW1hbmQgbGluZSBmaWx0ZXJpbmcgb24KKyAg
ICAgKiBzcGljZS1ndGsgbGV2ZWwsIG90aGVyd2lzZSBvbmx5IGFwcGxpY2F0aW9ucyB0aGF0IHJ1
biBnc3RfaW5pdCgpIGZpcnN0CisgICAgICogd291bGQgZmlsdGVyIGNvbW1hbmQgbGluZSBvcHRp
b25zICovCisgICAgR0Vycm9yICplcnIgPSBOVUxMOworICAgIGlmICghZ3N0X2luaXRfY2hlY2so
TlVMTCwgTlVMTCwgJmVycikpIHsKKyAgICAgICAgc3BpY2Vfd2FybmluZygiRGlzYWJsaW5nIEdT
dHJlYW1lciB2aWRlbyBzdXBwb3J0OiAlcyIsIGVyci0+bWVzc2FnZSk7CisgICAgICAgIGdfY2xl
YXJfZXJyb3IoJmVycik7CisgICAgfQorfQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
