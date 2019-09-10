Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B71BAE6BB
	for <lists+spice-devel@lfdr.de>; Tue, 10 Sep 2019 11:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F9816E859;
	Tue, 10 Sep 2019 09:21:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944156E859
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:21:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0C46D309BF02
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:21:39 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C9AB45D9D6;
 Tue, 10 Sep 2019 09:21:37 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 10 Sep 2019 10:21:34 +0100
Message-Id: <20190910092134.19105-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 10 Sep 2019 09:21:39 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] spicy: Do not call gst_init directly
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

R1N0cmVhbWVyIGlzIGFscmVhZHkgaW5pdGlhbGl6ZWQgdXNpbmcgZ3N0X2luaXRfZ2V0X29wdGlv
bl9ncm91cCBhbmQKZ3N0X2luaXRfZ2V0X29wdGlvbl9ncm91cC4KCkZyb20gZ3N0X2luaXQgZG9j
dW1lbnRhdGlvbjoKICAgV0FSTklORzogVGhpcyBmdW5jdGlvbiBkb2VzIG5vdCB3b3JrIGluIHRo
ZSBzYW1lIHdheSBhcwogICBjb3JyZXNwb25kaW5nIGZ1bmN0aW9ucyBpbiBvdGhlciBnbGliLXN0
eWxlIGxpYnJhcmllcywKICAgc3VjaCBhcyBndGtfaW5pdCgpLiBJbiBwYXJ0aWN1bGFyLCB1bmtu
b3duIGNvbW1hbmQgbGluZSBvcHRpb25zCiAgIGNhdXNlIHRoaXMgZnVuY3Rpb24gdG8gYWJvcnQg
cHJvZ3JhbSBleGVjdXRpb24uCgpUaGlzIGx1Y2tpbHkgaXMgbm90IHRydWUgKHByb2dyYW0gd29u
J3QgYWJvcnQgaWYgeW91IHBhc3MgLS1nc3QtZm9vCmZvciBpbnN0YW5jZSkgYnV0IGJldHRlciB0
byBzdGljayB0byBkb2N1bWVudGF0aW9uLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogdG9vbHMvc3BpY3kuYyB8IDEgLQogMSBmaWxlIGNo
YW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90b29scy9zcGljeS5jIGIvdG9vbHMv
c3BpY3kuYwppbmRleCA0MDNhNjZkMS4uOGNhNjJmOTEgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3NwaWN5
LmMKKysrIGIvdG9vbHMvc3BpY3kuYwpAQCAtMjAxNyw3ICsyMDE3LDYgQEAgaW50IG1haW4oaW50
IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKIAogICAgIC8qIHBhcnNlIG9wdHMgKi8KICAgICBndGtfaW5p
dCgmYXJnYywgJmFyZ3YpOwotICAgIGdzdF9pbml0KCZhcmdjLCAmYXJndik7CiAgICAgY29udGV4
dCA9IGdfb3B0aW9uX2NvbnRleHRfbmV3KCItIHNwaWNlIGNsaWVudCB0ZXN0IGFwcGxpY2F0aW9u
Iik7CiAgICAgZ19vcHRpb25fY29udGV4dF9zZXRfc3VtbWFyeShjb250ZXh0LCAiR3RrKyB0ZXN0
IGNsaWVudCB0byBjb25uZWN0IHRvIFNwaWNlIHNlcnZlcnMuIik7CiAgICAgZ19vcHRpb25fY29u
dGV4dF9zZXRfZGVzY3JpcHRpb24oY29udGV4dCwgIlJlcG9ydCBidWdzIHRvICIgUEFDS0FHRV9C
VUdSRVBPUlQgIi4iKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
