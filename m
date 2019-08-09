Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B52B87CB7
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC24E6EE2F;
	Fri,  9 Aug 2019 14:28:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 417746EE2F
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E2A543090FC2
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:23 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2A3531001284;
 Fri,  9 Aug 2019 14:28:20 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:44 +0100
Message-Id: <20190809142651.2967-27-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 09 Aug 2019 14:28:23 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 26/33] fixup! usb-redir: add
 implementation of emulated CD device
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

Rml4IHN0eWxlIGluZGVudGF0aW9uCi0tLQogc3JjL3VzYi1kZXZpY2UtY2QuYyB8IDcxICsrKysr
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDM1IGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2It
ZGV2aWNlLWNkLmMgYi9zcmMvdXNiLWRldmljZS1jZC5jCmluZGV4IDNjNTcxODVmLi5iMDNkNjgz
OCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtY2QuYworKysgYi9zcmMvdXNiLWRldmljZS1j
ZC5jCkBAIC00NjEsMjcgKzQ2MSwyNiBAQCBzdGF0aWMgZ2Jvb2xlYW4gdXNiX2NkX2dldF9kZXNj
cmlwdG9yKFVzYkNkICpkLCB1aW50OF90IHR5cGUsIHVpbnQ4X3QgaW5kZXgsCiAgICAgdm9pZCAq
cCA9IE5VTEw7CiAgICAgdWludDE2X3QgbGVuID0gMDsKIAotICAgIHN3aXRjaCAodHlwZSkKLSAg
ICB7Ci0gICAgICAgIGNhc2UgTElCVVNCX0RUX0RFVklDRToKLSAgICAgICAgICAgIHAgPSAmZGVz
YzsKLSAgICAgICAgICAgIGxlbiA9IHNpemVvZihkZXNjKTsKLSAgICAgICAgICAgIGJyZWFrOwot
ICAgICAgICBjYXNlIExJQlVTQl9EVF9DT05GSUc6Ci0gICAgICAgICAgICBwID0gY2ZnOwotICAg
ICAgICAgICAgbGVuID0gc2l6ZW9mKGNmZyk7Ci0gICAgICAgICAgICBicmVhazsKLSAgICAgICAg
Y2FzZSBMSUJVU0JfRFRfU1RSSU5HOgotICAgICAgICAgICAgaWYgKGluZGV4ID09IDApIHsKLSAg
ICAgICAgICAgICAgICBwID0gczA7IGxlbiA9IHNpemVvZihzMCk7Ci0gICAgICAgICAgICB9IGVs
c2UgaWYgKGluZGV4ID09IDEpIHsKLSAgICAgICAgICAgICAgICBwID0gczE7IGxlbiA9IHNpemVv
ZihzMSk7Ci0gICAgICAgICAgICB9IGVsc2UgaWYgKGluZGV4ID09IDIpIHsKLSAgICAgICAgICAg
ICAgICBwID0gczI7IGxlbiA9IHNpemVvZihzMik7Ci0gICAgICAgICAgICB9IGVsc2UgaWYgKGlu
ZGV4ID09IDMpIHsKLSAgICAgICAgICAgICAgICBwID0gZC0+c2VyaWFsOyBsZW4gPSBzaXplb2Yo
ZC0+c2VyaWFsKTsKLSAgICAgICAgICAgIH0KLSAgICAgICAgICAgIGJyZWFrOworICAgIHN3aXRj
aCAodHlwZSkgeworICAgIGNhc2UgTElCVVNCX0RUX0RFVklDRToKKyAgICAgICAgcCA9ICZkZXNj
OworICAgICAgICBsZW4gPSBzaXplb2YoZGVzYyk7CisgICAgICAgIGJyZWFrOworICAgIGNhc2Ug
TElCVVNCX0RUX0NPTkZJRzoKKyAgICAgICAgcCA9IGNmZzsKKyAgICAgICAgbGVuID0gc2l6ZW9m
KGNmZyk7CisgICAgICAgIGJyZWFrOworICAgIGNhc2UgTElCVVNCX0RUX1NUUklORzoKKyAgICAg
ICAgaWYgKGluZGV4ID09IDApIHsKKyAgICAgICAgICAgIHAgPSBzMDsgbGVuID0gc2l6ZW9mKHMw
KTsKKyAgICAgICAgfSBlbHNlIGlmIChpbmRleCA9PSAxKSB7CisgICAgICAgICAgICBwID0gczE7
IGxlbiA9IHNpemVvZihzMSk7CisgICAgICAgIH0gZWxzZSBpZiAoaW5kZXggPT0gMikgeworICAg
ICAgICAgICAgcCA9IHMyOyBsZW4gPSBzaXplb2YoczIpOworICAgICAgICB9IGVsc2UgaWYgKGlu
ZGV4ID09IDMpIHsKKyAgICAgICAgICAgIHAgPSBkLT5zZXJpYWw7IGxlbiA9IHNpemVvZihkLT5z
ZXJpYWwpOworICAgICAgICB9CisgICAgICAgIGJyZWFrOwogICAgIH0KIAogICAgIGlmIChwKSB7
CkBAIC01MjUsMjEgKzUyNCwyMSBAQCBzdGF0aWMgdm9pZCB1c2JfY2RfY29udHJvbF9yZXF1ZXN0
KFVzYkNkICpkZXZpY2UsCiAKICAgICBpZiAocmVxdHlwZSA9PSAoTElCVVNCX1JFUVVFU1RfVFlQ
RV9DTEFTUyB8IExJQlVTQl9SRUNJUElFTlRfSU5URVJGQUNFKSkgewogICAgICAgICBzd2l0Y2gg
KGgtPnJlcXVlc3QpIHsKLSAgICAgICAgICAgIGNhc2UgMHhGRjoKLSAgICAgICAgICAgICAgICAv
LyBtYXNzLXN0b3JhZ2UgY2xhc3MgcmVxdWVzdCAncmVzZXQnCi0gICAgICAgICAgICAgICAgdXNi
X2NkX3Jlc2V0KGRldmljZSk7Ci0gICAgICAgICAgICAgICAgaC0+bGVuZ3RoID0gMDsKLSAgICAg
ICAgICAgICAgICBoLT5zdGF0dXMgPSB1c2JfcmVkaXJfc3VjY2VzczsKLSAgICAgICAgICAgICAg
ICBicmVhazsKLSAgICAgICAgICAgIGNhc2UgMHhGRToKLSAgICAgICAgICAgICAgICAvLyBtYXNz
LXN0b3JhZ2UgY2xhc3MgcmVxdWVzdCAnZ2V0IG1heCBsdW4nCi0gICAgICAgICAgICAgICAgLy8g
cmV0dXJuaW5nIG9uZSBieXRlCi0gICAgICAgICAgICAgICAgaWYgKGgtPmxlbmd0aCkgewotICAg
ICAgICAgICAgICAgICAgICBoLT5sZW5ndGggPSAxOwotICAgICAgICAgICAgICAgICAgICBoLT5z
dGF0dXMgPSB1c2JfcmVkaXJfc3VjY2Vzczs7Ci0gICAgICAgICAgICAgICAgICAgICpidWZmZXIg
PSAmZGV2aWNlLT5tYXhfbHVuX2luZGV4OwotICAgICAgICAgICAgICAgIH0KLSAgICAgICAgICAg
ICAgICBicmVhazsKKyAgICAgICAgY2FzZSAweEZGOgorICAgICAgICAgICAgLy8gbWFzcy1zdG9y
YWdlIGNsYXNzIHJlcXVlc3QgJ3Jlc2V0JworICAgICAgICAgICAgdXNiX2NkX3Jlc2V0KGRldmlj
ZSk7CisgICAgICAgICAgICBoLT5sZW5ndGggPSAwOworICAgICAgICAgICAgaC0+c3RhdHVzID0g
dXNiX3JlZGlyX3N1Y2Nlc3M7CisgICAgICAgICAgICBicmVhazsKKyAgICAgICAgY2FzZSAweEZF
OgorICAgICAgICAgICAgLy8gbWFzcy1zdG9yYWdlIGNsYXNzIHJlcXVlc3QgJ2dldCBtYXggbHVu
JworICAgICAgICAgICAgLy8gcmV0dXJuaW5nIG9uZSBieXRlCisgICAgICAgICAgICBpZiAoaC0+
bGVuZ3RoKSB7CisgICAgICAgICAgICAgICAgaC0+bGVuZ3RoID0gMTsKKyAgICAgICAgICAgICAg
ICBoLT5zdGF0dXMgPSB1c2JfcmVkaXJfc3VjY2Vzczs7CisgICAgICAgICAgICAgICAgKmJ1ZmZl
ciA9ICZkZXZpY2UtPm1heF9sdW5faW5kZXg7CisgICAgICAgICAgICB9CisgICAgICAgICAgICBi
cmVhazsKICAgICAgICAgfQogICAgIH0KIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
