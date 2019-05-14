Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5B41CCEC
	for <lists+spice-devel@lfdr.de>; Tue, 14 May 2019 18:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3DA7892D2;
	Tue, 14 May 2019 16:26:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E48B892B8
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 30120307D8BE
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:07 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AE49D5C553
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:06 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 14 May 2019 16:26:02 +0000
Message-Id: <20190514162602.3529-6-victortoso@redhat.com>
In-Reply-To: <20190514162602.3529-1-victortoso@redhat.com>
References: <20190514162602.3529-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 14 May 2019 16:26:07 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 5/5] CHANGELOG: Prepare for v0.37
 release
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2lnbmVkLW9mZi1ieTogVmlj
dG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBDSEFOR0VMT0cubWQgfCAyOSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9DSEFOR0VMT0cubWQgYi9DSEFOR0VMT0cubWQKaW5kZXggMmQy
YWQzNS4uZWU2ZjE4ZCAxMDA2NDQKLS0tIGEvQ0hBTkdFTE9HLm1kCisrKyBiL0NIQU5HRUxPRy5t
ZApAQCAtMSwzICsxLDMyIEBACit2MC4zNworPT09PT0KKworLSBEZXByZWNhdGVkOiBTcGljZU1h
aW5DaGFubmVsOmNvbG9yLWRlcHRoIGFuZCBTcGljZVNlc3Npb246OmNvbG9yLWRlcHRoIHNlZQor
ICAoW3JoYnojMTU0MzUzOF0gYW5kIFtyaGJ6IzEzNTA4NTNdKS4KKy0gRml4IHJhY2UgY29uZGl0
aW9uIG9uIGtleWJvYXJkIG1vZGlmaWVycworLSBGaXggY3Vyc29yIG9uIFdheWxhbmQ6IEZpeGVz
IGhpZGRlbiBjdXJzb3IgIzgzCistIEZpeCBjbGlwYm9hcmQgb24gWDExOiBhdm9pZCByZXF1ZXN0
IGNsaWVudCBjbGlwYm9hcmQgZGF0YSB3aGVuIGlzIGtub3duIHRoYXQKKyAgdGhlcmUgaXMgbm8g
ZGF0YS4KKy0gSW1wcm92ZSBjb2RlIGFyb3VuZCB1c2IgcmVkaXJlY3Rpb24gZmVhdHVyZQorLSBG
aXggb24gdXNiIHJlZGlyZWN0aW9uOiBEb24ndCBhZGQgc2FtZSBkZXZpY2UgdHdpY2UKKy0gRml4
IG9uIHNtYXJ0Y2FyZDogV2FybiBpZiBtdWx0aXBsZSByZWFkZXJzIGFyZSBkZXRlY3RlZAorLSBB
ZGQgaW5zdHJ1bWVudGF0aW9uIGZvciBmcmFtZSBhbmQgcXVldWUgc3RhdGlzdGljcyBvZiBTcGlj
ZURpc3BsYXkgdXNpbmcKKyAgW1JlY29yZGVyXSBsaWJyYXJ5CistIEZpeCBXYXJuaW5ncyB3aXRo
IEdTdHJlYW1lciA+PSAxLjE0IG9uIHZpZGVvIGRlY29kaW5nIGR1ZSBzZXR0aW5nIGJ1ZmZlcidz
IFBUUworLSBGaXggc29tZSBDcml0aWNhbCB3YXJuaW5ncyB3aGVuIGJ1aWxkIHdpdGhvdXQgR05P
TUUgZGVza3RvcCBpbnRlZ3JhdGlvbgorLSBGaXggQ3JpdGljYWxzIHdoZW4gbm8gcHJpbWFyeSBt
b25pdG9yIGlzIHNldAorLSBEb2N1bWVudGF0aW9uIGZpeGVzCistIEFkZGVkIG9wdGlvbmFsIGRl
cGVuZGVuY3k6IFtSZWNvcmRlcl0KKy0gUmVxdWlyZSBHU3RyZWFtZXIgPj0gMS4xMCAob3B0aW9u
YWwpCistIFJlcXVpcmUgdXNicmVkaXIgPj0gMC43LjEgKG9wdGlvbmFsKQorLSBUcmFuc2xhdGlv
bnM6CisgIC0gQWRkZWQgQ3plY2gKKyAgLSBGaXggSXRhbGlhbgorCitbUmVjb3JkZXJdOiBodHRw
czovL2dpdGh1Yi5jb20vYzNkL3JlY29yZGVyCitbcmhieiMxNTQzNTM4XTogaHR0cHM6Ly9idWd6
aWxsYS5yZWRoYXQuY29tL3Nob3dfYnVnLmNnaT9pZD0xNTQzNTM4CitbcmhieiMxMzUwODUzXTog
aHR0cHM6Ly9idWd6aWxsYS5yZWRoYXQuY29tL3Nob3dfYnVnLmNnaT9pZD0xMzUwODUzCisKIHYw
LjM2CiA9PT09PQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
