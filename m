Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9188F41BAB
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5DE8922A;
	Wed, 12 Jun 2019 05:54:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAA918922A
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 57C3E308FF32
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4EB2D48CFB
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 46B941806B0E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:54:03 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:54:03 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <787765103.22408096.1560318843235.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-13-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-13-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: red-channel-client: Add some comment on the flush code
Thread-Index: 8X6mZCoxipN0bMwCw5WjFBx/s/a7Xg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 12 Jun 2019 05:54:03 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 13/13] red-channel-client:
 Add some comment on the flush code
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
LmNvbT4KPiAtLS0KPiAgc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIHwgNiArKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIv
cmVkLWNoYW5uZWwtY2xpZW50LmMgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiBpbmRl
eCAzZmQ1MWQ3OGIuLjMzNzczM2Q1ZCAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvcmVkLWNoYW5uZWwt
Y2xpZW50LmMKPiArKysgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKPiBAQCAtMTMxOSw2
ICsxMzE5LDkgQEAgdm9pZCByZWRfY2hhbm5lbF9jbGllbnRfcHVzaChSZWRDaGFubmVsQ2xpZW50
ICpyY2MpCj4gICAgICAvKiBwcmVwYXJlX3BpcGVfYWRkKCkgd2lsbCByZWVuYWJsZSBXUklURSBl
dmVudHMgd2hlbiB0aGUKPiAgICAgIHJjYy0+cHJpdi0+cGlwZSBpcyBlbXB0eQo+ICAgICAgICog
cmVkX2NoYW5uZWxfY2xpZW50X2Fja196ZXJvX21lc3NhZ2VzX3dpbmRvdygpIHdpbGwgcmVlbmFi
bGUgV1JJVEUKPiAgICAgICBldmVudHMKPiAgICAgICAqIGlmIHdlIHdlcmUgd2FpdGluZyBmb3Ig
YWNrcyB0byBiZSByZWNlaXZlZAo+ICsgICAgICogSWYgd2UgZG9uJ3QgcmVtb3ZlIFdSSVRFIGlm
IHdlIGFyZSB3YWl0aW5nIGZvciBhY2sgd2Ugd2lsbCBiZSBrZWVwCj4gKyAgICAgKiBub3RpZmll
ZCB0aGF0IHdlIGNhbiB3cml0ZSBhbmQgd2UgdGhlbiBleGl0IChzZWUgcGlwZV9pdGVtX2dldCkg
YXMgd2UKPiArICAgICAqIGFyZSB3YWl0aW5nIGZvciB0aGUgYWNrIGNvbnN1bWluZyBDUFUgaW4g
YSB0aWdodCBsb29wCj4gICAgICAgKi8KPiAgICAgIGlmICgocmVkX2NoYW5uZWxfY2xpZW50X25v
X2l0ZW1fYmVpbmdfc2VudChyY2MpICYmCj4gICAgICBnX3F1ZXVlX2lzX2VtcHR5KCZyY2MtPnBy
aXYtPnBpcGUpKSB8fAo+ICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF93YWl0aW5nX2Zvcl9h
Y2socmNjKSkgewo+IEBAIC0xMzI2LDYgKzEzMjksOSBAQCB2b2lkIHJlZF9jaGFubmVsX2NsaWVu
dF9wdXNoKFJlZENoYW5uZWxDbGllbnQgKnJjYykKPiAgICAgICAgICAvKiBjaGFubmVsIGhhcyBu
byBwZW5kaW5nIGRhdGEgdG8gc2VuZCBzbyBub3cgd2UgY2FuIGZsdXNoIGRhdGEgaW4KPiAgICAg
ICAgICAgKiBvcmRlciB0byBhdm9pZCBkYXRhIHN0YWxsIGludG8gYnVmZmVycyBpbiBjYXNlIG9m
IG1hbnVhbAo+ICAgICAgICAgICAqIGZsdXNoaW5nCj4gKyAgICAgICAgICogV2UgbmVlZCB0byBm
bHVzaCBhbHNvIGluIGNhc2Ugb2YgYWNrIGFzIGl0IGlzIHBvc3NpYmxlCj4gKyAgICAgICAgICog
dGhhdCBmb3IgYSBsb25nIHRyYWluIG9mIHNtYWxsIG1lc3NhZ2VzIHRoZSBtZXNzYWdlIHRoYXQg
d291bGQKPiArICAgICAgICAgKiBjYXVzZSB0aGUgY2xpZW50IHRvIHNlbmQgdGhlIGFjayBpcyBz
dGlsbCBpbiB0aGUgcXVldWUKPiAgICAgICAgICAgKi8KPiAgICAgICAgICByZWRfc3RyZWFtX2Zs
dXNoKHJjYy0+cHJpdi0+c3RyZWFtKTsKPiAgICAgIH0KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
