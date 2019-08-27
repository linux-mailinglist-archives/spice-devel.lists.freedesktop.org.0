Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D37C9F319
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 21:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCF889B51;
	Tue, 27 Aug 2019 19:17:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E89CB89B51
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 19:17:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 467671824C48
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 19:17:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D28360933
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 19:17:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 33DFD24F2F;
 Tue, 27 Aug 2019 19:17:30 +0000 (UTC)
Date: Tue, 27 Aug 2019 15:17:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <340277988.9504989.1566933450049.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190827142733.3130-2-ssheribe@redhat.com>
References: <20190827142733.3130-1-ssheribe@redhat.com>
 <20190827142733.3130-2-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.24]
Thread-Topic: Add copr builds integration
Thread-Index: TEpkijegDwtjlr4bs/j9ChCLNE6aeA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Tue, 27 Aug 2019 19:17:30 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] Add copr builds integration
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

PiAKPiBUaGlzIHdpbGwgbGV0IGNvcHIgdG8gZ2VuZXJhdGUgc3JwbSB1c2luZyB0aGUgLmNvcHIv
TWFrZWZpbGUgc2NyaXB0Cj4gCj4gU2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJp
YmVAcmVkaGF0LmNvbT4KPiAtLS0KPiAgLmNvcHIvTWFrZWZpbGUgfCAyOSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgLmNvcHIvTWFrZWZpbGUKPiAKPiBkaWZmIC0tZ2l0IGEvLmNvcHIv
TWFrZWZpbGUgYi8uY29wci9NYWtlZmlsZQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMC4uZGIyOTdmYgo+IC0tLSAvZGV2L251bGwKPiArKysgYi8uY29wci9NYWtlZmlsZQo+
IEBAIC0wLDAgKzEsMjkgQEAKPiArIyBUaGlzIE1ha2VmaWxlIHNjcmlwdCBpcyBpbnZva2VkIGJ5
IGNvcHIgdG8gYnVpbGQgc291cmNlIHJwbQo+ICsjIFNlZTogaHR0cHM6Ly9kb2NzLnBhZ3VyZS5v
cmcvY29wci5jb3ByL3VzZXJfZG9jdW1lbnRhdGlvbi5odG1sI21ha2Utc3JwbQo+ICsKPiArUFJP
VE9DT0xfR0lUX1JFUE8gPSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uvc3Bp
Y2UtcHJvdG9jb2wKPiArQlVJTEQgPSBtZXNvbiBnY2MgeHogZ2l0IHJwbS1idWlsZAo+ICsKPiAr
c3JwbToKPiArCWRuZiBpbnN0YWxsIC15ICQoQlVJTEQpCj4gKwo+ICsJIyBnZXQgdXBzdHJlYW0g
c3BpY2UgcHJvdG9jb2wKPiArCWdpdCBjbG9uZSAkKFBST1RPQ09MX0dJVF9SRVBPKQo+ICsJY2Qg
c3BpY2UtcHJvdG9jb2wgJiYgbWVzb24gLURwcmVmaXg9L3Vzci8gYnVpbGQgJiYgbmluamEgLUMg
YnVpbGQgaW5zdGFsbAo+ICsJcm0gLXJmIHNwaWNlLXByb3RvY29sCj4gKwo+ICsJIyBnZXQgb3Ro
ZXIgZGVwZW5kZW5jaWVzIGZvciBwcm9qZWN0IGV4Y2x1ZGluZyBzcGljZS1wcm90b2NvbAo+ICsJ
ZG5mIGluc3RhbGwgLXkgYHNlZCAnL15CdWlsZFJlcXVpcmVzOi8hZDsgcy8uKjovLzsgcy9cYnNw
aWNlLXByb3RvY29sXGIvLzsKPiBzLz4uKi8vJyAqLnNwZWMuaW5gCj4gKwo+ICsJIyBkbyBub3Qg
dXNlIGNvbW1pdCBpZCBmb3IgdmVyc2lvbgo+ICsJZ2l0IGZldGNoIC0tdGFncwo+ICsJZ2l0IGRl
c2NyaWJlIC0tYWJicmV2PTAgfCBzZWQgJ3Mvdi8vJyA+IC50YXJiYWxsLXZlcnNpb24KCk1heWJl
IGFkZGluZyBhICItLW1hdGNoPXZcKiIgdG8gZ2l0IGRlc2NyaWJlIHRvIGF2b2lkIG90aGVyIHRh
Z3MgYmVzaWRlIHRoZQpvbmVzIHN0YXJ0aW5nIHdpdGggInYiID8KCj4gKwkjIGNyZWF0ZSBzb3Vy
Y2UgcnBtCj4gKwltZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIGJ1aWxkCj4gKwkjIE1lc29uIGRv
ZXMgbm90IHVwZGF0ZSBzdWJtb2R1bGVzIHJlY3Vyc2l2ZWx5Cj4gKwlnaXQgc3VibW9kdWxlIHVw
ZGF0ZSAtLWluaXQgLS1yZWN1cnNpdmUKPiArCSMgdGhpcyBmaXggYW4gaXNzdWUgd2l0aCBNZXNv
biBkaXN0Cj4gKwlpZiAhIHRlc3QgLXIgLi4vc3BpY2UtY29tbW9uLmdpdDsgdGhlbiBESVI9YGJh
c2VuYW1lICIkJFBXRCJgOyBsbiAtcwo+ICIkJERJUi8uZ2l0L21vZHVsZXMvc3BpY2UtY29tbW9u
IiAuLi9zcGljZS1jb21tb24uZ2l0OyBmaQo+ICsJcm0gLXJmIG1lc29uLWRpc3QKClN1cmUgeW91
IGRvbid0IHdhbnQgYnVpbGQvbWVzb24tZGlzdCBpbnN0ZWFkPwoKPiArCW5pbmphIC1DIGJ1aWxk
IGRpc3QKPiArCXJwbWJ1aWxkIC1icyAuL2J1aWxkLypzcGVjIC0tZGVmaW5lICJfc291cmNlZGly
ICQkUFdEL2J1aWxkL21lc29uLWRpc3QvIgo+IC0tZGVmaW5lICJfc3JjcnBtZGlyICQob3V0ZGly
KSIKCkkgd291bGQgdXNlICouc3BlYywgSSBrbm93ICpzcGVjIHdvcmtzIHRvbywganVzdCBhIGJp
dCBtb3JlIHNwZWNpZmljLgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
