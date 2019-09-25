Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7D1BDB0A
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:32:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880826EB5D;
	Wed, 25 Sep 2019 09:32:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7161D6EB5D
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:32:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1D415308402D
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:32:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1336E60605
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:32:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0838A4EE50;
 Wed, 25 Sep 2019 09:32:42 +0000 (UTC)
Date: Wed, 25 Sep 2019 05:32:41 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <902630725.3205431.1569403961991.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190925090701.19130-7-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-7-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.21]
Thread-Topic: tests: migrate: bool instead of on/off option in cmd line
Thread-Index: YgIU59Ei0eEDpow6HtiGgIcsSvqyqw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Wed, 25 Sep 2019 09:32:42 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 6/8] tests: migrate: bool instead of
 on/off option in cmd line
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gU2ltcGxlci4g
TWFrZSB0aGUgZGVmYXVsdCB0byBiZSBGYWxzZSBhcyB3ZWxsIGFzCj4gIDEpIE5vIGFyZ3Mgc2hv
dWxkIHJ1biBhcyBzaW1wbGUgYXMgcG9zc2libGUKPiAgMikgVHJ1ZSBpcyBjdXJyZW50bHkgYnJv
a2VuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNv
bT4KPiAtLS0KPiAgdGVzdHMvbWlncmF0ZS5weSB8IDUgKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMv
bWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUucHkKPiBpbmRleCAzMTU5M2M4YS4uNGFjNjI4OWIg
MTAwNzU1Cj4gLS0tIGEvdGVzdHMvbWlncmF0ZS5weQo+ICsrKyBiL3Rlc3RzL21pZ3JhdGUucHkK
PiBAQCAtNTgsNyArNTgsOCBAQCBkZWYgZ2V0X2FyZ3MoKToKPiAgICAgIHBhcnNlci5hZGRfYXJn
dW1lbnQoJy0tbG9nX2ZpbGVuYW1lJywgZGVzdD0nbG9nX2ZpbGVuYW1lJywKPiAgICAgIGRlZmF1
bHQ9J21pZ3JhdGUubG9nJykKPiAgICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0taW1hZ2UnLCBk
ZXN0PSdpbWFnZScsIGRlZmF1bHQ9JycpCj4gICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWNs
aWVudCcsIGRlc3Q9J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywKPiAgICAgIGNob2ljZXM9Wydz
cGljeScsICdyZW1vdGUtdmlld2VyJ10pCj4gLSAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLXZk
YWdlbnQnLCBjaG9pY2VzPVsnb24nLCAnb2ZmJ10sIGRlZmF1bHQ9J29uJykKPiArICAgIHBhcnNl
ci5hZGRfYXJndW1lbnQoJy0tdmRhZ2VudCcsIGRlc3Q9InZkYWdlbnQiLCBhY3Rpb249J3N0b3Jl
X3RydWUnLAo+IGRlZmF1bHQ9RmFsc2UsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIGhlbHA9
IkFwcGVuZCBvcHRpb25zIGZvciBhZ2VudCdzIHZpcnRzZXJpYWxwb3J0IikKPiAgICAgIGFyZ3Mg
PSBwYXJzZXIucGFyc2VfYXJncyhzeXMuYXJndlsxOl0pCj4gICAgICBpZiBvcy5wYXRoLmV4aXN0
cyhhcmdzLnFlbXUpOgo+ICAgICAgICAgIGFyZ3MucWVtdV9leGVjID0gYXJncy5xZW11Cj4gQEAg
LTIxMCw3ICsyMTEsNyBAQCBkZWYgbWFpbigpOgo+ICAgICAgbWlncmF0b3IgPSBNaWdyYXRvcihj
bGllbnQ9YXJncy5jbGllbnQsIHFlbXVfZXhlYz1hcmdzLnFlbXVfZXhlYywKPiAgICAgICAgICBp
bWFnZT1hcmdzLmltYWdlLCBsb2c9bG9nLCBtb25pdG9yX2ZpbGVzPVthcmdzLnFtcDEsIGFyZ3Mu
cW1wMl0sCj4gICAgICAgICAgbWlncmF0aW9uX3BvcnQ9YXJncy5taWdyYXRlX3BvcnQsIHNwaWNl
X3BvcnRzPVthcmdzLnNwaWNlX3BvcnQxLAo+IC0gICAgICAgIGFyZ3Muc3BpY2VfcG9ydDJdLCB2
ZGFnZW50PShhcmdzLnZkYWdlbnQ9PSdvbicpKQo+ICsgICAgICAgIGFyZ3Muc3BpY2VfcG9ydDJd
LCB2ZGFnZW50PWFyZ3MudmRhZ2VudCkKPiAgICAgIGF0ZXhpdC5yZWdpc3RlcihjbGVhbnVwLCBt
aWdyYXRvcikKPiAgICAgIHdoaWxlIFRydWU6Cj4gICAgICAgICAgbWlncmF0b3IuaXRlcmF0ZSgp
CgpBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpGcmVkaWFu
bwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
