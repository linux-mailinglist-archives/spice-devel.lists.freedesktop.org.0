Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 853849E40B
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F416D89935;
	Tue, 27 Aug 2019 09:24:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C624689949
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:24:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 72B5A3082E09
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:24:07 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9F645D9CC;
 Tue, 27 Aug 2019 09:24:05 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:44 +0100
Message-Id: <20190827092246.10276-28-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 27 Aug 2019 09:24:07 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 27/29] test-cd-emu: Test detach
 and reattach
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

TWFrZSBzdXJlIGRldmljZSBjYW4gYmUgZGV0YWNoZWQgYW5kIGF0dGFjaGVkIGFnYWluLgoKU2ln
bmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogdGVz
dHMvY2QtZW11LmMgfCAxMDUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDc2IGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2NkLWVtdS5jIGIvdGVzdHMvY2QtZW11LmMKaW5kZXgg
ZjA5NjY2NjIuLjhiYzNhN2VkIDEwMDY0NAotLS0gYS90ZXN0cy9jZC1lbXUuYworKysgYi90ZXN0
cy9jZC1lbXUuYwpAQCAtMTEzLDYgKzExMyw2NyBAQCBzdGF0aWMgdm9pZCBkZWNyZW1lbnRfYWxs
b2NhdGVkKGdwb2ludGVyIGRhdGEgR19HTlVDX1VOVVNFRCwgR09iamVjdCAqb2xkX2dvYmplYwog
ICAgICAgICBzcGljZV91c2JfYmFja2VuZF9yZWFkX2d1ZXN0X2RhdGEodXNiX2NoLCAodWludDhf
dCopZGF0YSwgR19OX0VMRU1FTlRTKGRhdGEpKTsgXAogICAgIH0gd2hpbGUoMCkKIAorc3RhdGlj
IHZvaWQKK2RldmljZV9pdGVyYXRpb24oY29uc3QgaW50IGxvb3AsIGNvbnN0IGJvb2wgYXR0YWNo
X29uX2Nvbm5lY3QpCit7CisgICAgR0Vycm9yICplcnIgPSBOVUxMOworICAgIHVuc2lnbmVkIGlu
dCBoZWxsb3NfZXhwZWN0ZWQsIG1lc3NhZ2VzX2V4cGVjdGVkOworCitwcmludGYoIkxPT1AgJWRc
biIsIGxvb3ApOworICAgIGhlbGxvc19leHBlY3RlZCA9IGhlbGxvc19zZW50OworICAgIG1lc3Nh
Z2VzX2V4cGVjdGVkID0gbWVzc2FnZXNfc2VudDsKKworICAgIGlmIChjaF9zdGF0ZSA9PSBTUElD
RV9DSEFOTkVMX1NUQVRFX1VOQ09OTkVDVEVEKSB7CisgICAgICAgIGNoX3N0YXRlID0gU1BJQ0Vf
Q0hBTk5FTF9TVEFURV9DT05ORUNUSU5HOworICAgIH0KKyAgICBpZiAoYXR0YWNoX29uX2Nvbm5l
Y3QpIHsKKyAgICAgICAgZ19hc3NlcnRfdHJ1ZShzcGljZV91c2JfYmFja2VuZF9jaGFubmVsX2F0
dGFjaCh1c2JfY2gsIGRldmljZSwgJmVycikpOworICAgICAgICBnX2Fzc2VydF9udWxsKGVycik7
CisgICAgICAgIGlmIChjaF9zdGF0ZSA9PSBTUElDRV9DSEFOTkVMX1NUQVRFX1JFQURZKSB7Cisg
ICAgICAgICAgICBoZWxsb3NfZXhwZWN0ZWQgPSBNSU4oaGVsbG9zX2V4cGVjdGVkICsgMSwgMSk7
CisgICAgICAgICAgICArK21lc3NhZ2VzX2V4cGVjdGVkOworICAgICAgICB9IGVsc2UgeworICAg
ICAgICAgICAgZ19hc3NlcnRfY21waW50KG1lc3NhZ2VzX3NlbnQsID09LCBtZXNzYWdlc19leHBl
Y3RlZCk7CisgICAgICAgIH0KKyAgICB9CisgICAgZ19hc3NlcnRfY21waW50KGhlbGxvc19zZW50
LCA9PSwgaGVsbG9zX2V4cGVjdGVkKTsKKyAgICBnX2Fzc2VydF9jbXBpbnQobWVzc2FnZXNfc2Vu
dCwgPj0sIG1lc3NhZ2VzX2V4cGVjdGVkKTsKKworICAgIC8vIHRyeSB0byBnZXQgaW5pdGlhbCBk
YXRhCisgICAgaWYgKGNoX3N0YXRlID09IFNQSUNFX0NIQU5ORUxfU1RBVEVfQ09OTkVDVElORykg
eworICAgICAgICBjaF9zdGF0ZSA9IFNQSUNFX0NIQU5ORUxfU1RBVEVfUkVBRFk7CisgICAgICAg
IHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfZmx1c2hfd3JpdGVzKHVzYl9jaCk7CisgICAgICAg
IGhlbGxvc19leHBlY3RlZCA9IE1JTihoZWxsb3NfZXhwZWN0ZWQgKyAxLCAxKTsKKyAgICAgICAg
KyttZXNzYWdlc19leHBlY3RlZDsKKyAgICB9CisKKyAgICAvLyB3ZSBzaG91bGQgZ2V0IGFuIGhl
bGxvIChvbmx5IG9uZSEpCisgICAgZ19hc3NlcnRfY21waW50KGhlbGxvc19zZW50LCA9PSwgaGVs
bG9zX2V4cGVjdGVkKTsKKyAgICBnX2Fzc2VydF9jbXBpbnQobWVzc2FnZXNfc2VudCwgPj0sIG1l
c3NhZ2VzX2V4cGVjdGVkKTsKKworICAgIC8vIHNlbmQgaGVsbG8gcmVwbHkKKyAgICBpZiAobG9v
cCA9PSAwKSB7CisgICAgICAgIERBVEFfU1RBUlQKKyAgICAgICAgICAgIDB4MDAsMHgwMCwweDAw
LDB4MDAsMHg0NCwweDAwLDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLCAvLzAwMCAuLi4u
RC4uLi4uLi4KKyAgICAgICAgICAgIDB4NzEsMHg2NSwweDZkLDB4NzUsMHgyMCwweDc1LDB4NzMs
MHg2MiwweDJkLDB4NzIsMHg2NSwweDY0LCAvLzAwYyBxZW11IHVzYi1yZWQKKyAgICAgICAgICAg
IDB4NjksMHg3MiwweDIwLDB4NjcsMHg3NSwweDY1LDB4NzMsMHg3NCwweDIwLDB4MzMsMHgyZSww
eDMwLCAvLzAxOCBpciBndWVzdCAzLjAKKyAgICAgICAgICAgIDB4MmUsMHgzMSwweDAwLDB4MDAs
MHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLCAvLzAyNCAuMS4uLi4uLi4u
Li4KKyAgICAgICAgICAgIDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCww
eDAwLDB4MDAsMHgwMCwweDAwLCAvLzAzMCAuLi4uLi4uLi4uLi4KKyAgICAgICAgICAgIDB4MDAs
MHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLCAv
LzAzYyAuLi4uLi4uLi4uLi4KKyAgICAgICAgICAgIDB4MDAsMHgwMCwweDAwLDB4MDAsMHhmZiww
eDAwLDB4MDAsMHgwMCwgICAgICAgICAgICAgICAgICAgICAvLzA0OCAuLi4uLi4uLgorICAgICAg
ICBEQVRBX1NFTkQ7CisgICAgfQorCisgICAgaWYgKCFhdHRhY2hfb25fY29ubmVjdCkgeworICAg
ICAgICBnX2Fzc2VydF90cnVlKHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfYXR0YWNoKHVzYl9j
aCwgZGV2aWNlLCAmZXJyKSk7CisgICAgICAgIGdfYXNzZXJ0X251bGwoZXJyKTsKKyAgICB9Cisg
ICAgZ19hc3NlcnRfY21waW50KGhlbGxvc19zZW50LCA9PSwgMSk7CisgICAgZ19hc3NlcnRfY21w
aW50KG1lc3NhZ2VzX3NlbnQsID4sIDEpOworCisgICAgc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5l
bF9kZXRhY2godXNiX2NoKTsKK30KKwogc3RhdGljIHZvaWQgYXR0YWNoKGNvbnN0IHZvaWQgKnBh
cmFtKQogewogICAgIGNvbnN0IGJvb2wgYXR0YWNoX29uX2Nvbm5lY3QgPSAhIUdQT0lOVEVSX1RP
X1VJTlQocGFyYW0pOwpAQCAtMTU2LDQ0ICsyMTcsMzAgQEAgc3RhdGljIHZvaWQgYXR0YWNoKGNv
bnN0IHZvaWQgKnBhcmFtKQogICAgIGdfYXNzZXJ0X3RydWUoY3JlYXRlX2VtdWxhdGVkX2NkKGJl
LCAmcGFyYW1zLCAmZXJyKSk7CiAgICAgZ19hc3NlcnRfbnVsbChlcnIpOwogICAgIGdfYXNzZXJ0
X25vbm51bGwoZGV2aWNlKTsKKyAgICBnX2Fzc2VydF9mYWxzZShkZXZpY2UtPmVkZXZfY29uZmln
dXJlZCk7CiAKICAgICB1c2JfY2ggPSBzcGljZV91c2JfYmFja2VuZF9jaGFubmVsX25ldyhiZSwg
U1BJQ0VfVVNCUkVESVJfQ0hBTk5FTChjaCkpOwogICAgIGdfYXNzZXJ0X25vbm51bGwodXNiX2No
KTsKIAotICAgIC8vIGF0dGFjaCBvbiBjb25uZWN0Ci0gICAgY2hfc3RhdGUgPSBTUElDRV9DSEFO
TkVMX1NUQVRFX0NPTk5FQ1RJTkc7Ci0gICAgaWYgKGF0dGFjaF9vbl9jb25uZWN0KSB7Ci0gICAg
ICAgIGdfYXNzZXJ0X3RydWUoc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5lbF9hdHRhY2godXNiX2No
LCBkZXZpY2UsICZlcnIpKTsKLSAgICAgICAgZ19hc3NlcnRfbnVsbChlcnIpOworICAgIGZvciAo
aW50IGxvb3AgPSAwOyBsb29wIDwgMjsgKytsb29wKSB7CisgICAgICAgIGRldmljZV9pdGVyYXRp
b24obG9vcCwgYXR0YWNoX29uX2Nvbm5lY3QpOwogICAgIH0KLSAgICBnX2Fzc2VydF9jbXBpbnQo
aGVsbG9zX3NlbnQsID09LCAwKTsKLSAgICBnX2Fzc2VydF9jbXBpbnQobWVzc2FnZXNfc2VudCwg
PT0sIDApOwogCi0gICAgLy8gdHJ5IHRvIGdldCBpbml0aWFsIGRhdGEKLSAgICBjaF9zdGF0ZSA9
IFNQSUNFX0NIQU5ORUxfU1RBVEVfUkVBRFk7Ci0gICAgc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5l
bF9mbHVzaF93cml0ZXModXNiX2NoKTsKKy8qCiAKLSAgICAvLyB3ZSBzaG91bGQgZ2V0IGFuIGhl
bGxvIChvbmx5IG9uZSEpCi0gICAgZ19hc3NlcnRfY21waW50KGhlbGxvc19zZW50LCA9PSwgMSk7
Ci0gICAgZ19hc3NlcnRfY21waW50KG1lc3NhZ2VzX3NlbnQsID09LCAxKTsKKz4gdG8gc2VydmVy
L2d1ZXN0Cis8IHRvIGNsaWVudCBmcm9tIHNlcnZlci9ndWVzdAogCi0gICAgLy8gc2VuZCBoZWxs
byByZXBseQotICAgIERBVEFfU1RBUlQKLSAgICAgICAgMHgwMCwweDAwLDB4MDAsMHgwMCwweDQ0
LDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLDB4MDAsIC8vMDAwIC4uLi5ELi4uLi4uLgot
ICAgICAgICAweDcxLDB4NjUsMHg2ZCwweDc1LDB4MjAsMHg3NSwweDczLDB4NjIsMHgyZCwweDcy
LDB4NjUsMHg2NCwgLy8wMGMgcWVtdSB1c2ItcmVkCi0gICAgICAgIDB4NjksMHg3MiwweDIwLDB4
NjcsMHg3NSwweDY1LDB4NzMsMHg3NCwweDIwLDB4MzMsMHgyZSwweDMwLCAvLzAxOCBpciBndWVz
dCAzLjAKLSAgICAgICAgMHgyZSwweDMxLDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLDB4
MDAsMHgwMCwweDAwLDB4MDAsIC8vMDI0IC4xLi4uLi4uLi4uLgotICAgICAgICAweDAwLDB4MDAs
MHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwgLy8wMzAg
Li4uLi4uLi4uLi4uCi0gICAgICAgIDB4MDAsMHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLDB4MDAs
MHgwMCwweDAwLDB4MDAsMHgwMCwweDAwLCAvLzAzYyAuLi4uLi4uLi4uLi4KLSAgICAgICAgMHgw
MCwweDAwLDB4MDAsMHgwMCwweGZmLDB4MDAsMHgwMCwweDAwLCAgICAgICAgICAgICAgICAgICAg
IC8vMDQ4IC4uLi4uLi4uCi0gICAgREFUQV9TRU5EOworPiB1c2JfcmVkaXJfaW50ZXJmYWNlX2lu
Zm8sCis+IHVzYl9yZWRpcl9lcF9pbmZvLAorPiB1c2JfcmVkaXJfZGV2aWNlX2Nvbm5lY3QKIAot
ICAgIGlmICghYXR0YWNoX29uX2Nvbm5lY3QpIHsKLSAgICAgICAgZ19hc3NlcnRfdHJ1ZShzcGlj
ZV91c2JfYmFja2VuZF9jaGFubmVsX2F0dGFjaCh1c2JfY2gsIGRldmljZSwgJmVycikpOwotICAg
ICAgICBnX2Fzc2VydF9udWxsKGVycik7Ci0gICAgfQotICAgIGdfYXNzZXJ0X2NtcGludChoZWxs
b3Nfc2VudCwgPT0sIDEpOwotICAgIGdfYXNzZXJ0X2NtcGludChtZXNzYWdlc19zZW50LCA+LCAx
KTsKKzwgdXNiX3JlZGlyX3Jlc2V0Cis8IHVzYl9yZWRpcl9jb250cm9sX3BhY2tldAorCis+IHVz
Yl9yZWRpcl9jb250cm9sX3BhY2tldAorCisqLwogCiAgICAgLy8gY2xlYW51cAogICAgIHNwaWNl
X3VzYl9iYWNrZW5kX2RldmljZV91bnJlZihkZXZpY2UpOwotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
