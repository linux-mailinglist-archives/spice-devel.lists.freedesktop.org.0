Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DC9AF74F
	for <lists+spice-devel@lfdr.de>; Wed, 11 Sep 2019 09:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F26E96EA49;
	Wed, 11 Sep 2019 07:55:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C65A6EA49
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:55:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E5CEC8830F
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:55:52 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 12D3060BF7;
 Wed, 11 Sep 2019 07:55:51 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 11 Sep 2019 08:55:46 +0100
Message-Id: <20190911075547.5210-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Wed, 11 Sep 2019 07:55:52 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/2] reds: Inline reds_mig_switch
 function
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

Tm8gbXVjaCByZWFzb24gZm9yIG5vdCBpbmxpbmluZyBpdCwgaXQncyBxdWl0ZSBzbWFsbCBhbmQg
ZG8Kbm90IHJlZHVjZSByZWFkYWJpbGl0eS4KTm90ZSB0aGF0IHNwaWNlX3NlcnZlcl9taWdyYXRl
X3N3aXRjaCBpcyBkZXByZWNhdGVkIGFuZCBub3QKdXNlZCBieSBRZW11IHNpbmNlIGNvbW1pdCA2
N2JlNjcyNmI2NDU5NDcyMTAzZWU4N2NlYWYyZThlOTdjMTU0OTY1CihjZnIgInNwaWNlOiByYWlz
ZSByZXF1aXJlbWVudCB0byAwLjEyIiBTZXB0ZW1iZXIgMjAxMikuCgpTaWduZWQtb2ZmLWJ5OiBG
cmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvcmVkcy5jIHwg
MTcgKysrKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEx
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9yZWRzLmMgYi9zZXJ2ZXIvcmVkcy5j
CmluZGV4IGMyOTQxMzdiZS4uY2Q4ZTc5NmFhIDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkcy5jCisr
KyBiL3NlcnZlci9yZWRzLmMKQEAgLTMxNDgsMTYgKzMxNDgsNiBAQCBzdGF0aWMgdm9pZCByZWRz
X21pZ19maW5pc2hlZChSZWRzU3RhdGUgKnJlZHMsIGludCBjb21wbGV0ZWQpCiAgICAgcmVkc19t
aWdfcmVsZWFzZShyZWRzLT5jb25maWcpOwogfQogCi1zdGF0aWMgdm9pZCByZWRzX21pZ19zd2l0
Y2goUmVkc1N0YXRlICpyZWRzKQotewotICAgIGlmICghcmVkcy0+Y29uZmlnLT5taWdfc3BpY2Up
IHsKLSAgICAgICAgc3BpY2Vfd2FybmluZygicmVkc19taWdfc3dpdGNoIGNhbGxlZCB3aXRob3V0
IG1pZ3JhdGVfaW5mbyBzZXQiKTsKLSAgICAgICAgcmV0dXJuOwotICAgIH0KLSAgICBtYWluX2No
YW5uZWxfbWlncmF0ZV9zd2l0Y2gocmVkcy0+bWFpbl9jaGFubmVsLCByZWRzLT5jb25maWctPm1p
Z19zcGljZSk7Ci0gICAgcmVkc19taWdfcmVsZWFzZShyZWRzLT5jb25maWcpOwotfQotCiBzdGF0
aWMgdm9pZCBtaWdyYXRlX3RpbWVvdXQodm9pZCAqb3BhcXVlKQogewogICAgIFJlZHNTdGF0ZSAq
cmVkcyA9IG9wYXF1ZTsKQEAgLTQ0MjcsNyArNDQxNywxMiBAQCBTUElDRV9HTlVDX1ZJU0lCTEUg
aW50IHNwaWNlX3NlcnZlcl9taWdyYXRlX3N3aXRjaChTcGljZVNlcnZlciAqcmVkcykKICAgICAg
ICByZXR1cm4gMDsKICAgICB9CiAgICAgcmVkcy0+ZXhwZWN0X21pZ3JhdGUgPSBGQUxTRTsKLSAg
ICByZWRzX21pZ19zd2l0Y2gocmVkcyk7CisgICAgaWYgKCFyZWRzLT5jb25maWctPm1pZ19zcGlj
ZSkgeworICAgICAgICBzcGljZV93YXJuaW5nKCJzcGljZV9zZXJ2ZXJfbWlncmF0ZV9zd2l0Y2gg
Y2FsbGVkIHdpdGhvdXQgbWlncmF0ZV9pbmZvIHNldCIpOworICAgICAgICByZXR1cm4gMDsKKyAg
ICB9CisgICAgbWFpbl9jaGFubmVsX21pZ3JhdGVfc3dpdGNoKHJlZHMtPm1haW5fY2hhbm5lbCwg
cmVkcy0+Y29uZmlnLT5taWdfc3BpY2UpOworICAgIHJlZHNfbWlnX3JlbGVhc2UocmVkcy0+Y29u
ZmlnKTsKICAgICByZXR1cm4gMDsKIH0KIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
