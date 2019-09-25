Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 837B3BDB3B
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:39:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E36E899BE;
	Wed, 25 Sep 2019 09:39:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07232899BE
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:39:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9838D10DCC8C
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:39:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E0265C1D4
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:39:50 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 84DD04EE50;
 Wed, 25 Sep 2019 09:39:50 +0000 (UTC)
Date: Wed, 25 Sep 2019 05:39:50 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1514848675.3206007.1569404390361.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190925090701.19130-9-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-9-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.19]
Thread-Topic: tests: migrate: add counter for tests
Thread-Index: VaNs6dUebQRbieBCByC/NO8T2hqdUw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Wed, 25 Sep 2019 09:39:50 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 8/8] tests: migrate: add counter for tests
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
bWlncmF0ZS5weSB8IDYgKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvbWlncmF0ZS5weSBiL3Rlc3Rz
L21pZ3JhdGUucHkKPiBpbmRleCBmY2Y1MWJkYi4uZTgzYTYxNTkgMTAwNzU1Cj4gLS0tIGEvdGVz
dHMvbWlncmF0ZS5weQo+ICsrKyBiL3Rlc3RzL21pZ3JhdGUucHkKPiBAQCAtNjIsNiArNjIsOCBA
QCBkZWYgZ2V0X2FyZ3MoKToKPiAgICAgICAgICAgICAgICAgICAgICAgICAgaGVscD0iQXBwZW5k
IG9wdGlvbnMgZm9yIGFnZW50J3MgdmlydHNlcmlhbHBvcnQiKQo+ICAgICAgcGFyc2VyLmFkZF9h
cmd1bWVudCgnLS13YWl0LXRvLXN0YXJ0JywgZGVzdD0id2FpdF91c2VyX2lucHV0IiwKPiAgICAg
IGFjdGlvbj0nc3RvcmVfdHJ1ZScsIGRlZmF1bHQ9RmFsc2UsCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgIGhlbHA9IldhaXQgdXNlcidzIGlucHV0IHRvIHN0YXJ0IG1pZ3JhdGlvbiB0ZXN0IikK
PiArICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tY291bnQnLCBkZXN0PSdjb3VudGVyJywgdHlw
ZT1pbnQsIGRlZmF1bHQ9MTAwLAoKUHJldmlvdXMgZGVmYXVsdCB3YXMgaW5maW5pdGUuIEJ1dCBl
dmVuIDEwMCBpcyBhIGJpZyBudW1iZXIuCgo+ICsgICAgICAgICAgICAgICAgICAgICAgICBoZWxw
PSJOdW1iZXIgb2YgbWlncmF0aW9ucyB0byBydW4gKHNldCAwIGZvcgo+IGluZmluaXRlKSIpCj4g
ICAgICBhcmdzID0gcGFyc2VyLnBhcnNlX2FyZ3Moc3lzLmFyZ3ZbMTpdKQo+ICAgICAgaWYgb3Mu
cGF0aC5leGlzdHMoYXJncy5xZW11KToKPiAgICAgICAgICBhcmdzLnFlbXVfZXhlYyA9IGFyZ3Mu
cWVtdQo+IEBAIC0yMTUsOCArMjE3LDEwIEBAIGRlZiBtYWluKCk6Cj4gICAgICAgICAgbWlncmF0
aW9uX3BvcnQ9YXJncy5taWdyYXRlX3BvcnQsIHNwaWNlX3BvcnRzPVthcmdzLnNwaWNlX3BvcnQx
LAo+ICAgICAgICAgIGFyZ3Muc3BpY2VfcG9ydDJdLCB2ZGFnZW50PWFyZ3MudmRhZ2VudCkKPiAg
ICAgIGF0ZXhpdC5yZWdpc3RlcihjbGVhbnVwLCBtaWdyYXRvcikKPiAtICAgIHdoaWxlIFRydWU6
Cj4gKyAgICBjb3VudGVyID0gMAo+ICsgICAgd2hpbGUgYXJncy5jb3VudGVyID09IDAgb3IgY291
bnRlciA8IGFyZ3MuY291bnRlcjoKPiAgICAgICAgICBtaWdyYXRvci5pdGVyYXRlKGFyZ3Mud2Fp
dF91c2VyX2lucHV0KQo+ICsgICAgICAgIGNvdW50ZXIgKz0gMQo+ICAKPiAgaWYgX19uYW1lX18g
PT0gJ19fbWFpbl9fJzoKPiAgICAgIG1haW4oKQoKT3RoZXJ3aXNlLAogIEFja2VkLWJ5OiBGcmVk
aWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KCkZyZWRpYW5vCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
