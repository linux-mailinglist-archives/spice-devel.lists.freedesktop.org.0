Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5B328166
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 17:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5816789FE6;
	Thu, 23 May 2019 15:38:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C536D89FE6
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 15:38:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6FA086EB87
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 15:38:28 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5735F5B681;
 Thu, 23 May 2019 15:38:27 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 16:38:14 +0100
Message-Id: <20190523153814.30167-4-fziglio@redhat.com>
In-Reply-To: <20190523153814.30167-1-fziglio@redhat.com>
References: <20190523153814.30167-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 23 May 2019 15:38:28 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] red-channel-client: Reduce
 indentation of some code
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

SnVzdCBhIHN0eWxlIGNoYW5nZSwgcmV0dXJuIGVhcmxpZXIgdG8gYXZvaWQgc29tZSBpbmRlbnRh
dGlvbi4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29t
PgotLS0KIHNlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYyB8IDM3ICsrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAy
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMg
Yi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKaW5kZXggNDk3OGYzNTY3Li4zZmQ1MWQ3OGIg
MTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYworKysgYi9zZXJ2ZXIvcmVk
LWNoYW5uZWwtY2xpZW50LmMKQEAgLTY5MCwyNSArNjkwLDIxIEBAIHN0YXRpYyB2b2lkIHJlZF9j
aGFubmVsX2NsaWVudF9waW5nX3RpbWVyKHZvaWQgKm9wYXF1ZSkKICAgICByZWRfY2hhbm5lbF9j
bGllbnRfY2FuY2VsX3BpbmdfdGltZXIocmNjKTsKIAogI2lmZGVmIEhBVkVfTElOVVhfU09DS0lP
U19IIC8qIFNJT0NPVVRRIGlzIGEgTGludXggb25seSBpb2N0bCBvbiBzb2NrZXRzLiAqLwotICAg
IHsKLSAgICAgICAgaW50IHNvX3Vuc2VudF9zaXplID0gMDsKKyAgICBpbnQgc29fdW5zZW50X3Np
emUgPSAwOwogCi0gICAgICAgIC8qIHJldHJpZXZpbmcgdGhlIG9jY3VwaWVkIHNpemUgb2YgdGhl
IHNvY2tldCdzIHRjcCBzbmQgYnVmZmVyICh1bmFja2VkICsgdW5zZW50KSAqLwotICAgICAgICBp
ZiAoaW9jdGwocmNjLT5wcml2LT5zdHJlYW0tPnNvY2tldCwgU0lPQ09VVFEsICZzb191bnNlbnRf
c2l6ZSkgPT0gLTEpIHsKLSAgICAgICAgICAgIHJlZF9jaGFubmVsX3dhcm5pbmcocmVkX2NoYW5u
ZWxfY2xpZW50X2dldF9jaGFubmVsKHJjYyksCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICJpb2N0bChTSU9DT1VUUSkgZmFpbGVkLCAlcyIsIHN0cmVycm9yKGVycm5vKSk7Ci0gICAg
ICAgIH0KLSAgICAgICAgaWYgKHNvX3Vuc2VudF9zaXplID4gMCkgewotICAgICAgICAgICAgLyog
dGNwIHNuZCBidWZmZXIgaXMgc3RpbGwgb2NjdXBpZWQuIHJlc2NoZWR1bGluZyBwaW5nICovCi0g
ICAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfc3RhcnRfcGluZ190aW1lcihyY2MsIFBJTkdf
VEVTVF9JRExFX05FVF9USU1FT1VUX01TKTsKLSAgICAgICAgfSBlbHNlIHsKLSAgICAgICAgICAg
IHJlZF9jaGFubmVsX2NsaWVudF9wdXNoX3BpbmcocmNjKTsKLSAgICAgICAgfQorICAgIC8qIHJl
dHJpZXZpbmcgdGhlIG9jY3VwaWVkIHNpemUgb2YgdGhlIHNvY2tldCdzIHRjcCBzbmQgYnVmZmVy
ICh1bmFja2VkICsgdW5zZW50KSAqLworICAgIGlmIChpb2N0bChyY2MtPnByaXYtPnN0cmVhbS0+
c29ja2V0LCBTSU9DT1VUUSwgJnNvX3Vuc2VudF9zaXplKSA9PSAtMSkgeworICAgICAgICByZWRf
Y2hhbm5lbF93YXJuaW5nKHJlZF9jaGFubmVsX2NsaWVudF9nZXRfY2hhbm5lbChyY2MpLAorICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICJpb2N0bChTSU9DT1VUUSkgZmFpbGVkLCAlcyIsIHN0
cmVycm9yKGVycm5vKSk7CiAgICAgfQotI2Vsc2UgLyogaWZkZWYgSEFWRV9MSU5VWF9TT0NLSU9T
X0ggKi8KKyAgICBpZiAoc29fdW5zZW50X3NpemUgPiAwKSB7CisgICAgICAgIC8qIHRjcCBzbmQg
YnVmZmVyIGlzIHN0aWxsIG9jY3VwaWVkLiByZXNjaGVkdWxpbmcgcGluZyAqLworICAgICAgICBy
ZWRfY2hhbm5lbF9jbGllbnRfc3RhcnRfcGluZ190aW1lcihyY2MsIFBJTkdfVEVTVF9JRExFX05F
VF9USU1FT1VUX01TKTsKKyAgICAgICAgcmV0dXJuOworICAgIH0KKyNlbmRpZiAvKiBpZmRlZiBI
QVZFX0xJTlVYX1NPQ0tJT1NfSCAqLwogICAgIC8qIE1vcmUgcG9ydGFibGUgYWx0ZXJuYXRpdmUg
Y29kZSBwYXRoIChsZXNzIGFjY3VyYXRlIGJ1dCBhdm9pZHMgYm9ndXMgaW9jdGxzKSovCiAgICAg
cmVkX2NoYW5uZWxfY2xpZW50X3B1c2hfcGluZyhyY2MpOwotI2VuZGlmIC8qIGlmZGVmIEhBVkVf
TElOVVhfU09DS0lPU19IICovCiB9CiAKIHN0YXRpYyBpbmxpbmUgaW50IHJlZF9jaGFubmVsX2Ns
aWVudF93YWl0aW5nX2Zvcl9hY2soUmVkQ2hhbm5lbENsaWVudCAqcmNjKQpAQCAtMTE0MCwxNiAr
MTEzNiwxMyBAQCBzdGF0aWMgaW50IHJlZF9wZWVyX3JlY2VpdmUoUmVkU3RyZWFtICpzdHJlYW0s
IHVpbnQ4X3QgKmJ1ZiwgdWludDMyX3Qgc2l6ZSkKICAgICAgICAgICAgICAgICBicmVhazsKICAg
ICAgICAgICAgIH0gZWxzZSBpZiAoZXJybm8gPT0gRUlOVFIpIHsKICAgICAgICAgICAgICAgICBj
b250aW51ZTsKLSAgICAgICAgICAgIH0gZWxzZSBpZiAoZXJybm8gPT0gRVBJUEUpIHsKLSAgICAg
ICAgICAgICAgICByZXR1cm4gLTE7Ci0gICAgICAgICAgICB9IGVsc2UgeworICAgICAgICAgICAg
fSBlbHNlIGlmIChlcnJubyAhPSBFUElQRSkgewogICAgICAgICAgICAgICAgIGdfd2FybmluZygi
JXMiLCBzdHJlcnJvcihlcnJubykpOwotICAgICAgICAgICAgICAgIHJldHVybiAtMTsKICAgICAg
ICAgICAgIH0KLSAgICAgICAgfSBlbHNlIHsKLSAgICAgICAgICAgIHNpemUgLT0gbm93OwotICAg
ICAgICAgICAgcG9zICs9IG5vdzsKKyAgICAgICAgICAgIHJldHVybiAtMTsKICAgICAgICAgfQor
ICAgICAgICBzaXplIC09IG5vdzsKKyAgICAgICAgcG9zICs9IG5vdzsKICAgICB9CiAgICAgcmV0
dXJuIHBvcyAtIGJ1ZjsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
