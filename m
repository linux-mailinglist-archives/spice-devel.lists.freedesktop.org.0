Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C41BDC40B
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 13:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578F96EB22;
	Fri, 18 Oct 2019 11:37:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B036EB20
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 11:37:26 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-wn6_nqCGNfCOzPlfjNrNxQ-1; Fri, 18 Oct 2019 07:37:21 -0400
Received: by mail-wm1-f72.google.com with SMTP id l184so1060792wmf.6
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 04:37:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vR8W2FZvgognYWVo3hjKcgXg5Uhve6Iw34cQ4wEACB8=;
 b=IkgLd9sfdePcJH3VMB8lhO1SoZbBaf7JJQlLOXfYA2R4+ID5+QmlqLSmX9P2Vsseoz
 QN/eYnaac+Qt/ggV1wvIUPYTd7H/8utKcuUNnTtX2eyBKalsQLz+HRURhUxzI540Ngi0
 DiVONd7GkrhxNuVLXEx3GQOO8N1vpqXJzBe8Euws+ho2oOh8yoZmHXlxw2Tlb4pvN2UW
 U1AyN7Jb3LSv1FPTWwRlXPpjep9tj+90XTqs+TD4xiKpP6lqE0We0D+8JgjCZAel/SDb
 JdhH32+ZzD1VUNMP+8wMrQrRG5k7/UdB+iI/et084LoIBk13p6lHAP1xu2dp3x8PRmHb
 l2Pw==
X-Gm-Message-State: APjAAAUgWDr6znXaReucw4bBGpxJ+Kz1kGZVgWA9VF9kPHuyA8E0npKZ
 fPkiJvQ8Zyckuoe0Xn1YsX/QZ6PExOhCUUGc8c3a1DiKtL2W/jgZXDZFB2S8FBOILVDdtCeJG+V
 GHg3uFdZgOlNOtzBvGHeKkc/dzK7GrE4=
X-Received: by 2002:adf:a516:: with SMTP id i22mr8044611wrb.273.1571398640417; 
 Fri, 18 Oct 2019 04:37:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwk+5pRpvZr06V/Xjh+kn+rUogKNdgxi2mUSh09Be2S1ggiaDMWqyFRKQfHDzXZ84AaRelyFw==
X-Received: by 2002:adf:a516:: with SMTP id i22mr8044596wrb.273.1571398640122; 
 Fri, 18 Oct 2019 04:37:20 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:2cf1:592d:314d:825])
 by smtp.gmail.com with ESMTPSA id h125sm6936375wmf.31.2019.10.18.04.37.19
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 04:37:19 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 18 Oct 2019 13:37:09 +0200
Message-Id: <20191018113709.18888-3-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191018113709.18888-1-kpouget@redhat.com>
References: <20191018113709.18888-1-kpouget@redhat.com>
MIME-Version: 1.0
X-MC-Unique: wn6_nqCGNfCOzPlfjNrNxQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571398645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oghW51Ffqvcukf7+GQQqJ0kuiSXn03ricvPyBwCjyOk=;
 b=PsTTohRZmzzDzRVVF4l+R2mCWwT2Ed1j7cCTBS/a9VyEG86o+Xmp6Wzp9Kjq0nm+fwB8Aw
 oiMM9ztw3jRo+THeOYd6X+sM9ZyCK1DHAVfgCuCSP6n6YGFUNp3iAW0Jy5A0hzB5T1w9B0
 ifOoT0gPpIZu0yVEw8b4AUeeh5Kx/Q4=
Subject: [Spice-devel] [PATCH spice-common v2 3/3] build: Introduce 'agent'
 as an alternative instrumentation library
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

