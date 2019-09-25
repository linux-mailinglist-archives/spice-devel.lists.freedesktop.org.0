Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3353BDAFA
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:29:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2AF89CE0;
	Wed, 25 Sep 2019 09:29:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A1B89CE0
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:29:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C360018C8909
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:29:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B91E019C7F
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:29:56 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AAE2B1808876;
 Wed, 25 Sep 2019 09:29:56 +0000 (UTC)
Date: Wed, 25 Sep 2019 05:29:56 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <22183329.3205299.1569403796665.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190925090701.19130-4-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-4-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.21]
Thread-Topic: tests: migrate: add support to run with remote-viewer
Thread-Index: uK8iRjPtAicVMwdxsEo7u8N8Pv9UFQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Wed, 25 Sep 2019 09:29:56 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 3/8] tests: migrate: add support to run
 with remote-viewer
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gU2lnbmVkLW9m
Zi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPiAtLS0KPiAgdGVzdHMv
bWlncmF0ZS5weSB8IDUgKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMv
bWlncmF0ZS5weQo+IGluZGV4IDVhMGY1OTMwLi5mODkzYjJhYyAxMDA3NTUKPiAtLS0gYS90ZXN0
cy9taWdyYXRlLnB5Cj4gKysrIGIvdGVzdHMvbWlncmF0ZS5weQo+IEBAIC01OCw3ICs1OCw3IEBA
IGRlZiBnZXRfYXJncygpOgo+ICAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1xZW11JywgZGVz
dD0ncWVtdScsCj4gICAgICBkZWZhdWx0PScuLi8uLi9xZW11L3g4Nl82NC1zb2Z0bW11L3FlbXUt
c3lzdGVtLXg4Nl82NCcpCj4gICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWxvZ19maWxlbmFt
ZScsIGRlc3Q9J2xvZ19maWxlbmFtZScsCj4gICAgICBkZWZhdWx0PSdtaWdyYXRlLmxvZycpCj4g
ICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWltYWdlJywgZGVzdD0naW1hZ2UnLCBkZWZhdWx0
PScnKQo+IC0gICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1jbGllbnQnLCBkZXN0PSdjbGllbnQn
LCBkZWZhdWx0PSdzcGljeScsCj4gY2hvaWNlcz1bJ3NwaWN5J10pCj4gKyAgICBwYXJzZXIuYWRk
X2FyZ3VtZW50KCctLWNsaWVudCcsIGRlc3Q9J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywKPiBj
aG9pY2VzPVsnc3BpY3knLCAncmVtb3RlLXZpZXdlciddKQo+ICAgICAgcGFyc2VyLmFkZF9hcmd1
bWVudCgnLS12ZGFnZW50JywgY2hvaWNlcz1bJ29uJywgJ29mZiddLCBkZWZhdWx0PSdvbicpCj4g
ICAgICBhcmdzID0gcGFyc2VyLnBhcnNlX2FyZ3Moc3lzLmFyZ3ZbMTpdKQo+ICAgICAgaWYgb3Mu
cGF0aC5leGlzdHMoYXJncy5xZW11KToKPiBAQCAtOTcsNiArOTcsOSBAQCBkZWYgc3RhcnRfcWVt
dShxZW11X2V4ZWMsIGltYWdlLCBzcGljZV9wb3J0LCBxbXBfZmlsZW5hbWUsCj4gaW5jb21pbmdf
cG9ydD1Ob25lLCBlCj4gIAo+ICBkZWYgc3RhcnRfY2xpZW50KGNsaWVudCwgc3BpY2VfcG9ydCk6
Cj4gICAgICBjbGllbnRfY21kID0gInNwaWN5IC0tdXJpIHNwaWNlOi8vbG9jYWxob3N0OiVzIiAl
IChzcGljZV9wb3J0KQo+ICsgICAgaWYgY2xpZW50ID09ICJyZW1vdGUtdmlld2VyIjoKPiArICAg
ICAgICBjbGllbnRfY21kID0gIiVzIHNwaWNlOi8vbG9jYWxob3N0OiVzIiAlIChjbGllbnQsIHNw
aWNlX3BvcnQpCgpNYXliZSBoZXJlIGNhbiBqdXN0IGJlCgogIGNsaWVudF9jbWQgPSAicmVtb3Rl
LXZpZXdlciBzcGljZTovL2xvY2FsaG9zdDolcyIgJSAoc3BpY2VfcG9ydCkKCj4gKwo+ICAgICAg
cmV0dXJuIFBvcGVuKGNsaWVudF9jbWQuc3BsaXQoKSwgZXhlY3V0YWJsZT1jbGllbnQpCj4gIAo+
ICBkZWYgd2FpdF9hY3RpdmUocSwgYWN0aXZlKToKCk90aGVyd2lzZSwKICBBY2tlZC1ieTogRnJl
ZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpGcmVkaWFubwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
