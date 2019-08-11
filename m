Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F5889199
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 13:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2E6B6E33B;
	Sun, 11 Aug 2019 11:57:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44EFC6E33B
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:57:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DBAC681DFF
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:57:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D4A447B9E8
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:57:49 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD8EC18089C8;
 Sun, 11 Aug 2019 11:57:49 +0000 (UTC)
Date: Sun, 11 Aug 2019 07:57:49 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <802270411.5453469.1565524669791.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190811114723.22360-3-uril@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
 <20190811114723.22360-3-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.53, 10.4.195.24]
Thread-Topic: valgrind/spice.supp: add missing ...
Thread-Index: /m+lzHSF/BGDbFE10lC8Li5ILjNcTA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Sun, 11 Aug 2019 11:57:49 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH 3/3] valgrind/spice.supp: add
 missing ...
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

PiAKPiBUaGVyZSBtYXkgdG8gYmUgYW5vdGhlciBmdW5jdGlvbiAoY2FjaGVfYWx0X25hbWVzKSBi
ZXR3ZWVuCj4gICBnbnV0bHNfeDUwOV9leHRfaW1wb3J0X3N1YmplY3RfYWx0X25hbWVzIGFuZAo+
ICAgZ251dGxzX3g1MDlfY3J0X2ltcG9ydAo+IAo+IGNhY2hlX2FsdF9uYW1lcyBpcyBhIHN0YXRp
YyBmdW5jdGlvbiBpbiBnbnV0bHMvbGliL3g1MDkveDUwOS5jCj4gdXNlZCBvbmx5IGluIGdudXRs
c194NTA5X2NydF9pbXBvcnQgYW5kIG1heSBiZSBpbmxpbmVkIGJ5Cj4gdGhlIGNvbXBpbGVyLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KCkFja2VkLgoK
SWYgeW91IGhhdmUgdGhlIGV4YWN0IGVudmlyb25tZW50IHdoZXJlIHRoaXMgaGFwcGVuZWQgd29y
dGggYWRkaW5nCml0IGluIHRoZSBjb21taXQgbWVzc2FnZS4KCj4gLS0tCj4gIHNlcnZlci90ZXN0
cy92YWxncmluZC9zcGljZS5zdXBwIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvc3BpY2Uuc3VwcAo+
IGIvc2VydmVyL3Rlc3RzL3ZhbGdyaW5kL3NwaWNlLnN1cHAKPiBpbmRleCBhYTY0YjYxYmMuLjI4
NDgzM2E3MiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvc3BpY2Uuc3VwcAo+
ICsrKyBiL3NlcnZlci90ZXN0cy92YWxncmluZC9zcGljZS5zdXBwCj4gQEAgLTQyLDYgKzQyLDcg
QEAKPiAgCU1lbWNoZWNrOkNvbmQKPiAgCS4uLgo+ICAJZnVuOmdudXRsc194NTA5X2V4dF9pbXBv
cnRfc3ViamVjdF9hbHRfbmFtZXMKPiArCS4uLgo+ICAJZnVuOmdudXRsc194NTA5X2NydF9pbXBv
cnQKPiAgCWZ1bjpnbnV0bHNfeDUwOV90cnVzdF9saXN0X2l0ZXJfZ2V0X2NhCj4gIH0KCkZyZWRp
YW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
