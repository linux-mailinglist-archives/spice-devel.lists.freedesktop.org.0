Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C917480A4
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 13:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CACD89144;
	Mon, 17 Jun 2019 11:28:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A3E389144
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 11:28:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9F5F2307D86F
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 11:28:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 977973781
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 11:28:36 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 903D91806B0E
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 11:28:36 +0000 (UTC)
Date: Mon, 17 Jun 2019 07:28:36 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1624039014.23041945.1560770916546.JavaMail.zimbra@redhat.com>
In-Reply-To: <787765103.22408096.1560318843235.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-13-fziglio@redhat.com>
 <787765103.22408096.1560318843235.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.51, 10.4.195.13]
Thread-Topic: red-channel-client: Add some comment on the flush code
Thread-Index: 8X6mZCoxipN0bMwCw5WjFBx/s/a7XrgoxmDN
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 17 Jun 2019 11:28:36 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiAgc2VydmVyL3JlZC1jaGFubmVsLWNs
aWVudC5jIHwgNiArKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4g
PiAKPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMgYi9zZXJ2ZXIv
cmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+IGluZGV4IDNmZDUxZDc4Yi4uMzM3NzMzZDVkIDEwMDY0
NAo+ID4gLS0tIGEvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCj4gPiArKysgYi9zZXJ2ZXIv
cmVkLWNoYW5uZWwtY2xpZW50LmMKPiA+IEBAIC0xMzE5LDYgKzEzMTksOSBAQCB2b2lkIHJlZF9j
aGFubmVsX2NsaWVudF9wdXNoKFJlZENoYW5uZWxDbGllbnQgKnJjYykKPiA+ICAgICAgLyogcHJl
cGFyZV9waXBlX2FkZCgpIHdpbGwgcmVlbmFibGUgV1JJVEUgZXZlbnRzIHdoZW4gdGhlCj4gPiAg
ICAgIHJjYy0+cHJpdi0+cGlwZSBpcyBlbXB0eQo+ID4gICAgICAgKiByZWRfY2hhbm5lbF9jbGll
bnRfYWNrX3plcm9fbWVzc2FnZXNfd2luZG93KCkgd2lsbCByZWVuYWJsZSBXUklURQo+ID4gICAg
ICAgZXZlbnRzCj4gPiAgICAgICAqIGlmIHdlIHdlcmUgd2FpdGluZyBmb3IgYWNrcyB0byBiZSBy
ZWNlaXZlZAo+ID4gKyAgICAgKiBJZiB3ZSBkb24ndCByZW1vdmUgV1JJVEUgaWYgd2UgYXJlIHdh
aXRpbmcgZm9yIGFjayB3ZSB3aWxsIGJlIGtlZXAKPiA+ICsgICAgICogbm90aWZpZWQgdGhhdCB3
ZSBjYW4gd3JpdGUgYW5kIHdlIHRoZW4gZXhpdCAoc2VlIHBpcGVfaXRlbV9nZXQpIGFzCj4gPiB3
ZQo+ID4gKyAgICAgKiBhcmUgd2FpdGluZyBmb3IgdGhlIGFjayBjb25zdW1pbmcgQ1BVIGluIGEg
dGlnaHQgbG9vcAo+ID4gICAgICAgKi8KPiA+ICAgICAgaWYgKChyZWRfY2hhbm5lbF9jbGllbnRf
bm9faXRlbV9iZWluZ19zZW50KHJjYykgJiYKPiA+ICAgICAgZ19xdWV1ZV9pc19lbXB0eSgmcmNj
LT5wcml2LT5waXBlKSkgfHwKPiA+ICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF93YWl0aW5n
X2Zvcl9hY2socmNjKSkgewo+ID4gQEAgLTEzMjYsNiArMTMyOSw5IEBAIHZvaWQgcmVkX2NoYW5u
ZWxfY2xpZW50X3B1c2goUmVkQ2hhbm5lbENsaWVudCAqcmNjKQo+ID4gICAgICAgICAgLyogY2hh
bm5lbCBoYXMgbm8gcGVuZGluZyBkYXRhIHRvIHNlbmQgc28gbm93IHdlIGNhbiBmbHVzaCBkYXRh
IGluCj4gPiAgICAgICAgICAgKiBvcmRlciB0byBhdm9pZCBkYXRhIHN0YWxsIGludG8gYnVmZmVy
cyBpbiBjYXNlIG9mIG1hbnVhbAo+ID4gICAgICAgICAgICogZmx1c2hpbmcKPiA+ICsgICAgICAg
ICAqIFdlIG5lZWQgdG8gZmx1c2ggYWxzbyBpbiBjYXNlIG9mIGFjayBhcyBpdCBpcyBwb3NzaWJs
ZQo+ID4gKyAgICAgICAgICogdGhhdCBmb3IgYSBsb25nIHRyYWluIG9mIHNtYWxsIG1lc3NhZ2Vz
IHRoZSBtZXNzYWdlIHRoYXQgd291bGQKPiA+ICsgICAgICAgICAqIGNhdXNlIHRoZSBjbGllbnQg
dG8gc2VuZCB0aGUgYWNrIGlzIHN0aWxsIGluIHRoZSBxdWV1ZQo+ID4gICAgICAgICAgICovCj4g
PiAgICAgICAgICByZWRfc3RyZWFtX2ZsdXNoKHJjYy0+cHJpdi0+c3RyZWFtKTsKPiA+ICAgICAg
fQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
