Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B35F82F18
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 11:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D9C89A32;
	Tue,  6 Aug 2019 09:54:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C425589A32
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 09:54:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 65FE43082E57
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 09:54:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B9865D6D0
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 09:54:14 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5394D1800203;
 Tue,  6 Aug 2019 09:54:14 +0000 (UTC)
Date: Tue, 6 Aug 2019 05:54:14 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1580668425.4846670.1565085254157.JavaMail.zimbra@redhat.com>
In-Reply-To: <4b49dcd5-2ee9-8292-da67-59c2a76740bb@redhat.com>
References: <20190227112651.1470-1-ssheribe@redhat.com>
 <4b49dcd5-2ee9-8292-da67-59c2a76740bb@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.23]
Thread-Topic: Add copr Makefile
Thread-Index: IeM5nfyq4gFMf2OsrZbo6R8j0bls8w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 06 Aug 2019 09:54:14 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 spice-streaming-agent] Add copr Makefile
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QWNrZWQKCj4gCj4gcGluZwo+IAo+IAo+IE9uIDIvMjcvMTkgMToyNiBQTSwgU25pciBTaGVyaWJl
ciB3cm90ZToKPiA+IFRoaXMgTWFrZWZpbGUgc2NyaXB0IGlzIGludm9rZWQgYnkgY29wciB0byBi
dWlsZCBzb3VyY2UgcnBtCj4gPiBTZWU6IGh0dHBzOi8vZG9jcy5wYWd1cmUub3JnL2NvcHIuY29w
ci91c2VyX2RvY3VtZW50YXRpb24uaHRtbCNtYWtlLXNycG0KPiA+IC0tLQo+ID4KPiA+IENoYW5n
ZXMgZnJvbSB2MSBhcmUgc2NyaXB0IGltcHJvdmVtZW50cyBhbmQgZGVzY3JpcHRpb24KPiA+Cj4g
PiAtLS0KPiA+ICAgLmNvcHIvTWFrZWZpbGUgfCAyMSArKysrKysrKysrKysrKysrKysrKysKPiA+
ICAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPiA+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IC5jb3ByL01ha2VmaWxlCj4gPgo+ID4gZGlmZiAtLWdpdCBhLy5jb3ByL01ha2VmaWxlIGIv
LmNvcHIvTWFrZWZpbGUKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAw
Li4wYWUzYmVkCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi8uY29wci9NYWtlZmlsZQo+ID4g
QEAgLTAsMCArMSwyMSBAQAo+ID4gKyMgVGhpcyBNYWtlZmlsZSBzY3JpcHQgaXMgaW52b2tlZCBi
eSBjb3ByIHRvIGJ1aWxkIHNvdXJjZSBycG0KPiA+ICsjIFNlZTogaHR0cHM6Ly9kb2NzLnBhZ3Vy
ZS5vcmcvY29wci5jb3ByL3VzZXJfZG9jdW1lbnRhdGlvbi5odG1sI21ha2Utc3JwbQo+ID4gKwo+
ID4gK1BST1RPQ09MX0dJVF9SRVBPID0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3Nw
aWNlL3NwaWNlLXByb3RvY29sCj4gPiArQlVJTEQgPSBtYWtlIGF1dG9tYWtlIGF1dG9jb25mIGF1
dG9jb25mLWFyY2hpdmUgbGlidG9vbCB4eiBnaXQgcnBtLWJ1aWxkCj4gPiArCj4gPiArc3JwbToK
PiA+ICsJZG5mIGluc3RhbGwgLXkgJChCVUlMRCkKPiA+ICsKPiA+ICsJIyBnZXQgdXBzdHJlYW0g
c3BpY2UgcHJvdG9jb2wKPiA+ICsJZ2l0IGNsb25lICQoUFJPVE9DT0xfR0lUX1JFUE8pCj4gPiAr
CWNkIHNwaWNlLXByb3RvY29sICYmIC4vYXV0b2dlbi5zaCAtLXByZWZpeD0vdXNyLyAmJiBtYWtl
IGluc3RhbGwKPiA+ICsKPiA+ICsJIyBnZXQgb3RoZXIgZGVwZW5kZW5jaWVzIGZvciBwcm9qZWN0
IGV4Y2x1ZGluZyBzcGljZS1wcm90b2NvbAo+ID4gKwlkbmYgaW5zdGFsbCAteSBgc2VkICcvXkJ1
aWxkUmVxdWlyZXM6LyFkOyBzLy4qOi8vOwo+ID4gcy9cYnNwaWNlLXByb3RvY29sXGIvLzsgcy8+
LiovLycgKi5zcGVjLmluYAo+ID4gKwo+ID4gKwkjIGNyZWF0ZSBzb3VyY2UgcnBtCj4gPiArCS4v
YXV0b2dlbi5zaAo+ID4gKwlzZWQgLWkgLUUgInMvKF5SZWxlYXNlOltbOnNwYWNlOl1dKikoW14l
XSopL1wxYGRhdGUKPiA+ICsnJVklbSVkJUglTS5zcGljZS5uaWd0aGx5J2AvIiAqLnNwZWMKPiA+
ICsJbWFrZSBkaXN0Cj4gPiArCXJwbWJ1aWxkIC1icyAqLnNwZWMgLS1kZWZpbmUgIl9zb3VyY2Vk
aXIgJCRQV0QiIC0tZGVmaW5lICJfc3JjcnBtZGlyCj4gPiAkKG91dGRpcikiCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
