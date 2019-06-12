Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D8F41BCF
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D3189258;
	Wed, 12 Jun 2019 05:56:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0655F89258
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 852333082B67
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CB6739B9
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:44 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 74B0454D3C
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:44 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:56:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1834546859.22408161.1560319004436.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-7-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-7-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: cache-item: Remove only written fields
Thread-Index: eY4Lu7xnZl3GGjt3/jwh9K1JRLBxgg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 12 Jun 2019 05:56:44 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 07/13] cache-item: Remove
 only written fields
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

cGluZwoKPiAKPiBjdXJzb3JfY2FjaGVfaXRlbXMgYW5kIHBhbGV0dGVfY2FjaGVfaXRlbXMgd2hl
cmUgb25seSB3cml0dGVuCj4gYnV0IG5ldmVyIHVzZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJl
ZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNlcnZlci9jYWNoZS1p
dGVtLnRtcGwuYyAgICAgICB8IDMgLS0tCj4gIHNlcnZlci9jdXJzb3ItY2hhbm5lbC1jbGllbnQu
YyB8IDEgLQo+ICBzZXJ2ZXIvZGNjLXByaXZhdGUuaCAgICAgICAgICAgfCAxIC0KPiAgMyBmaWxl
cyBjaGFuZ2VkLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2FjaGUt
aXRlbS50bXBsLmMgYi9zZXJ2ZXIvY2FjaGUtaXRlbS50bXBsLmMKPiBpbmRleCBmMTE5YTllZTQu
LjY5NjhkMjBkYiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvY2FjaGUtaXRlbS50bXBsLmMKPiArKysg
Yi9zZXJ2ZXIvY2FjaGUtaXRlbS50bXBsLmMKPiBAQCAtNzIsNyArNzIsNiBAQCBzdGF0aWMgdm9p
ZCBGVU5DX05BTUUocmVtb3ZlKShDSEFOTkVMQ0xJRU5UCj4gKmNoYW5uZWxfY2xpZW50LCBSZWRD
YWNoZUl0ZW0gKml0ZW0pCj4gICAgICAgICAgbm93ID0gJigqbm93KS0+dS5jYWNoZV9kYXRhLm5l
eHQ7Cj4gICAgICB9Cj4gICAgICByaW5nX3JlbW92ZSgmaXRlbS0+dS5jYWNoZV9kYXRhLmxydV9s
aW5rKTsKPiAtICAgIGNoYW5uZWxfY2xpZW50LT5wcml2LT5WQVJfTkFNRShpdGVtcyktLTsKPiAg
ICAgIGNoYW5uZWxfY2xpZW50LT5wcml2LT5WQVJfTkFNRShhdmFpbGFibGUpICs9IGl0ZW0tPnUu
Y2FjaGVfZGF0YS5zaXplOwo+ICAKPiAgICAgIHJlZF9waXBlX2l0ZW1faW5pdCgmaXRlbS0+dS5w
aXBlX2RhdGEsIFJFRF9QSVBFX0lURU1fVFlQRV9JTlZBTF9PTkUpOwo+IEBAIC05Nyw3ICs5Niw2
IEBAIHN0YXRpYyBpbnQgRlVOQ19OQU1FKGFkZCkoQ0hBTk5FTENMSUVOVCAqY2hhbm5lbF9jbGll
bnQsCj4gdWludDY0X3QgaWQsIHNpemVfdCBzaXoKPiAgICAgICAgICB9Cj4gICAgICAgICAgRlVO
Q19OQU1FKHJlbW92ZSkoY2hhbm5lbF9jbGllbnQsIHRhaWwpOwo+ICAgICAgfQo+IC0gICAgKytj
aGFubmVsX2NsaWVudC0+cHJpdi0+VkFSX05BTUUoaXRlbXMpOwo+ICAgICAgaXRlbS0+dS5jYWNo
ZV9kYXRhLm5leHQgPSBjaGFubmVsX2NsaWVudC0+cHJpdi0+Q0FDSEVfTkFNRVsoa2V5ID0KPiAg
ICAgIENBQ0hFX0hBU0hfS0VZKGlkKSldOwo+ICAgICAgY2hhbm5lbF9jbGllbnQtPnByaXYtPkNB
Q0hFX05BTUVba2V5XSA9IGl0ZW07Cj4gICAgICByaW5nX2l0ZW1faW5pdCgmaXRlbS0+dS5jYWNo
ZV9kYXRhLmxydV9saW5rKTsKPiBAQCAtMTIwLDcgKzExOCw2IEBAIHN0YXRpYyB2b2lkIEZVTkNf
TkFNRShyZXNldCkoQ0hBTk5FTENMSUVOVAo+ICpjaGFubmVsX2NsaWVudCwgbG9uZyBzaXplKQo+
ICAgICAgfQo+ICAgICAgcmluZ19pbml0KCZjaGFubmVsX2NsaWVudC0+cHJpdi0+VkFSX05BTUUo
bHJ1KSk7Cj4gICAgICBjaGFubmVsX2NsaWVudC0+cHJpdi0+VkFSX05BTUUoYXZhaWxhYmxlKSA9
IHNpemU7Cj4gLSAgICBjaGFubmVsX2NsaWVudC0+cHJpdi0+VkFSX05BTUUoaXRlbXMpID0gMDsK
PiAgfQo+ICAKPiAgCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9jdXJzb3ItY2hhbm5lbC1jbGllbnQu
YyBiL3NlcnZlci9jdXJzb3ItY2hhbm5lbC1jbGllbnQuYwo+IGluZGV4IGZlYzI2YzA5Ny4uYTE1
Zjc4Y2VlIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9jdXJzb3ItY2hhbm5lbC1jbGllbnQuYwo+ICsr
KyBiL3NlcnZlci9jdXJzb3ItY2hhbm5lbC1jbGllbnQuYwo+IEBAIC0zOCw3ICszOCw2IEBAIHN0
cnVjdCBDdXJzb3JDaGFubmVsQ2xpZW50UHJpdmF0ZQo+ICAgICAgUmVkQ2FjaGVJdGVtICpjdXJz
b3JfY2FjaGVbQ1VSU09SX0NBQ0hFX0hBU0hfU0laRV07Cj4gICAgICBSaW5nIGN1cnNvcl9jYWNo
ZV9scnU7Cj4gICAgICBsb25nIGN1cnNvcl9jYWNoZV9hdmFpbGFibGU7Cj4gLSAgICB1aW50MzJf
dCBjdXJzb3JfY2FjaGVfaXRlbXM7Cj4gIH07Cj4gIAo+ICBHX0RFRklORV9UWVBFX1dJVEhfUFJJ
VkFURShDdXJzb3JDaGFubmVsQ2xpZW50LCBjdXJzb3JfY2hhbm5lbF9jbGllbnQsCj4gZGlmZiAt
LWdpdCBhL3NlcnZlci9kY2MtcHJpdmF0ZS5oIGIvc2VydmVyL2RjYy1wcml2YXRlLmgKPiBpbmRl
eCA4NDhkNDI3MDIuLjBjOGVmYzRiNiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvZGNjLXByaXZhdGUu
aAo+ICsrKyBiL3NlcnZlci9kY2MtcHJpdmF0ZS5oCj4gQEAgLTQ0LDcgKzQ0LDYgQEAgc3RydWN0
IERpc3BsYXlDaGFubmVsQ2xpZW50UHJpdmF0ZQo+ICAgICAgUmVkQ2FjaGVJdGVtICpwYWxldHRl
X2NhY2hlW1BBTEVUVEVfQ0FDSEVfSEFTSF9TSVpFXTsKPiAgICAgIFJpbmcgcGFsZXR0ZV9jYWNo
ZV9scnU7Cj4gICAgICBsb25nIHBhbGV0dGVfY2FjaGVfYXZhaWxhYmxlOwo+IC0gICAgdWludDMy
X3QgcGFsZXR0ZV9jYWNoZV9pdGVtczsKPiAgCj4gICAgICBzdHJ1Y3Qgewo+ICAgICAgICAgIEZy
ZWVMaXN0IGZyZWVfbGlzdDsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
