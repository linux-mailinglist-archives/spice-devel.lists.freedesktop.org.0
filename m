Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FADB7BD7
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 16:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39CF6F949;
	Thu, 19 Sep 2019 14:11:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE9DF6F8A2
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7C882307D923
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:49 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 044725C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:11:48 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 19 Sep 2019 16:11:32 +0200
Message-Id: <20190919141133.10691-20-victortoso@redhat.com>
In-Reply-To: <20190919141133.10691-1-victortoso@redhat.com>
References: <20190919141133.10691-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 19 Sep 2019 14:11:49 +0000 (UTC)
Subject: [Spice-devel] [PATCH v8 19/20] test-cd-emu: Make sure we can call
 spice_usb_backend_channel_flush_writes
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

RnJvbTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpDdXJyZW50bHkgd2Ug
Y2FsbCB0aGlzIGZ1bmN0aW9uIHdoZW4gdGhlIFNQSUNFIGNoYW5uZWwgaXMgdXAKaG93ZXZlciB0
aGlzIGZ1bmN0aW9uIHNob3VsZCBjb250aW51ZSB0byB3b3JrIGFzIGluIHRoZW9yeQp0aGUgY2hh
bm5lbCBjb3VsZCBhdm9pZCB0byBoYW5kbGUgdGhlIG1lc3NhZ2UgYW5kIHN0b3AgdGhlIGZsb3cK
KGZvciBpbnN0YW5jZSB0byBpbXBsZW1lbnQgc29tZSBraW5kIG9mIGZsb3cgbGltaXRhdGlvbikK
YW5kIHNvIHdpbGwgbmVlZCB0byBjYWxsIHRoaXMgZnVuY3Rpb24gYWdhaW4uClRoaXMgd2FzIGZh
aWxpbmcgaW4gdGhlIGZpcnN0IFVTQiBlbXVsYXRpb24gaW1wbGVtZW50YXRpb24KY2F1c2luZyBh
IGNyYXNoLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Ci0tLQogdGVzdHMvY2QtZW11LmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS90ZXN0cy9jZC1lbXUuYyBiL3Rlc3RzL2NkLWVtdS5jCmlu
ZGV4IGZiMDIzYTkuLjY5MDQyM2IgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NkLWVtdS5jCisrKyBiL3Rl
c3RzL2NkLWVtdS5jCkBAIC0xNjQsNiArMTY0LDEwIEBAIGRldmljZV9pdGVyYXRpb24oY29uc3Qg
aW50IGxvb3AsIGNvbnN0IGJvb2wgYXR0YWNoX29uX2Nvbm5lY3QpCiAgICAgZ19hc3NlcnRfY21w
aW50KGhlbGxvc19zZW50LCA9PSwgaGVsbG9zX2V4cGVjdGVkKTsKICAgICBnX2Fzc2VydF9jbXBp
bnQobWVzc2FnZXNfc2VudCwgPj0sIG1lc3NhZ2VzX2V4cGVjdGVkKTsKIAorICAgIHNwaWNlX3Vz
Yl9iYWNrZW5kX2NoYW5uZWxfZmx1c2hfd3JpdGVzKHVzYl9jaCk7CisgICAgZ19hc3NlcnRfY21w
aW50KGhlbGxvc19zZW50LCA9PSwgaGVsbG9zX2V4cGVjdGVkKTsKKyAgICBnX2Fzc2VydF9jbXBp
bnQobWVzc2FnZXNfc2VudCwgPj0sIG1lc3NhZ2VzX2V4cGVjdGVkKTsKKwogICAgIC8vIHNlbmQg
aGVsbG8gcmVwbHkKICAgICBpZiAobG9vcCA9PSAwKSB7CiAgICAgICAgIERBVEFfU1RBUlQKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
