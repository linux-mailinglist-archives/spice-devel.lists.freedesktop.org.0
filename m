Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D736E41BA6
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA87F890E5;
	Wed, 12 Jun 2019 05:52:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975A0890E5
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:52:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3818A307D90E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:52:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BE60101E66B
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:52:55 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2436B1806B0E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:52:55 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:52:53 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <540912920.22408060.1560318773701.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190602175359.24499-2-fziglio@redhat.com>
References: <20190602175359.24499-1-fziglio@redhat.com>
 <20190602175359.24499-2-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: smartcard-channel-client: Fix some typos in a comment
Thread-Index: T93arhB2dcWUo++F5iR+ck9WvY1LHA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 12 Jun 2019 05:52:55 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] smartcard-channel-client:
 Fix some typos in a comment
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
LmNvbT4KPiAtLS0KPiAgc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jIHwgNiArKyst
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jCj4gYi9zZXJ2
ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKPiBpbmRleCBlMjJiMzlhZGYuLmU0NjI0MDFl
MCAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKPiArKysg
Yi9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKPiBAQCAtMTIzLDkgKzEyMyw5IEBA
Cj4gc21hcnRjYXJkX2NoYW5uZWxfY2xpZW50X2FsbG9jX21zZ19yY3ZfYnVmKFJlZENoYW5uZWxD
bGllbnQgKnJjYywKPiAgICAgIFNtYXJ0Q2FyZENoYW5uZWxDbGllbnQgKnNjYyA9IFNNQVJUQ0FS
RF9DSEFOTkVMX0NMSUVOVChyY2MpOwo+ICAgICAgUmVkQ2xpZW50ICpjbGllbnQgPSByZWRfY2hh
bm5lbF9jbGllbnRfZ2V0X2NsaWVudChyY2MpOwo+ICAKPiAtICAgIC8qIHRvZG86IG9ubHkgb25l
IHJlYWRlciBpcyBhY3R1YWxseSBzdXBwb3J0ZWQuIFdoZW4gd2UgZml4IHRoZSBjb2RlIHRvCj4g
c3VwcG9ydAo+IC0gICAgICogbXVsdGlwbGUgcmVhZGVycywgd2Ugd2lsbCBwb3JiYWJseSBhc3Nv
Y2lhdGUgZGlmZmVyZW50IGRldmljZXMgdG8KPiAtICAgICAqIGRpZmZlcmVuYyBjaGFubmVscyAq
Lwo+ICsgICAgLyogVE9ETzogb25seSBvbmUgcmVhZGVyIGlzIGFjdHVhbGx5IHN1cHBvcnRlZC4g
V2hlbiB3ZSBmaXggdGhlIGNvZGUgdG8KPiBzdXBwb3J0Cj4gKyAgICAgKiBtdWx0aXBsZSByZWFk
ZXJzLCB3ZSB3aWxsIHByb2JhYmx5IGFzc29jaWF0ZSBkaWZmZXJlbnQgZGV2aWNlcyB0bwo+ICsg
ICAgICogZGlmZmVyZW50IGNoYW5uZWxzICovCj4gICAgICBpZiAoIXNjYy0+cHJpdi0+c21hcnRj
YXJkKSB7Cj4gICAgICAgICAgc2NjLT5wcml2LT5tc2dfaW5fd3JpdGVfYnVmID0gRkFMU0U7Cj4g
ICAgICAgICAgcmV0dXJuIGdfbWFsbG9jKHNpemUpOwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