VGhlICdhZ2VudCcgaW50ZXJmYWNlIGlzIGFuIGV4cGVyaW1lbnRhbCBpbnN0cnVtZW50YXRpb24g
bGlicmFyeSBmb3IKY2FwdHVyaW5nIGFuZCBzaGFyaW5nIFNwaWNlIHBlcmZvcm1hbmNlIGluZGlj
YXRvcnMgd2l0aCBhbiBleHRlcm5hbAphZ2VudC4KCiAgICAtLWVuYWJsZS1pbnN0cnVtZW50YXRp
b249W2MzZC1yZWMvYWdlbnQvbm9dCiAgICAgICAgICAgICBFbmFibGUgaW5zdHJ1bWVudGF0aW9u
IFtkZWZhdWx0PW5vXQoKRm9ybWVyIGNvbmZpZ3VyYXRpb24gb3B0aW9uICctLWVuYWJsZS1yZWNv
cmRlcj1jM2QnIGlzIHRyYW5zZm9ybWVkIGludG8KJy0tZW5hYmxlLWluc3RydW1lbnRhdGlvbj1j
M2QtcmVjJy4KClNpZ25lZC1vZmYtYnk6IEtldmluIFBvdWdldCA8a3BvdWdldEByZWRoYXQuY29t
PgotLS0KdjEtPnYyOiBjaGFuZ2VkICdvZmYnIHRvICdubycgZm9yIG1lc29uIGJ1aWxkIHdpdGhv
dXQgaW5zdHJ1bWVudGF0aW9uCmxpYnJhcnkKLS0tCiBjb21tb24vTWFrZWZpbGUuYW0gfCAgOSAr
KysrKysrKy0KIGNvbW1vbi9tZXNvbi5idWlsZCB8ICA4ICsrKysrKystCiBjb21tb24vcmVjb3Jk
ZXIuaCAgfCAxMiArKysrKysrKy0tLS0KIGNvbmZpZ3VyZS5hYyAgICAgICB8ICAyICstCiBtNC9z
cGljZS1kZXBzLm00ICAgfCAyMyArKysrKysrKysrKysrLS0tLS0tLS0tLQogbWVzb24uYnVpbGQg
ICAgICAgIHwgIDcgKysrKystLQogbWVzb25fb3B0aW9ucy50eHQgIHwgMTAgKysrKystLS0tLQog
NyBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9jb21tb24vTWFrZWZpbGUuYW0gYi9jb21tb24vTWFrZWZpbGUuYW0KaW5kZXggOTYz
ODYzNS4uZmM0NjZiZCAxMDA2NDQKLS0tIGEvY29tbW9uL01ha2VmaWxlLmFtCisrKyBiL2NvbW1v
bi9NYWtlZmlsZS5hbQpAQCAtNTYsNyArNTYsNyBAQCBsaWJzcGljZV9jb21tb25fbGFfU09VUkNF
UyA9CQlcCiAJcmVjb3JkZXIuaAkJCVwKIAkkKE5VTEwpCgotaWYgRU5BQkxFX1JFQ09SREVSCitp
ZiBFTkFCTEVfQzNEX1JFQ09SREVSCiBsaWJzcGljZV9jb21tb25fbGFfU09VUkNFUyArPSBcCiAJ
cmVjb3JkZXIvcmVjb3JkZXIuYwkJXAogCXJlY29yZGVyL3JlY29yZGVyLmgJCVwKQEAgLTY1LDYg
KzY1LDEzIEBAIGxpYnNwaWNlX2NvbW1vbl9sYV9TT1VSQ0VTICs9IFwKIAkkKE5VTEwpCiBlbmRp
ZgoKK2lmIEVOQUJMRV9BR0VOVF9JTlRFUkZBQ0UKK2xpYnNwaWNlX2NvbW1vbl9sYV9TT1VSQ0VT
ICs9IFwKKwlhZ2VudF9pbnRlcmZhY2UuYwkJXAorCWFnZW50X2ludGVyZmFjZS5oCQlcCisJJChO
VUxMKQorZW5kaWYKKwogIyBUaGVzZSAyIGZpbGVzIGFyZSBub3QgYnVpbGQgYXMgcGFydCBvZiBz
cGljZS1jb21tb24KICMgYnVpbGQgc3lzdGVtLCBidXQgbW9kdWxlcyB1c2luZyBzcGljZS1jb21t
b24gd2lsbCBidWlsZAogIyB0aGVtIHdpdGggdGhlIGFwcHJvcHJpYXRlIG9wdGlvbnMuIFdlIG5l
ZWQgdG8gbGV0IGF1dG9tYWtlCmRpZmYgLS1naXQgYS9jb21tb24vbWVzb24uYnVpbGQgYi9jb21t
b24vbWVzb24uYnVpbGQKaW5kZXggOWEyNzI1Zi4uNDE4NTkzZSAxMDA2NDQKLS0tIGEvY29tbW9u
L21lc29uLmJ1aWxkCisrKyBiL2NvbW1vbi9tZXNvbi5idWlsZApAQCAtNDEsNyArNDEsNyBAQCBz
cGljZV9jb21tb25fc291cmNlcyA9IFsKICAgJ3JlY29yZGVyLmgnCiBdCgotaWYgZ2V0X29wdGlv
bigncmVjb3JkZXInKQoraWYgZ2V0X29wdGlvbignaW5zdHJ1bWVudGF0aW9uJykgPT0gJ2MzZC1y
ZWMnCiAgIHNwaWNlX2NvbW1vbl9zb3VyY2VzICs9IFsKICAgICAncmVjb3JkZXIvcmVjb3JkZXIu
YycsCiAgICAgJ3JlY29yZGVyL3JlY29yZGVyLmgnLApAQCAtNDksNiArNDksMTIgQEAgaWYgZ2V0
X29wdGlvbigncmVjb3JkZXInKQogICAgICdyZWNvcmRlci9yZWNvcmRlcl9yaW5nLmgnCiAgIF0K
IGVuZGlmCitpZiBnZXRfb3B0aW9uKCdpbnN0cnVtZW50YXRpb24nKSA9PSAnYWdlbnQnCisgIHNw
aWNlX2NvbW1vbl9zb3VyY2VzICs9IFsKKyAgICAnYWdlbnRfaW50ZXJmYWNlLmMnLAorICAgICdh
Z2VudF9pbnRlcmZhY2UuaCcKKyAgXQorZW5kaWYKCiBzcGljZV9jb21tb25fbGliID0gc3RhdGlj
X2xpYnJhcnkoJ3NwaWNlLWNvbW1vbicsIHNwaWNlX2NvbW1vbl9zb3VyY2VzLAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGluc3RhbGwgOiBmYWxzZSwKZGlmZiAtLWdpdCBhL2Nv
bW1vbi9yZWNvcmRlci5oIGIvY29tbW9uL3JlY29yZGVyLmgKaW5kZXggNzE5NGFiNS4uZjc3NmZk
MyAxMDA2NDQKLS0tIGEvY29tbW9uL3JlY29yZGVyLmgKKysrIGIvY29tbW9uL3JlY29yZGVyLmgK
QEAgLTE2LDcgKzE2LDE0IEBACiAqLwogLyogVGhpcyBmaWxlIGluY2x1ZGUgcmVjb3JkZXIgbGli
cmFyeSBoZWFkZXJzIG9yIGlmIGRpc2FibGVkIHByb3ZpZGUKICAqIHJlcGxhY2VtZW50IGRlY2xh
cmF0aW9ucyAqLwotI2lmbmRlZiBFTkFCTEVfUkVDT1JERVIKKworI2lmZGVmIEVOQUJMRV9DM0Rf
UkVDT1JERVIKKyNpbmNsdWRlIDxjb21tb24vcmVjb3JkZXIvcmVjb3JkZXIuaD4KKworI2VsaWYg
ZGVmaW5lZChFTkFCTEVfQUdFTlRfSU5URVJGQUNFKQorI2luY2x1ZGUgPGNvbW1vbi9hZ2VudF9p
bnRlcmZhY2UuaD4KKworI2Vsc2UKCiAjaW5jbHVkZSA8c3RkaW8uaD4KICNpbmNsdWRlIDxzdGRp
bnQuaD4KQEAgLTY5LDkgKzc2LDYgQEAgc3RhdGljIGlubGluZSB2b2lkCiByZWNvcmRlcl9kdW1w
X29uX2NvbW1vbl9zaWduYWxzKHVuc2lnbmVkIGFkZCwgdW5zaWduZWQgcmVtb3ZlKQogewogfQot
Ci0jZWxzZQotI2luY2x1ZGUgPGNvbW1vbi9yZWNvcmRlci9yZWNvcmRlci5oPgogI2VuZGlmCgog
I2lmICFkZWZpbmVkKEVOQUJMRV9BR0VOVF9JTlRFUkZBQ0UpCmRpZmYgLS1naXQgYS9jb25maWd1
cmUuYWMgYi9jb25maWd1cmUuYWMKaW5kZXggZGEwYTY4Ny4uOWQxMDI4NyAxMDA2NDQKLS0tIGEv
Y29uZmlndXJlLmFjCisrKyBiL2NvbmZpZ3VyZS5hYwpAQCAtNDEsNyArNDEsNyBAQCBBQ19BUkdf
RU5BQkxFKFthbGlnbm1lbnQtY2hlY2tzXSwKIEFTX0lGKFt0ZXN0ICJ4JGVuYWJsZV9hbGlnbm1l
bnRfY2hlY2tzIiA9ICJ4eWVzIl0sCiAgICAgICBbQUNfREVGSU5FKFtTUElDRV9ERUJVR19BTElH
Tk1FTlRdLCAxLCBbRW5hYmxlIHJ1bnRpbWUgY2hlY2tzIGZvciBjYXN0IGFsaWdubWVudF0pXSkK
Ci1TUElDRV9DSEVDS19SRUNPUkRFUgorU1BJQ0VfQ0hFQ0tfSU5TVFJVTUVOVEFUSU9OCgogIyBD
aGVja3MgZm9yIGxpYnJhcmllcwogUEtHX0NIRUNLX01PRFVMRVMoW1BST1RPQ09MXSwgW3NwaWNl
LXByb3RvY29sID49IDAuMTIuMTJdKQpkaWZmIC0tZ2l0IGEvbTQvc3BpY2UtZGVwcy5tNCBiL200
L3NwaWNlLWRlcHMubTQKaW5kZXggMTIxNDM0MS4uMzRmNzNlNiAxMDA2NDQKLS0tIGEvbTQvc3Bp
Y2UtZGVwcy5tNAorKysgYi9tNC9zcGljZS1kZXBzLm00CkBAIC0zNDEsMTcgKzM0MSwyMCBAQCBB
Q19ERUZVTihbU1BJQ0VfQ0hFQ0tfT1BFTlNTTF0sIFsKICAgICBQS0dfQ0hFQ0tfTU9EVUxFUyhP
UEVOU1NMLCBvcGVuc3NsKQogXSkKCi0jIFNQSUNFX0NIRUNLX1JFQ09SREVSCisjIFNQSUNFX0NI
RUNLX0lOU1RSVU1FTlRBVElPTgogIyAtLS0tLS0tLS0tLS0tLS0tLQotIyBDaGVjayBmb3IgdGhl
IGF2YWlsYWJpbGl0eSBvZiByZWNvcmRlciBsaWJyYXJ5LgorIyBDaGVjayBmb3IgdGhlIGF2YWls
YWJpbGl0eSBvZiBhbiBpbnN0cnVtZW50YXRpb24gbGlicmFyeS4KICMtLS0tLS0tLS0tLS0tLS0t
LS0KLUFDX0RFRlVOKFtTUElDRV9DSEVDS19SRUNPUkRFUl0sIFsKLSAgICBBQ19BUkdfRU5BQkxF
KFtyZWNvcmRlcl0sCi0gICAgICBBU19IRUxQX1NUUklORyhbLS1lbmFibGUtcmVjb3JkZXJdLAot
ICAgICAgICAgICAgICAgICAgICAgW0VuYWJsZSByZWNvcmRlciBpbnN0cnVtZW50YXRpb24gQDw6
QGRlZmF1bHQ9bm9AOj5AXSksCitBQ19ERUZVTihbU1BJQ0VfQ0hFQ0tfSU5TVFJVTUVOVEFUSU9O
XSwgWworICAgIEFDX0FSR19FTkFCTEUoW2luc3RydW1lbnRhdGlvbl0sCisgICAgICBBU19IRUxQ
X1NUUklORyhbLS1lbmFibGUtaW5zdHJ1bWVudGF0aW9uPUA8OkBjM2QtcmVjL2FnZW50L25vQDo+
QF0sCisgICAgICAgICAgICAgICAgICAgICBbRW5hYmxlIGluc3RydW1lbnRhdGlvbiBAPDpAZGVm
YXVsdD1ub0A6PkBdKSwKICAgICAgIFtdLAotICAgICAgZW5hYmxlX3JlY29yZGVyPSJubyIpCi0g
ICAgQVNfSUYoW3Rlc3QgIiRlbmFibGVfcmVjb3JkZXIiID0gInllcyJdLAotICAgICAgICAgICBB
Q19ERUZJTkUoW0VOQUJMRV9SRUNPUkRFUl0sIFsxXSwgW0RlZmluZSBpZiByZWNvcmRlciBpbnN0
cnVtZW50YXRpb24gaXMgZW5hYmxlZF0pKQotICAgIEFNX0NPTkRJVElPTkFMKFtFTkFCTEVfUkVD
T1JERVJdLFt0ZXN0ICIkZW5hYmxlX3JlY29yZGVyIiA9ICJ5ZXMiXSkKKyAgICAgIGVuYWJsZV9p
bnN0cnVtZW50YXRpb249Im5vIikKKyAgICBBU19JRihbdGVzdCAiJGVuYWJsZV9pbnN0cnVtZW50
YXRpb24iID0gImMzZC1yZWMiXSwKKyAgICAgICAgICAgQUNfREVGSU5FKFtFTkFCTEVfQzNEX1JF
Q09SREVSXSwgWzFdLCBbRGVmaW5lIGlmIGMzZCByZWNvcmRlciBpbnN0cnVtZW50YXRpb24gaXMg
ZW5hYmxlZF0pKQorICAgIEFTX0lGKFt0ZXN0ICIkZW5hYmxlX2luc3RydW1lbnRhdGlvbiIgPSAi
YWdlbnQiXSwKKyAgICAgICAgICAgQUNfREVGSU5FKFtFTkFCTEVfQUdFTlRfSU5URVJGQUNFXSwg
WzFdLCBbRGVmaW5lIGlmIHRoZSBhZ2VudC1pbnRlcmZhY2UgaW5zdHJ1bWVudGF0aW9uIGlzIGVu
YWJsZWRdKSkKKyAgICBBTV9DT05ESVRJT05BTChbRU5BQkxFX0MzRF9SRUNPUkRFUl0sW3Rlc3Qg
IiRlbmFibGVfaW5zdHJ1bWVudGF0aW9uIiA9ICJjM2QtcmVjIl0pCisgICAgQU1fQ09ORElUSU9O
QUwoW0VOQUJMRV9BR0VOVF9JTlRFUkZBQ0VdLFt0ZXN0ICIkZW5hYmxlX2luc3RydW1lbnRhdGlv
biIgPSAiYWdlbnQiXSkKIF0pCmRpZmYgLS1naXQgYS9tZXNvbi5idWlsZCBiL21lc29uLmJ1aWxk
CmluZGV4IDY5NDExOWQuLjA2NGM1NmUgMTAwNjQ0Ci0tLSBhL21lc29uLmJ1aWxkCisrKyBiL21l
c29uLmJ1aWxkCkBAIC0zNiw4ICszNiwxMSBAQCBpZiBob3N0X21hY2hpbmUuZW5kaWFuKCkgPT0g
J2JpZycKICAgc3BpY2VfY29tbW9uX2NvbmZpZ19kYXRhLnNldCgnV09SRFNfQklHRU5ESUFOJywg
JzEnKQogZW5kaWYKCi1pZiBnZXRfb3B0aW9uKCdyZWNvcmRlcicpCi0gIHNwaWNlX2NvbW1vbl9j
b25maWdfZGF0YS5zZXQoJ0VOQUJMRV9SRUNPUkRFUicsICcxJykKK2lmIGdldF9vcHRpb24oJ2lu
c3RydW1lbnRhdGlvbicpID09ICdjM2QtcmVjJworICBzcGljZV9jb21tb25fY29uZmlnX2RhdGEu
c2V0KCdFTkFCTEVfQzNEX1JFQ09SREVSJywgJzEnKQorZW5kaWYKK2lmIGdldF9vcHRpb24oJ2lu
c3RydW1lbnRhdGlvbicpID09ICdhZ2VudCcKKyAgc3BpY2VfY29tbW9uX2NvbmZpZ19kYXRhLnNl
dCgnRU5BQkxFX0FHRU5UX0lOVEVSRkFDRScsICcxJykKIGVuZGlmCgogc3BpY2VfY29tbW9uX2dl
bmVyYXRlX2NvZGUgPSBnZXRfb3B0aW9uKCdnZW5lcmF0ZS1jb2RlJykKZGlmZiAtLWdpdCBhL21l
c29uX29wdGlvbnMudHh0IGIvbWVzb25fb3B0aW9ucy50eHQKaW5kZXggYzk4MjczNi4uNTA2NzYw
MCAxMDA2NDQKLS0tIGEvbWVzb25fb3B0aW9ucy50eHQKKysrIGIvbWVzb25fb3B0aW9ucy50eHQK
QEAgLTIxLDExICsyMSwxMSBAQCBvcHRpb24oJ29wdXMnLAogICAgIHlpZWxkIDogdHJ1ZSwKICAg
ICBkZXNjcmlwdGlvbjogJ0VuYWJsZSBPcHVzIGF1ZGlvIGNvZGVjJykKCi1vcHRpb24oJ3JlY29y
ZGVyJywKLSAgICB0eXBlIDogJ2Jvb2xlYW4nLAotICAgIHZhbHVlIDogZmFsc2UsCi0gICAgeWll
bGQgOiB0cnVlLAotICAgIGRlc2NyaXB0aW9uOiAnRW5hYmxlIHJlY29yZGVyIGluc3RydW1lbnRh
dGlvbicpCitvcHRpb24oJ2luc3RydW1lbnRhdGlvbicsCisgICAgdHlwZSA6ICdjb21ibycsCisg
ICAgdmFsdWUgOiAnbm8nLAorICAgIGNob2ljZXMgOiBbJ2MzZC1yZWMnLCAnYWdlbnQnLCAnbm8n
XSwKKyAgICBkZXNjcmlwdGlvbjogJ0VuYWJsZSBpbnN0cnVtZW50YXRpb24nKQoKIG9wdGlvbign
c21hcnRjYXJkJywKICAgICB0eXBlIDogJ2ZlYXR1cmUnLAotLQoyLjIxLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
