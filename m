Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 520C1A046A
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 16:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7CA88932D;
	Wed, 28 Aug 2019 14:14:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F09589226
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 14:14:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1A163356C9;
 Wed, 28 Aug 2019 14:14:45 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5CAF860F82;
 Wed, 28 Aug 2019 14:14:44 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 28 Aug 2019 15:14:14 +0100
Message-Id: <20190828141421.18902-12-fziglio@redhat.com>
In-Reply-To: <20190828141421.18902-1-fziglio@redhat.com>
References: <20190828141421.18902-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Wed, 28 Aug 2019 14:14:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v5 11/18] usb-redir: command-line
 option to create emulated CD drive
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

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKQWRk
ZWQgY29tbWFuZC1saW5lIG9wdGlvbiBmb3Igc2hhcmluZyBlbXVsYXRlZCBDRCBkZXZpY2VzLgpJ
dCB1c2VzIHByb3BlcnR5IGludGVyZmFjZSBvZiB1c2ItZGV2aWNlLW1hbmFnZXIgdG8KY3JlYXRl
IENELCB0aGlzIGlzIGEgdGVtcG9yYXJ5IHNvbHV0aW9uIHVudGlsIHB1YmxpYyBBUEkgb2YKdXNi
LWRldmljZS1tYW5hZ2VyIGRlZmluZWQgZm9yIHNoYXJlZCBDRCBtYW5hZ2VtZW50IGZyb20gYm90
aApHVUkgYW5kIGNvbW1hbmQgbGluZS4KClNpZ25lZC1vZmYtYnk6IFl1cmkgQmVuZGl0b3ZpY2gg
PHl1cmkuYmVuZGl0b3ZpY2hAZGF5bml4LmNvbT4KLS0tCiBzcmMvc3BpY2Utb3B0aW9uLmMgICAg
ICAgfCAxNyArKysrKysrKysrKysrKysrKwogc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgMzQg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1MSBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLW9wdGlvbi5jIGIvc3JjL3NwaWNl
LW9wdGlvbi5jCmluZGV4IDhjNGU3MDdjLi5mMGIzYjVkNiAxMDA2NDQKLS0tIGEvc3JjL3NwaWNl
LW9wdGlvbi5jCisrKyBiL3NyYy9zcGljZS1vcHRpb24uYwpAQCAtMzIsNiArMzIsNyBAQCBzdGF0
aWMgY2hhciAqc21hcnRjYXJkX2RiID0gTlVMTDsKIHN0YXRpYyBjaGFyICpzbWFydGNhcmRfY2Vy
dGlmaWNhdGVzID0gTlVMTDsKIHN0YXRpYyBjaGFyICp1c2JyZWRpcl9hdXRvX3JlZGlyZWN0X2Zp
bHRlciA9IE5VTEw7CiBzdGF0aWMgY2hhciAqdXNicmVkaXJfcmVkaXJlY3Rfb25fY29ubmVjdCA9
IE5VTEw7CitzdGF0aWMgZ2NoYXIgKipjZF9zaGFyZV9maWxlcyA9IE5VTEw7CiBzdGF0aWMgZ2Jv
b2xlYW4gc21hcnRjYXJkID0gRkFMU0U7CiBzdGF0aWMgZ2Jvb2xlYW4gZGlzYWJsZV9hdWRpbyA9
IEZBTFNFOwogc3RhdGljIGdib29sZWFuIGRpc2FibGVfdXNicmVkaXIgPSBGQUxTRTsKQEAgLTE4
Myw2ICsxODQsOSBAQCBHT3B0aW9uR3JvdXAqIHNwaWNlX2dldF9vcHRpb25fZ3JvdXAodm9pZCkK
ICAgICAgICAgICBOXygiRmlsdGVyIHNlbGVjdGluZyBVU0IgZGV2aWNlcyB0byBiZSBhdXRvLXJl
ZGlyZWN0ZWQgd2hlbiBwbHVnZ2VkIGluIiksIE5fKCI8ZmlsdGVyLXN0cmluZz4iKSB9LAogICAg
ICAgICB7ICJzcGljZS11c2JyZWRpci1yZWRpcmVjdC1vbi1jb25uZWN0IiwgJ1wwJywgMCwgR19P
UFRJT05fQVJHX1NUUklORywgJnVzYnJlZGlyX3JlZGlyZWN0X29uX2Nvbm5lY3QsCiAgICAgICAg
ICAgTl8oIkZpbHRlciBzZWxlY3RpbmcgVVNCIGRldmljZXMgdG8gcmVkaXJlY3Qgb24gY29ubmVj
dCIpLCBOXygiPGZpbHRlci1zdHJpbmc+IikgfSwKKyAgICAgICAgeyAic3BpY2Utc2hhcmUtY2Qi
LCAnXDAnLCAwLCBHX09QVElPTl9BUkdfU1RSSU5HX0FSUkFZLCAmY2Rfc2hhcmVfZmlsZXMsCisg
ICAgICAgICAgTl8oIk5hbWUgb2YgSVNPIGZpbGUgb3IgQ0QvRFZEIGRldmljZSB0byBzaGFyZTsg
cHJlZml4ICchJyB0byBkZWxldGUgb24gZWplY3QiKSwKKyAgICAgICAgICBOXygiPGZpbGVuYW1l
PiAocmVwZWF0IGFsbG93ZWQpIikgfSwKICAgICAgICAgeyAic3BpY2UtY2FjaGUtc2l6ZSIsICdc
MCcsIDAsIEdfT1BUSU9OX0FSR19JTlQsICZjYWNoZV9zaXplLAogICAgICAgICAgIE5fKCJJbWFn
ZSBjYWNoZSBzaXplIChkZXByZWNhdGVkKSIpLCBOXygiPGJ5dGVzPiIpIH0sCiAgICAgICAgIHsg
InNwaWNlLWdsei13aW5kb3ctc2l6ZSIsICdcMCcsIDAsIEdfT1BUSU9OX0FSR19JTlQsICZnbHpf
d2luZG93X3NpemUsCkBAIC0yODgsNiArMjkyLDE5IEBAIHZvaWQgc3BpY2Vfc2V0X3Nlc3Npb25f
b3B0aW9uKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbikKICAgICAgICAgICAgICAgICAgICAgICAgICB1
c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25uZWN0LCBOVUxMKTsKICAgICAgICAgfQogICAgIH0KKyAg
ICBpZiAoY2Rfc2hhcmVfZmlsZXMpIHsKKyAgICAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpt
ID0KKyAgICAgICAgICAgICAgICBnZXRfdXNiX2RldmljZV9tYW5hZ2VyX2Zvcl9vcHRpb24oc2Vz
c2lvbiwgIi0tc3BpY2Utc2hhcmUtY2QiKTsKKyAgICAgICAgaWYgKG0pIHsKKyAgICAgICAgICAg
IGdjaGFyICoqbmFtZSA9IGNkX3NoYXJlX2ZpbGVzOworICAgICAgICAgICAgd2hpbGUgKG5hbWUg
JiYgKm5hbWUpIHsKKyAgICAgICAgICAgICAgICBnX29iamVjdF9zZXQobSwgInNoYXJlLWNkIiwg
Km5hbWUsIE5VTEwpOworICAgICAgICAgICAgICAgIG5hbWUrKzsKKyAgICAgICAgICAgIH0KKyAg
ICAgICAgfQorICAgICAgICBnX3N0cmZyZWV2KGNkX3NoYXJlX2ZpbGVzKTsKKyAgICAgICAgY2Rf
c2hhcmVfZmlsZXMgPSBOVUxMOworICAgIH0KICAgICBpZiAoZGlzYWJsZV91c2JyZWRpcikKICAg
ICAgICAgZ19vYmplY3Rfc2V0KHNlc3Npb24sICJlbmFibGUtdXNicmVkaXIiLCBGQUxTRSwgTlVM
TCk7CiAgICAgaWYgKGRpc2FibGVfYXVkaW8pCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1t
YW5hZ2VyLmMgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXggNTgzNGUwMzIuLjE4N2Nj
ZmEyIDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKKysrIGIvc3JjL3VzYi1k
ZXZpY2UtbWFuYWdlci5jCkBAIC0zMiw2ICszMiw3IEBACiAjZW5kaWYKIAogI2luY2x1ZGUgImNo
YW5uZWwtdXNicmVkaXItcHJpdi5oIgorI2luY2x1ZGUgInVzYi1kZXZpY2UtY2QuaCIKICNlbmRp
ZgogCiAjaW5jbHVkZSAic3BpY2Utc2Vzc2lvbi1wcml2LmgiCkBAIC03NCw2ICs3NSw3IEBAIGVu
dW0gewogICAgIFBST1BfQVVUT19DT05ORUNUX0ZJTFRFUiwKICAgICBQUk9QX1JFRElSRUNUX09O
X0NPTk5FQ1QsCiAgICAgUFJPUF9GUkVFX0NIQU5ORUxTLAorICAgIFBST1BfU0hBUkVfQ0QKIH07
CiAKIGVudW0KQEAgLTQzMiw2ICs0MzQsMjYgQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNiX2Rldmlj
ZV9tYW5hZ2VyX3NldF9wcm9wZXJ0eShHT2JqZWN0ICAgICAgICpnb2JqZWN0LAogICAgICAgICBw
cml2LT5yZWRpcmVjdF9vbl9jb25uZWN0ID0gZ19zdHJkdXAoZmlsdGVyKTsKICAgICAgICAgYnJl
YWs7CiAgICAgfQorICAgIGNhc2UgUFJPUF9TSEFSRV9DRDoKKyAgICB7CisjaWZkZWYgVVNFX1VT
QlJFRElSCisgICAgICAgIENkRW11bGF0aW9uUGFyYW1zIHBhcmFtID0geyAwIH07CisgICAgICAg
IGNvbnN0IGdjaGFyICpuYW1lID0gZ192YWx1ZV9nZXRfc3RyaW5nKHZhbHVlKTsKKyAgICAgICAg
LyogdGhlIHN0cmluZyBpcyB0ZW1wb3JhcnksIG5vIG5lZWQgdG8ga2VlcCBpdCAqLworICAgICAg
ICBTUElDRV9ERUJVRygic2hhcmVfY2Qgc2V0IHRvICVzIiwgbmFtZSk7CisgICAgICAgIGlmIChu
YW1lWzBdID09ICchJykgeworICAgICAgICAgICAgbmFtZSsrOworICAgICAgICAgICAgcGFyYW0u
ZGVsZXRlX29uX2VqZWN0ID0gMTsKKyAgICAgICAgfQorICAgICAgICBwYXJhbS5maWxlbmFtZSA9
IG5hbWU7CisgICAgICAgIEdFcnJvciAqZXJyb3IgPSBOVUxMOworICAgICAgICBpZiAoIWNyZWF0
ZV9lbXVsYXRlZF9jZChwcml2LT5jb250ZXh0LCAmcGFyYW0sICZlcnJvcikpIHsKKyAgICAgICAg
ICAgIGdfd2FybmluZyhlcnJvci0+bWVzc2FnZSk7CisgICAgICAgICAgICBnX2Vycm9yX2ZyZWUo
ZXJyb3IpOworICAgICAgICB9CisjZW5kaWYKKyAgICAgICAgYnJlYWs7CisgICAgfQogICAgIGRl
ZmF1bHQ6CiAgICAgICAgIEdfT0JKRUNUX1dBUk5fSU5WQUxJRF9QUk9QRVJUWV9JRChnb2JqZWN0
LCBwcm9wX2lkLCBwc3BlYyk7CiAgICAgICAgIGJyZWFrOwpAQCAtNTIyLDYgKzU0NCwxOCBAQCBz
dGF0aWMgdm9pZCBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfY2xhc3NfaW5pdChTcGljZVVzYkRl
dmljZU1hbmFnZXJDbGFzcyAqa2xhcwogICAgIGdfb2JqZWN0X2NsYXNzX2luc3RhbGxfcHJvcGVy
dHkoZ29iamVjdF9jbGFzcywgUFJPUF9SRURJUkVDVF9PTl9DT05ORUNULAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcHNwZWMpOwogCisgICAgLyoqCisgICAgKiBTcGljZVVz
YkRldmljZU1hbmFnZXI6c2hhcmUtY2Q6CisgICAgKgorICAgICogU2V0IGEgc3RyaW5nIHNwZWNp
ZnlpbmcgYSBmaWxlbmFtZSAoSVNPKSBvciBwaHlzaWNhbCBDRC9EVkQgZGV2aWNlCisgICAgKiB0
byBzaGFyZSB2aWEgVVNCIGFmdGVyIGEgU3BpY2UgY29ubmVjdGlvbiBoYXMgYmVlbiBlc3RhYmxp
c2hlZC4KKyAgICAqCisgICAgKi8KKyAgICBwc3BlYyA9IGdfcGFyYW1fc3BlY19zdHJpbmcoInNo
YXJlLWNkIiwgIlNoYXJlIElTTyBmaWxlIG9yIGRldmljZSBhcyBDRCIsCisgICAgICAgICJGaWxl
IG9yIGRldmljZSBuYW1lIHRvIHNoYXJlIiwgTlVMTCwKKyAgICAgICAgR19QQVJBTV9SRUFEV1JJ
VEUgfCBHX1BBUkFNX1NUQVRJQ19TVFJJTkdTKTsKKyAgICBnX29iamVjdF9jbGFzc19pbnN0YWxs
X3Byb3BlcnR5KGdvYmplY3RfY2xhc3MsIFBST1BfU0hBUkVfQ0QsIHBzcGVjKTsKKwogICAgIC8q
KgogICAgICAqIFNwaWNlVXNiRGV2aWNlTWFuYWdlcjpmcmVlLWNoYW5uZWxzOgogICAgICAqCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
