Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B24A76577A
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 14:59:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E7226E21A;
	Thu, 11 Jul 2019 12:59:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5668F6E21A
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 12:59:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EB0EA30C0DCF
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 12:59:02 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1CB1C1891B;
 Thu, 11 Jul 2019 12:59:01 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 13:58:57 +0100
Message-Id: <20190711125857.17701-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 11 Jul 2019 12:59:02 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] channel-usbredir: Remove leak of
 decompressed buffer
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c3JjL2NoYW5uZWwtdXNicmVkaXIuYyB8IDExICsrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVs
LXVzYnJlZGlyLmMgYi9zcmMvY2hhbm5lbC11c2JyZWRpci5jCmluZGV4IDc2NTM0MTgwLi4wNGFj
ZjBiZCAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtdXNicmVkaXIuYworKysgYi9zcmMvY2hhbm5l
bC11c2JyZWRpci5jCkBAIC03MjQsNiArNzI0LDcgQEAgc3RhdGljIHZvaWQgdXNicmVkaXJfaGFu
ZGxlX21zZyhTcGljZUNoYW5uZWwgKmMsIFNwaWNlTXNnSW4gKmluKQogICAgICAgICBpZiAodHJ5
X2hhbmRsZV9jb21wcmVzc2VkX21zZyhjb21wcmVzc2VkX2RhdGFfbXNnLCAmYnVmLCAmc2l6ZSkp
IHsKICAgICAgICAgICAgIC8qIHVuY29tcHJlc3NlZCBvayovCiAgICAgICAgIH0gZWxzZSB7Cisg
ICAgICAgICAgICBidWYgPSBOVUxMOwogICAgICAgICAgICAgciA9IFVTQl9SRURJUl9FUlJPUl9S
RUFEX1BBUlNFOwogICAgICAgICB9CiAgICAgfSBlbHNlIHsgLyogUmVndWxhciBTUElDRV9NU0df
U1BJQ0VWTUNfREFUQSBtc2cgKi8KQEAgLTczMywxNyArNzM0LDEyIEBAIHN0YXRpYyB2b2lkIHVz
YnJlZGlyX2hhbmRsZV9tc2coU3BpY2VDaGFubmVsICpjLCBTcGljZU1zZ0luICppbikKICAgICBz
cGljZV91c2JyZWRpcl9jaGFubmVsX2xvY2soY2hhbm5lbCk7CiAgICAgaWYgKHIgPT0gMCkKICAg
ICAgICAgciA9IHNwaWNlX3VzYl9iYWNrZW5kX3JlYWRfZ3Vlc3RfZGF0YShwcml2LT5ob3N0LCBi
dWYsIHNpemUpOwotICAgIGlmIChyICE9IDApIHsKKyAgICBpZiAociAhPSAwICYmIHByaXYtPnNw
aWNlX2RldmljZSAhPSBOVUxMKSB7CiAgICAgICAgIFNwaWNlVXNiRGV2aWNlICpzcGljZV9kZXZp
Y2UgPSBwcml2LT5zcGljZV9kZXZpY2U7CiAgICAgICAgIGRldmljZV9lcnJvcl9kYXRhIGVycl9k
YXRhOwogICAgICAgICBnY2hhciAqZGVzYzsKICAgICAgICAgR0Vycm9yICplcnI7CiAKLSAgICAg
ICAgaWYgKHNwaWNlX2RldmljZSA9PSBOVUxMKSB7Ci0gICAgICAgICAgICBzcGljZV91c2JyZWRp
cl9jaGFubmVsX3VubG9jayhjaGFubmVsKTsKLSAgICAgICAgICAgIHJldHVybjsKLSAgICAgICAg
fQotCiAgICAgICAgIGRlc2MgPSBzcGljZV91c2JfZGV2aWNlX2dldF9kZXNjcmlwdGlvbihzcGlj
ZV9kZXZpY2UsIE5VTEwpOwogICAgICAgICBlcnIgPSBzcGljZV91c2JfYmFja2VuZF9nZXRfZXJy
b3JfZGV0YWlscyhyLCBkZXNjKTsKICAgICAgICAgZ19mcmVlKGRlc2MpOwpAQCAtNzY0LDYgKzc2
MCw5IEBAIHN0YXRpYyB2b2lkIHVzYnJlZGlyX2hhbmRsZV9tc2coU3BpY2VDaGFubmVsICpjLCBT
cGljZU1zZ0luICppbikKICAgICB9IGVsc2UgewogICAgICAgICBzcGljZV91c2JyZWRpcl9jaGFu
bmVsX3VubG9jayhjaGFubmVsKTsKICAgICB9CisgICAgaWYgKHNwaWNlX21zZ19pbl90eXBlKGlu
KSA9PSBTUElDRV9NU0dfU1BJQ0VWTUNfQ09NUFJFU1NFRF9EQVRBKSB7CisgICAgICAgIGdfZnJl
ZShidWYpOworICAgIH0KIH0KIAogI2Vsc2UKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
