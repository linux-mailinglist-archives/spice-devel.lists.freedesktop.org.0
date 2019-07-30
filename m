Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C087A779
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9AC6E4CA;
	Tue, 30 Jul 2019 12:03:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 001BB6E4C7
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9E2133003A49;
 Tue, 30 Jul 2019 12:03:55 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A21015D6A7;
 Tue, 30 Jul 2019 12:03:54 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:01 +0100
Message-Id: <20190730120331.17967-13-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 30 Jul 2019 12:03:55 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 12/44] usb-redir: device error
 signal without device object
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

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKQWRk
IGFiaWxpdHkgdG8gaW5kaWNhdGUgZXJyb3IgdG8gZXh0ZXJuYWwgbW9kdWxlcyB2aWEKJ2Rldmlj
ZSBlcnJvcicgc2lnbmFsIHdoZW4gcmVhbCBTcGljZVVzYkRldmljZSBpcyBub3QgcGFzc2VkLgpU
aGlzIGlzIG5lZWRlZCB0byBpbmRpY2F0ZSBlcnJvciBkdXJpbmcgY3JlYXRpb24gb2YgZW11bGF0
ZWQKZGV2aWNlLCB3aGVuIHRoZSBkZXZpY2UgaXMgbm90IGNyZWF0ZWQgeWV0LiBGb3IgdGhhdCB3
ZQphbGxvY2F0ZSB0ZW1wb3JhcnkgU3BpY2VVc2JEZXZpY2Ugc3RydWN0dXJlIHdpdGggYmFja2Vu
ZApkZXZpY2UgZmllbGRzIHNldCB0byBOVUxMIGFuZCB1c2UgaXQgZm9yIGluZGljYXRpb24uIERl
dmljZQpkZXNjcmlwdGlvbiBmb3Igc3VjaCBkZXZpY2Ugd2lsbCBiZSAnVVNCIFJlZGlyZWN0aW9u
Jy4KVW5yZWZlcmVuY2luZyBvZiBzdWNoIGRldmljZSB3aWxsIGJlICdubyBvcGVyYXRpb24nLgoK
U2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXgu
Y29tPgotLS0KIHNyYy91c2ItYmFja2VuZC5jICAgICAgICB8ICAzICsrKwogc3JjL3VzYi1kZXZp
Y2UtbWFuYWdlci5jIHwgMTQgKysrKysrKysrKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQu
YyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IGE2YzdiMTk5Li45YWRmZDEyNSAxMDA2NDQKLS0t
IGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTUzOCw2ICs1
MzgsOSBAQCBTcGljZVVzYkJhY2tlbmREZXZpY2UgKnNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9y
ZWYoU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCiAKIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRf
ZGV2aWNlX3VucmVmKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KQogeworICAgIGlmICghZGV2
KSB7CisgICAgICAgIHJldHVybjsKKyAgICB9CiAgICAgTE9VRF9ERUJVRygiJXMgPj4gJXAoJWQp
IiwgX19GVU5DVElPTl9fLCBkZXYsIGRldi0+cmVmX2NvdW50KTsKICAgICBpZiAoZ19hdG9taWNf
aW50X2RlY19hbmRfdGVzdCgmZGV2LT5yZWZfY291bnQpKSB7CiAgICAgICAgIGlmIChkZXYtPmxp
YnVzYl9kZXZpY2UpIHsKZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyBiL3Ny
Yy91c2ItZGV2aWNlLW1hbmFnZXIuYwppbmRleCA3NDNkYjliNy4uODY3MzM0NjYgMTAwNjQ0Ci0t
LSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYworKysgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2Vy
LmMKQEAgLTkzNCwxMCArOTM0LDE2IEBAIHN0YXRpYyB2b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFu
YWdlcl9jaGVja19yZWRpcl9vbl9jb25uZWN0KAogdm9pZCBzcGljZV91c2JfZGV2aWNlX21hbmFn
ZXJfZGV2aWNlX2Vycm9yKAogICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqc2VsZiwgU3BpY2VV
c2JEZXZpY2UgKmRldmljZSwgR0Vycm9yICplcnIpCiB7CisgICAgU3BpY2VVc2JEZXZpY2UgKmRl
diA9IGRldmljZTsKICAgICBnX3JldHVybl9pZl9mYWlsKFNQSUNFX0lTX1VTQl9ERVZJQ0VfTUFO
QUdFUihzZWxmKSk7Ci0gICAgZ19yZXR1cm5faWZfZmFpbChkZXZpY2UgIT0gTlVMTCk7Ci0KKyAg
ICBpZiAoZGV2aWNlID09IE5VTEwpIHsKKyAgICAgICAgZGV2ID0gZ19uZXcwKFNwaWNlVXNiRGV2
aWNlLCAxKTsKKyAgICAgICAgZGV2LT5yZWYgPSAxOworICAgIH0KICAgICBnX3NpZ25hbF9lbWl0
KHNlbGYsIHNpZ25hbHNbREVWSUNFX0VSUk9SXSwgMCwgZGV2aWNlLCBlcnIpOworICAgIGlmIChk
ZXZpY2UgPT0gTlVMTCkgeworICAgICAgICBzcGljZV91c2JfZGV2aWNlX3VucmVmKGRldik7Cisg
ICAgfQogfQogI2VuZGlmCiAKQEAgLTE0MzYsNiArMTQ0MiwxMCBAQCBnY2hhciAqc3BpY2VfdXNi
X2RldmljZV9nZXRfZGVzY3JpcHRpb24oU3BpY2VVc2JEZXZpY2UgKmRldmljZSwgY29uc3QgZ2No
YXIgKmZvcgogI2lmZGVmIFVTRV9VU0JSRURJUgogICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGRl
dmljZSAhPSBOVUxMLCBOVUxMKTsKIAorICAgIGlmICghZGV2aWNlLT5iZGV2KSB7CisgICAgICAg
IHJldHVybiBnX3N0cmR1cChfKCJVU0IgcmVkaXJlY3Rpb24iKSk7CisgICAgfQorCiAgICAgcmV0
dXJuIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9nZXRfZGVzY3JpcHRpb24oZGV2aWNlLT5iZGV2
LCBmb3JtYXQpOwogI2Vsc2UKICAgICByZXR1cm4gTlVMTDsKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
