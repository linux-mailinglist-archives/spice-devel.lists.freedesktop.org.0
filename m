Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0FF5954D
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC876E88E;
	Fri, 28 Jun 2019 07:46:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B92A6E88E
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 17FE830811C7
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EBC11A7DB
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07CBE1806B15
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:27 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:46:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <250597780.25082736.1561707986979.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190618081551.20585-2-fziglio@redhat.com>
References: <20190618081551.20585-1-fziglio@redhat.com>
 <20190618081551.20585-2-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: channel-display: Use proper sized maximum
Thread-Index: v+nOum+xD4Y0NCXcQsJSlEMa2dFcTA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 28 Jun 2019 07:46:27 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] channel-display: Use proper
 sized maximum
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

cGluZwoKPiAKPiAiYXVkaW9fZGVsYXkiIGlzIDMyIGJpdCBhcyBkZWZpbmVkIGJ5IHByb3RvY29s
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29t
Pgo+IC0tLQo+ICBzcmMvY2hhbm5lbC1kaXNwbGF5LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvY2hh
bm5lbC1kaXNwbGF5LmMgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LmMKPiBpbmRleCBjZGEwZmNkZC4u
NTQyOTIwYmIgMTAwNjQ0Cj4gLS0tIGEvc3JjL2NoYW5uZWwtZGlzcGxheS5jCj4gKysrIGIvc3Jj
L2NoYW5uZWwtZGlzcGxheS5jCj4gQEAgLTE0NzMsNyArMTQ3Myw3IEBAIHN0YXRpYyB2b2lkCj4g
ZGlzcGxheV91cGRhdGVfc3RyZWFtX3JlcG9ydChTcGljZURpc3BsYXlDaGFubmVsICpjaGFubmVs
LCB1aW50MzJfdAo+ICAgICAgICAgIGlmIChzcGljZV9zZXNzaW9uX2lzX3BsYXliYWNrX2FjdGl2
ZShzZXNzaW9uKSkgewo+ICAgICAgICAgICAgICByZXBvcnQuYXVkaW9fZGVsYXkgPQo+ICAgICAg
ICAgICAgICBzcGljZV9zZXNzaW9uX2dldF9wbGF5YmFja19sYXRlbmN5KHNlc3Npb24pOwo+ICAg
ICAgICAgIH0gZWxzZSB7Cj4gLSAgICAgICAgICAgIHJlcG9ydC5hdWRpb19kZWxheSA9IFVJTlRf
TUFYOwo+ICsgICAgICAgICAgICByZXBvcnQuYXVkaW9fZGVsYXkgPSBVSU5UMzJfTUFYOwo+ICAg
ICAgICAgIH0KPiAgCj4gICAgICAgICAgbXNnID0gc3BpY2VfbXNnX291dF9uZXcoU1BJQ0VfQ0hB
Tk5FTChjaGFubmVsKSwKPiAgICAgICAgICBTUElDRV9NU0dDX0RJU1BMQVlfU1RSRUFNX1JFUE9S
VCk7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
