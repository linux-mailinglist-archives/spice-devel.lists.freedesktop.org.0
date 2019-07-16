Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FAB6A6D3
	for <lists+spice-devel@lfdr.de>; Tue, 16 Jul 2019 12:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D5289F85;
	Tue, 16 Jul 2019 10:55:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D11789F85
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 10:55:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D297181F1B
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 10:55:17 +0000 (UTC)
Received: from dhcp-4-93.tlv.redhat.com (dhcp-4-93.tlv.redhat.com [10.35.4.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3D8285D71D
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 10:55:17 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 16 Jul 2019 13:55:16 +0300
Message-Id: <20190716105516.14803-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 16 Jul 2019 10:55:17 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent] gst-plugin: receive
 encoder properties as command parameters
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

VGhpcyBhbGxvd3MgdG8gc2V0IHBsdWdpbiBrZXk9dmFsdWUgcHJvcGVydGllcyBvbiBydW4gdGlt
ZS4KVG8gYWRkIGVuY29kZXIgcGx1Z2luIHByb3BlcnR5IHVzZSB0aGUgZm9sbG93aW5nIHN5bnRh
eDoKLWdzdC5wcm9wPSJrZXk9dmFsdWUiCk1ha2Ugc3VyZSBzeW50YXggaXMgYWNjdXJhdGUgYW5k
IHRoYXQgdGhlIHByb3BlcnR5IGlzIHN1cHBvcnRlZCBieQp0aGUgY2hvc2VuIHBsdWdpbiwgd3Jv
bmcvaW52YWxpZCBwcm9wZXJ0aWVzIHdpbGwgYmUgaWdub3JlZCBzaWxlbnRseS4KU3BlY2lmaWMg
ZW5jb2RlciBhdmFpbGFibGUgcHJvcGVydGllcyBjYW4gYmUgdmlld2VkIGJ5Ogpnc3QtaW5zcGVj
dC0xLjAgPFBMVUdJTi1OQU1FPgotLS0KKiBUaGlzIHBhdGNoIHVzZWZ1bCBmb3IgZW5jb2RlcnMg
dHVuaW5nIGFuZCB0ZXN0aW5nIChsYXRlciB3ZSBjYW4gaW50cm9kdWNlCiAgZml4ZWQgZW5jb2Rl
cnMgc2V0dXBzKSwgaGVuY2Ugbm90IGNoZWNraW5nIGZvciB2YWxpZGl0eSBvZiBpbnB1dC4KKiBJ
IGRyb3BwZWQgc3N0cmVhbSBpbiBwcmV2aW91cyBwYXRjaCBidXQgaSBmb3VuZCBpdCB1c2VmdWwg
aGVyZSBhbmQgYWRkZWQgaXQKICBhZ2FpbiwgYWx0ZXJuYXRpdmUgc3VnZ2VzdGlvbnMgYXJlIHdl
bGNvbWUKCi0tLQogc3JjL2dzdC1wbHVnaW4uY3BwIHwgMjEgKysrKysrKysrKysrKysrKystLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9zcmMvZ3N0LXBsdWdpbi5jcHAgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKaW5kZXggNGU4
MDJmMS4uMGQ4NzczZCAxMDA2NDQKLS0tIGEvc3JjL2dzdC1wbHVnaW4uY3BwCisrKyBiL3NyYy9n
c3QtcGx1Z2luLmNwcApAQCAtNiw2ICs2LDcgQEAKIAogI2luY2x1ZGUgPGNvbmZpZy5oPgogI2lu
Y2x1ZGUgPGNzdHJpbmc+CisjaW5jbHVkZSA8c3N0cmVhbT4KICNpbmNsdWRlIDxleGNlcHRpb24+
CiAjaW5jbHVkZSA8c3RkZXhjZXB0PgogI2luY2x1ZGUgPG1lbW9yeT4KQEAgLTM1LDYgKzM2LDcg
QEAgc3RydWN0IEdzdHJlYW1lckVuY29kZXJTZXR0aW5ncwogICAgIGludCBmcHMgPSAyNTsKICAg
ICBTcGljZVZpZGVvQ29kZWNUeXBlIGNvZGVjID0gU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9IMjY0
OwogICAgIHN0ZDo6c3RyaW5nIGVuY29kZXI7CisgICAgc3RkOjp2ZWN0b3I8c3RkOjpzdHJpbmc+
IHByb3Bfc3RyaW5nczsKIH07CiAKIHRlbXBsYXRlIDx0eXBlbmFtZSBUPgpAQCAtMTgwLDEwICsx
ODIsMTUgQEAgR3N0RWxlbWVudCAqR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpnZXRfZW5jb2Rlcl9w
bHVnaW4oY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHQKIAogICAgIGVuY29kZXIgPSBmYWN0b3J5
ID8gZ3N0X2VsZW1lbnRfZmFjdG9yeV9jcmVhdGUoZmFjdG9yeSwgImVuY29kZXIiKSA6IG51bGxw
dHI7CiAgICAgaWYgKGVuY29kZXIpIHsgLy8gSW52YWxpZCBwcm9wZXJ0aWVzIHdpbGwgYmUgaWdu
b3JlZCBzaWxlbnRseQotICAgICAgICAvKiB4MjY0ZW5jIHByb3BlcnRpZXMgKi8KLSAgICAgICAg
Z3N0X3V0aWxfc2V0X29iamVjdF9hcmcoR19PQkpFQ1QoZW5jb2RlciksICJ0dW5lIiwgInplcm9s
YXRlbmN5Iik7Ly8gc3RpbGxpbWFnZSwgZmFzdGRlY29kZSwgemVyb2xhdGVuY3kKLSAgICAgICAg
Z3N0X3V0aWxfc2V0X29iamVjdF9hcmcoR19PQkpFQ1QoZW5jb2RlciksICJiZnJhbWVzIiwgIjAi
KTsKLSAgICAgICAgZ3N0X3V0aWxfc2V0X29iamVjdF9hcmcoR19PQkpFQ1QoZW5jb2RlciksICJz
cGVlZC1wcmVzZXQiLCAiMSIpOy8vIDEtdWx0cmFmYXN0LCA2LW1lZCwgOS12ZXJ5c2xvdworICAg
ICAgICBjb25zdCBjaGFyICprZXk7CisgICAgICAgIGNvbnN0IGNoYXIgKnZhbDsKKyAgICAgICAg
Zm9yIChpbnQgaSA9IDE7IGkgPCBzZXR0aW5ncy5wcm9wX3N0cmluZ3Muc2l6ZSgpOyBpICs9IDIp
IHsKKyAgICAgICAgICAgIGtleSA9IHNldHRpbmdzLnByb3Bfc3RyaW5nc1tpLTFdLmNfc3RyKCk7
CisgICAgICAgICAgICB2YWwgPSBzZXR0aW5ncy5wcm9wX3N0cmluZ3NbaV0uY19zdHIoKTsKKyAg
ICAgICAgICAgIGdzdF91dGlsX3NldF9vYmplY3RfYXJnKEdfT0JKRUNUKGVuY29kZXIpLCBrZXks
IHZhbCk7CisgICAgICAgICAgICBnc3Rfc3lzbG9nKExPR19OT1RJQ0UsICJUcnlpbmcgdG8gc2V0
IGVuY29kZXIgcHJvcGVydHk6ICclcyA9ICVzJyIsIGtleSwgdmFsKTsKKyAgICAgICAgfQorCiAg
ICAgfQogICAgIGdzdF9wbHVnaW5fZmVhdHVyZV9saXN0X2ZyZWUoZmlsdGVyZWQpOwogICAgIGdz
dF9wbHVnaW5fZmVhdHVyZV9saXN0X2ZyZWUoZW5jb2RlcnMpOwpAQCAtNDQ5LDYgKzQ1NiwxMiBA
QCB2b2lkIEdzdHJlYW1lclBsdWdpbjo6UGFyc2VPcHRpb25zKGNvbnN0IENvbmZpZ3VyZU9wdGlv
biAqb3B0aW9ucykKICAgICAgICAgICAgIH0KICAgICAgICAgfSBlbHNlIGlmIChuYW1lID09ICJn
c3QuZW5jb2RlciIpIHsKICAgICAgICAgICAgIHNldHRpbmdzLmVuY29kZXIgPSB2YWx1ZTsKKyAg
ICAgICAgfSBlbHNlIGlmIChuYW1lID09ICJnc3QucHJvcCIpIHsKKyAgICAgICAgICAgIHN0ZDo6
c3RyaW5nc3RyZWFtIHNzKHZhbHVlKTsKKyAgICAgICAgICAgIHN0ZDo6c3RyaW5nIGl0ZW07Cisg
ICAgICAgICAgICB3aGlsZSAoc3RkOjpnZXRsaW5lKHNzLCBpdGVtLCAnPScpKSB7CisgICAgICAg
ICAgICAgICBzZXR0aW5ncy5wcm9wX3N0cmluZ3MucHVzaF9iYWNrKGl0ZW0pOworICAgICAgICAg
ICAgfQogICAgICAgICB9CiAgICAgfQogfQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
