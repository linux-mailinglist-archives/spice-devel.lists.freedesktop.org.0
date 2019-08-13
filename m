Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF81E8BF0E
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 18:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A7ED6E1CD;
	Tue, 13 Aug 2019 16:56:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3426E1CD
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:56:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8961230D1948
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:56:24 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 17A511000329;
 Tue, 13 Aug 2019 16:56:22 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 13 Aug 2019 17:56:08 +0100
Message-Id: <20190813165608.32249-4-fziglio@redhat.com>
In-Reply-To: <20190813165608.32249-1-fziglio@redhat.com>
References: <20190813165608.32249-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 13 Aug 2019 16:56:24 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common 4/4] codegen: Check validity of
 array members
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

Q2hlY2sgdGhhdCBjb21iaW5hdGlvbiBvZiBmaWVsZHMgZm9yIGFuIGFycmF5IGRvZXMgbm90Cmxl
YWQgdG8gdW5zYWZlIGNvZGUuCmNoZWNrX3ZhbGlkIG1ldGhvZCBjYW1lIGZyb20gZ2VuZXJhdGVf
Y19kZWNsYXJhdGlvbiB3aXRoCnNvbWUgbW9yZSBjaGVjayBhbmQgaXQncyB1c2UgaW4gZGVtYXJz
aGFsbGVyIHRvIHZhbGlkYXRlCnRoZSBhcnJheSBpZiB0aGUgc3RydWN0dXJlIGlzIG5vdCBnZW5l
cmF0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KLS0tCiBweXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkgfCAgMiArKwogcHl0aG9uX21vZHVs
ZXMvcHR5cGVzLnB5ICAgIHwgMTggKysrKysrKysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9weXRob25fbW9k
dWxlcy9kZW1hcnNoYWwucHkgYi9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkKaW5kZXggYWNk
NGI2Zi4uMzczNjk3NiAxMDA2NDQKLS0tIGEvcHl0aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5Cisr
KyBiL3B5dGhvbl9tb2R1bGVzL2RlbWFyc2hhbC5weQpAQCAtMzE1LDYgKzMxNSw4IEBAIGRlZiB3
cml0ZV92YWxpZGF0ZV9wb2ludGVyX2l0ZW0od3JpdGVyLCBjb250YWluZXIsIGl0ZW0sIHNjb3Bl
LCBwYXJlbnRfc2NvcGUsIHN0CiBkZWYgd3JpdGVfdmFsaWRhdGVfYXJyYXlfaXRlbSh3cml0ZXIs
IGNvbnRhaW5lciwgaXRlbSwgc2NvcGUsIHBhcmVudF9zY29wZSwgc3RhcnQsCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB3YW50X253X3NpemUsIHdhbnRfbWVtX3NpemUsIHdhbnRfZXh0
cmFfc2l6ZSk6CiAgICAgYXJyYXkgPSBpdGVtLnR5cGUKKyAgICBpZiBpdGVtLm1lbWJlcjoKKyAg
ICAgICAgYXJyYXkuY2hlY2tfdmFsaWQoaXRlbS5tZW1iZXIpCiAgICAgaXNfYnl0ZV9zaXplID0g
RmFsc2UKICAgICBlbGVtZW50X3R5cGUgPSBhcnJheS5lbGVtZW50X3R5cGUKICAgICBpZiBhcnJh
eS5pc19ieXRlc19sZW5ndGgoKToKZGlmZiAtLWdpdCBhL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5w
eSBiL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weQppbmRleCAzMTFjZTNkLi43YTIzYmNhIDEwMDY0
NAotLS0gYS9weXRob25fbW9kdWxlcy9wdHlwZXMucHkKKysrIGIvcHl0aG9uX21vZHVsZXMvcHR5
cGVzLnB5CkBAIC00ODUsNyArNDg1LDIzIEBAIGNsYXNzIEFycmF5VHlwZShUeXBlKToKICAgICBk
ZWYgY190eXBlKHNlbGYpOgogICAgICAgICByZXR1cm4gc2VsZi5lbGVtZW50X3R5cGUuY190eXBl
KCkKIAorICAgIGRlZiBjaGVja192YWxpZChzZWxmLCBtZW1iZXIpOgorICAgICAgICBpZiBtZW1i
ZXIuaGFzX2F0dHIoImNodW5rIikgb3IgbWVtYmVyLmhhc19hdHRyKCJhc19wdHIiKToKKyAgICAg
ICAgICAgIHJldHVybgorICAgICAgICBpZiBtZW1iZXIuaGFzX2F0dHIoInRvX3B0ciIpIG9yIG1l
bWJlci5oYXNfYXR0cigicHRyX2FycmF5Iik6CisgICAgICAgICAgICBpZiBub3QgKHNlbGYuaXNf
aWRlbnRpZmllcl9sZW5ndGgoKSBvciBzZWxmLmlzX2NvbnN0YW50X2xlbmd0aCgpKToKKyAgICAg
ICAgICAgICAgICByYWlzZSBFeGNlcHRpb24oIlVuc2VjdXJlLCBubyBsZW5ndGggb2YgYXJyYXki
KQorICAgICAgICAgICAgcmV0dXJuCisgICAgICAgIGlmIG1lbWJlci5oYXNfZW5kX2F0dHIoKToK
KyAgICAgICAgICAgIHJldHVybgorICAgICAgICBpZiBzZWxmLmlzX3JlbWFpbmluZ19sZW5ndGgo
KToKKyAgICAgICAgICAgIHJhaXNlIEV4Y2VwdGlvbignQyBvdXRwdXQgYXJyYXkgaXMgbm90IGFs
bG9jYXRlZCcpCisgICAgICAgIGlmIHNlbGYuaXNfY29uc3RhbnRfbGVuZ3RoKCkgb3Igc2VsZi5p
c19pZGVudGlmaWVyX2xlbmd0aCgpOgorICAgICAgICAgICAgcmV0dXJuCisgICAgICAgIHJhaXNl
IE5vdEltcGxlbWVudGVkRXJyb3IoJ3Vua25vd24gYXJyYXkgJXMnICUgc3RyKHNlbGYpKQorCiAg
ICAgZGVmIGdlbmVyYXRlX2NfZGVjbGFyYXRpb24oc2VsZiwgd3JpdGVyLCBtZW1iZXIpOgorICAg
ICAgICBzZWxmLmNoZWNrX3ZhbGlkKG1lbWJlcikKICAgICAgICAgbmFtZSA9IG1lbWJlci5uYW1l
CiAgICAgICAgIGlmIG1lbWJlci5oYXNfYXR0cigiY2h1bmsiKToKICAgICAgICAgICAgIHJldHVy
biB3cml0ZXIud3JpdGVsbignU3BpY2VDaHVua3MgKiVzOycgJSBuYW1lKQpAQCAtNDk3LDcgKzUx
Myw3IEBAIGNsYXNzIEFycmF5VHlwZShUeXBlKToKICAgICAgICAgICAgIHJldHVybiB3cml0ZXIu
d3JpdGVsbignJXMgKiVzOycgJSAoc2VsZi5jX3R5cGUoKSwgbmFtZSkpCiAgICAgICAgIGlmIG1l
bWJlci5oYXNfYXR0cigicHRyX2FycmF5Iik6CiAgICAgICAgICAgICByZXR1cm4gd3JpdGVyLndy
aXRlbG4oJyVzIColc1swXTsnICUgKHNlbGYuY190eXBlKCksIG5hbWUpKQotICAgICAgICBpZiBt
ZW1iZXIuaGFzX2VuZF9hdHRyKCkgb3Igc2VsZi5pc19yZW1haW5pbmdfbGVuZ3RoKCk6CisgICAg
ICAgIGlmIG1lbWJlci5oYXNfZW5kX2F0dHIoKToKICAgICAgICAgICAgIHJldHVybiB3cml0ZXIu
d3JpdGVsbignJXMgJXNbMF07JyAlIChzZWxmLmNfdHlwZSgpLCBuYW1lKSkKICAgICAgICAgaWYg
c2VsZi5pc19jb25zdGFudF9sZW5ndGgoKToKICAgICAgICAgICAgIHJldHVybiB3cml0ZXIud3Jp
dGVsbignJXMgJXNbJXNdOycgJSAoc2VsZi5jX3R5cGUoKSwgbmFtZSwgc2VsZi5zaXplKSkKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
