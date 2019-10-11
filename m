Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBD8D3CDA
	for <lists+spice-devel@lfdr.de>; Fri, 11 Oct 2019 11:56:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252496EBFF;
	Fri, 11 Oct 2019 09:56:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1F06EBFF
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ACB727BDA5
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:45 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8631860BE1;
 Fri, 11 Oct 2019 09:56:43 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 11 Oct 2019 10:56:27 +0100
Message-Id: <20191011095629.28447-4-fziglio@redhat.com>
In-Reply-To: <20191011095629.28447-1-fziglio@redhat.com>
References: <20191011095629.28447-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Fri, 11 Oct 2019 09:56:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol 3/5] build-sys: Allows spec
 file to build MingW packages
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

QWRkIE1pbmdXIHN1cHBvcnQuIFRoaXMgYWxsb3dzIHRvIGJ1aWxkIE1pbmdXIHBhY2thZ2VzIGVh
c2lseSB3aXRoIGEKCiAgJCBycG1idWlsZCAtdGEgc3BpY2UtcHJvdG9jb2wtWFhYWC50YXIuYnoy
CgpJdCdzIHBvc3NpYmxlIHRvIGRpc2FibGUgTWluZ1cgYnVpbGQgdXNpbmcKCiAgJCBycG1idWls
ZCAtLXdpdGhvdXQgbWluZ3cgLXRhIHNwaWNlLXByb3RvY29sLVhYWFgudGFyLmJ6MgoKVGhpcyBp
cyBiYXNlIG9uIHNvbWUgd29yayBieSBFZHVhcmRvIExpbWEgYWRkaW5nIE1pbmdXIHN1cHBvcnQg
dG8gU1BFQwpmaWxlcy4KUGFydCBvZiBkZXBlbmRlbmNpZXMsIGRlc2NyaXB0aW9uIGFuZCBuYW1l
cyBjYW1lIGZyb20gRmVkb3JhIFNQRUMgZmlsZQpmb3IgbWluZ3ctc3BpY2UtcHJvdG9jb2wgcGFj
a2FnZS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29t
PgotLS0KIHNwaWNlLXByb3RvY29sLnNwZWMuaW4gfCA1MCArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbiBiL3NwaWNlLXByb3RvY29sLnNwZWMu
aW4KaW5kZXggY2MxZmFkYy4uYTZhNTcwZCAxMDA2NDQKLS0tIGEvc3BpY2UtcHJvdG9jb2wuc3Bl
Yy5pbgorKysgYi9zcGljZS1wcm90b2NvbC5zcGVjLmluCkBAIC0xLDMgKzEsMTEgQEAKKyViY29u
ZF93aXRob3V0IG1pbmd3CisKKyVpZiAiJXtfYXJjaH0iID09ICJ4ODZfNjQiICYmICV7d2l0aCBt
aW5nd30KKyVnbG9iYWwgYnVpbGRfbWluZ3cgMQorJWVsc2UKKyVnbG9iYWwgYnVpbGRfbWluZ3cg
MAorJWVuZGlmCisKIE5hbWU6ICAgICAgICAgICBzcGljZS1wcm90b2NvbAogVmVyc2lvbjogICAg
ICAgIEBWRVJTSU9OQAogUmVsZWFzZTogICAgICAgIDElez9kaXN0fQpAQCAtOCwyMSArMTYsNjMg
QEAgTGljZW5zZTogICAgICAgIEJTRCBhbmQgTEdQTHYyKwogVVJMOiAgICAgICAgICAgIGh0dHA6
Ly93d3cuc3BpY2Utc3BhY2Uub3JnLwogU291cmNlMDogICAgICAgIGh0dHA6Ly93d3cuc3BpY2Ut
c3BhY2Uub3JnL2Rvd25sb2FkL3JlbGVhc2VzLyV7bmFtZX0tJXt2ZXJzaW9ufS50YXIuYnoyCiBC
dWlsZEFyY2g6ICAgICAgbm9hcmNoCislaWYgJXtidWlsZF9taW5nd30KK0J1aWxkUmVxdWlyZXM6
ICBtaW5ndzMyLWZpbGVzeXN0ZW0gPj0gOTUKK0J1aWxkUmVxdWlyZXM6ICBtaW5ndzY0LWZpbGVz
eXN0ZW0gPj0gOTUKKyVlbmRpZgogCiAlZGVzY3JpcHRpb24KIEhlYWRlciBmaWxlcyBkZXNjcmli
aW5nIHRoZSBzcGljZSBwcm90b2NvbAogYW5kIHRoZSBwYXJhLXZpcnR1YWwgZ3JhcGhpY3MgY2Fy
ZCBRWEwuCiAKIAorJWlmICV7YnVpbGRfbWluZ3d9CisKKyVkZWZpbmUgbWluZ3dfZmlsZXMoKSBc
CislcGFja2FnZSAtbiAlezF9LXNwaWNlLXByb3RvY29sIFwKK1N1bW1hcnk6ICAgICAgICBTcGlj
ZSBwcm90b2NvbCBoZWFkZXIgZmlsZXMgXAorUmVxdWlyZXM6ICAgICAgIHBrZ2NvbmZpZyBcCitc
CislZGVzY3JpcHRpb24gLW4gJXsxfS1zcGljZS1wcm90b2NvbCBcCitIZWFkZXIgZmlsZXMgZGVz
Y3JpYmluZyB0aGUgc3BpY2UgcHJvdG9jb2wgXAorYW5kIHRoZSBwYXJhLXZpcnR1YWwgZ3JhcGhp
Y3MgY2FyZCBRWEwuIFwKK1wKKyVmaWxlcyAtbiAlezF9LXNwaWNlLXByb3RvY29sIFwKKyVkb2Mg
Q09QWUlORyBDSEFOR0VMT0cubWQgXAorJXtleHBhbmQ6JSV7JXsxfV9pbmNsdWRlZGlyfX0vc3Bp
Y2UtMSBcCisle2V4cGFuZDolJXslezF9X2RhdGFkaXJ9fS9wa2djb25maWcvc3BpY2UtcHJvdG9j
b2wucGMKKworJW1pbmd3X2ZpbGVzIG1pbmd3MzIKKyVtaW5nd19maWxlcyBtaW5ndzY0CisKKyVl
bmRpZgorCisKICVwcmVwCiAlc2V0dXAgLXEKIAogJWJ1aWxkCitjcCAtcmwgLiAuLi9idWlsZF9z
cGljZV9wcm90b2NvbF90bXAKK212IC4uL2J1aWxkX3NwaWNlX3Byb3RvY29sX3RtcCBidWlsZAor
cHVzaGQgYnVpbGQKICVjb25maWd1cmUKIG1ha2UgJXs/X3NtcF9tZmxhZ3N9Citwb3BkCisKKyVp
ZiAle2J1aWxkX21pbmd3fQorJW1pbmd3X2NvbmZpZ3VyZQorJW1pbmd3X21ha2UgJXs/X3NtcF9t
ZmxhZ3N9IFY9MQorJWVuZGlmCisKIAogJWluc3RhbGwKK3B1c2hkIGJ1aWxkCiBtYWtlIERFU1RE
SVI9JXtidWlsZHJvb3R9IGluc3RhbGwKK3BvcGQKKworJWlmICV7YnVpbGRfbWluZ3d9CislbWlu
Z3dfbWFrZSBpbnN0YWxsIERFU1RESVI9JXtidWlsZHJvb3R9CislZW5kaWYKIAogCiAlZmlsZXMK
LS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
