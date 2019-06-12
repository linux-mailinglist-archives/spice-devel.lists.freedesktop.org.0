Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AFE41BCB
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EAAD89257;
	Wed, 12 Jun 2019 05:56:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC7189255
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CA241308FC4B
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C24E31712D
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:28 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B95E91806B0E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:28 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:56:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <2046194772.22408158.1560318988716.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-8-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-8-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: cache-item: Remove unused define
Thread-Index: iNwsnDnuwQmspe9CJSBim7jGt3sCCQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 12 Jun 2019 05:56:28 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 08/13] cache-item: Remove
 unused define
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

cGluZwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0
LmNvbT4KPiAtLS0KPiAgc2VydmVyL2NhY2hlLWl0ZW0udG1wbC5jIHwgMyAtLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9jYWNoZS1p
dGVtLnRtcGwuYyBiL3NlcnZlci9jYWNoZS1pdGVtLnRtcGwuYwo+IGluZGV4IDY5NjhkMjBkYi4u
Zjk0MThmOTkwIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9jYWNoZS1pdGVtLnRtcGwuYwo+ICsrKyBi
L3NlcnZlci9jYWNoZS1pdGVtLnRtcGwuYwo+IEBAIC0yNCw3ICsyNCw2IEBACj4gICNkZWZpbmUg
Q0FDSEVfSEFTSF9TSVpFIENVUlNPUl9DQUNIRV9IQVNIX1NJWkUKPiAgI2RlZmluZSBGVU5DX05B
TUUobmFtZSkgcmVkX2N1cnNvcl9jYWNoZV8jI25hbWUKPiAgI2RlZmluZSBWQVJfTkFNRShuYW1l
KSBjdXJzb3JfY2FjaGVfIyNuYW1lCj4gLSNkZWZpbmUgQ0hBTk5FTCBDdXJzb3JDaGFubmVsCj4g
ICNkZWZpbmUgQ0hBTk5FTENMSUVOVCBDdXJzb3JDaGFubmVsQ2xpZW50Cj4gIAo+ICAjZWxpZiBk
ZWZpbmVkKENMSUVOVF9QQUxFVFRFX0NBQ0hFKQo+IEBAIC0zNCw3ICszMyw2IEBACj4gICNkZWZp
bmUgQ0FDSEVfSEFTSF9TSVpFIFBBTEVUVEVfQ0FDSEVfSEFTSF9TSVpFCj4gICNkZWZpbmUgRlVO
Q19OQU1FKG5hbWUpIHJlZF9wYWxldHRlX2NhY2hlXyMjbmFtZQo+ICAjZGVmaW5lIFZBUl9OQU1F
KG5hbWUpIHBhbGV0dGVfY2FjaGVfIyNuYW1lCj4gLSNkZWZpbmUgQ0hBTk5FTCBEaXNwbGF5Q2hh
bm5lbAo+ICAjZGVmaW5lIENIQU5ORUxDTElFTlQgRGlzcGxheUNoYW5uZWxDbGllbnQKPiAgI2Vs
c2UKPiAgCj4gQEAgLTEyNiw1ICsxMjQsNCBAQCBzdGF0aWMgdm9pZCBGVU5DX05BTUUocmVzZXQp
KENIQU5ORUxDTElFTlQKPiAqY2hhbm5lbF9jbGllbnQsIGxvbmcgc2l6ZSkKPiAgI3VuZGVmIENB
Q0hFX0hBU0hfU0laRQo+ICAjdW5kZWYgRlVOQ19OQU1FCj4gICN1bmRlZiBWQVJfTkFNRQo+IC0j
dW5kZWYgQ0hBTk5FTAo+ICAjdW5kZWYgQ0hBTk5FTENMSUVOVAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
