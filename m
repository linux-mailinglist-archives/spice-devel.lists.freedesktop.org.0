Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7489EAF1
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 16:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4A5189C17;
	Tue, 27 Aug 2019 14:27:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E507B89C14
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:27:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 92AC67FDCD
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:27:37 +0000 (UTC)
Received: from localhost.localdomain.com (unknown [10.35.4.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F2BBC60A35
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:27:36 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 17:27:33 +0300
Message-Id: <20190827142733.3130-2-ssheribe@redhat.com>
In-Reply-To: <20190827142733.3130-1-ssheribe@redhat.com>
References: <20190827142733.3130-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 27 Aug 2019 14:27:37 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 2/2] Add copr builds integration
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

VGhpcyB3aWxsIGxldCBjb3ByIHRvIGdlbmVyYXRlIHNycG0gdXNpbmcgdGhlIC5jb3ByL01ha2Vm
aWxlIHNjcmlwdAoKU2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0
LmNvbT4KLS0tCiAuY29wci9NYWtlZmlsZSB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IC5jb3ByL01ha2VmaWxlCgpkaWZmIC0tZ2l0IGEvLmNvcHIvTWFrZWZpbGUgYi8uY29wci9NYWtl
ZmlsZQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi5kYjI5N2ZiCi0tLSAvZGV2
L251bGwKKysrIGIvLmNvcHIvTWFrZWZpbGUKQEAgLTAsMCArMSwyOSBAQAorIyBUaGlzIE1ha2Vm
aWxlIHNjcmlwdCBpcyBpbnZva2VkIGJ5IGNvcHIgdG8gYnVpbGQgc291cmNlIHJwbQorIyBTZWU6
IGh0dHBzOi8vZG9jcy5wYWd1cmUub3JnL2NvcHIuY29wci91c2VyX2RvY3VtZW50YXRpb24uaHRt
bCNtYWtlLXNycG0KKworUFJPVE9DT0xfR0lUX1JFUE8gPSBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvc3BpY2Uvc3BpY2UtcHJvdG9jb2wKK0JVSUxEID0gbWVzb24gZ2NjIHh6IGdpdCBy
cG0tYnVpbGQKKworc3JwbToKKwlkbmYgaW5zdGFsbCAteSAkKEJVSUxEKQorCisJIyBnZXQgdXBz
dHJlYW0gc3BpY2UgcHJvdG9jb2wKKwlnaXQgY2xvbmUgJChQUk9UT0NPTF9HSVRfUkVQTykKKwlj
ZCBzcGljZS1wcm90b2NvbCAmJiBtZXNvbiAtRHByZWZpeD0vdXNyLyBidWlsZCAmJiBuaW5qYSAt
QyBidWlsZCBpbnN0YWxsCisJcm0gLXJmIHNwaWNlLXByb3RvY29sCisKKwkjIGdldCBvdGhlciBk
ZXBlbmRlbmNpZXMgZm9yIHByb2plY3QgZXhjbHVkaW5nIHNwaWNlLXByb3RvY29sCisJZG5mIGlu
c3RhbGwgLXkgYHNlZCAnL15CdWlsZFJlcXVpcmVzOi8hZDsgcy8uKjovLzsgcy9cYnNwaWNlLXBy
b3RvY29sXGIvLzsgcy8+LiovLycgKi5zcGVjLmluYAorCisJIyBkbyBub3QgdXNlIGNvbW1pdCBp
ZCBmb3IgdmVyc2lvbgorCWdpdCBmZXRjaCAtLXRhZ3MKKwlnaXQgZGVzY3JpYmUgLS1hYmJyZXY9
MCB8IHNlZCAncy92Ly8nID4gLnRhcmJhbGwtdmVyc2lvbgorCSMgY3JlYXRlIHNvdXJjZSBycG0K
KwltZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIGJ1aWxkCisJIyBNZXNvbiBkb2VzIG5vdCB1cGRh
dGUgc3VibW9kdWxlcyByZWN1cnNpdmVseQorCWdpdCBzdWJtb2R1bGUgdXBkYXRlIC0taW5pdCAt
LXJlY3Vyc2l2ZQorCSMgdGhpcyBmaXggYW4gaXNzdWUgd2l0aCBNZXNvbiBkaXN0CisJaWYgISB0
ZXN0IC1yIC4uL3NwaWNlLWNvbW1vbi5naXQ7IHRoZW4gRElSPWBiYXNlbmFtZSAiJCRQV0QiYDsg
bG4gLXMgIiQkRElSLy5naXQvbW9kdWxlcy9zcGljZS1jb21tb24iIC4uL3NwaWNlLWNvbW1vbi5n
aXQ7IGZpCisJcm0gLXJmIG1lc29uLWRpc3QKKwluaW5qYSAtQyBidWlsZCBkaXN0CisJcnBtYnVp
bGQgLWJzIC4vYnVpbGQvKnNwZWMgLS1kZWZpbmUgIl9zb3VyY2VkaXIgJCRQV0QvYnVpbGQvbWVz
b24tZGlzdC8iIC0tZGVmaW5lICJfc3JjcnBtZGlyICQob3V0ZGlyKSIKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
