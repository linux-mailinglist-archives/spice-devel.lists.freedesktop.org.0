Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B10888C1
	for <lists+spice-devel@lfdr.de>; Sat, 10 Aug 2019 08:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8001D6EF47;
	Sat, 10 Aug 2019 06:02:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652ED6EF47
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:02:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 114B33C916
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:02:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0794B10013A1
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:02:44 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 01544180B536
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:02:44 +0000 (UTC)
Date: Sat, 10 Aug 2019 02:02:43 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1991816223.5430407.1565416963947.JavaMail.zimbra@redhat.com>
In-Reply-To: <1996279287.4733444.1565013113012.JavaMail.zimbra@redhat.com>
References: <20190723082230.10381-1-fziglio@redhat.com>
 <20190723082230.10381-4-fziglio@redhat.com>
 <1996279287.4733444.1565013113012.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.16, 10.4.195.27]
Thread-Topic: red-replay-qxl: Fix replay on 32 bit systems
Thread-Index: FNGUFyh1DJ9uLJlEQ0Hcj7MNwR6APRjDLB7v
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Sat, 10 Aug 2019 06:02:44 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-replay-qxl: Fix replay
 on 32 bit systems
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IE9uIDMyIHN5c3RlbXMgcG9pbnRlcnMgYXJlIDMy
IGJpdCB3aGlsZSBRWExQSFlTSUNBTCBpcyBhbHdheXMKPiA+IDY0IGJpdC4KPiA+IFVzaW5nIHBv
aW50ZXIgLT4gaW50cHRyX3QgLT4gUVhMUEhZU0lDQUwgY29udmVyc2lvbiBjYXVzZSBwb2ludGVy
cwo+ID4gdG8gaGF2ZSBoaWdoZXIgMzIgYml0IHNldCB0byAxIGlmIHRoZSBhZGRyZXNzIGlzID49
IDB4ODAwMDAwMDAuCj4gPiBUaGlzIGlzIHBvc3NpYmxlIGRlcGVuZGluZyBvbiBhZGRyZXNzIHNw
YWNlLgo+ID4gVGhlIFFYTFBIWVNJQ0FMIGlzIHNwbGl0IGluIDMgc2VjdGlvbnM6Cj4gPiAtIHNs
b3QgSUQ7Cj4gPiAtIGdlbmVyYXRpb247Cj4gPiAtIHZpcnR1YWwgYWRkcmVzcy4KPiA+IEN1cnJl
bnQgdXRpbGl0eSB1c2luZyByZWNvcmQgZmlsZSAoc3BpY2Utc2VydmVyLXJlcGxheSkgc2V0IHNs
b3QgSUQKPiA+IGFuZCBnZW5lcmF0aW9uIHRvIDAgc28gaWYgdGhlIGhpZ2hlciBiaXRzIGJlY29t
ZSBhbGwgMSBzbG90IElEIGFuZAo+ID4gZ2VuZXJhdGlvbiB3b24ndCBiZSAwIGNhdXNpbmcgdGhl
IHV0aWxpdHkgdG8gZmFpbC4KPiA+IFVzZSBwb2ludGVyIC0+IHVpbnRwdHJfdCAtPiBRWExQSFlT
SUNBTCBjb252ZXJzaW9uIHRvIGF2b2lkIHRoaXMKPiA+IGlzc3VlLgo+ID4gTm90ZSB0aGF0IGZv
ciBvcHBvc2l0ZSBjb252ZXJzaW9uIChRWExQSFlTSUNBTF9UT19QVFIpIHRoZSBjb252ZXJzaW9u
Cj4gPiBkb2VzIG5vdCBjaGFuZ2UsIHR5cGUgaXMgY2hhbmdlZCBqdXN0IGZvciBjb25zaXN0ZW5j
eS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhh
dC5jb20+Cj4gPiAtLS0KPiA+ICBzZXJ2ZXIvcmVkLXJlcGxheS1xeGwuYyB8IDQgKystLQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLXJlcGxheS1xeGwuYyBiL3NlcnZlci9yZWQtcmVwbGF5
LXF4bC5jCj4gPiBpbmRleCA2NzRmZWFlMmYuLmIzOGM0Y2RiZCAxMDA2NDQKPiA+IC0tLSBhL3Nl
cnZlci9yZWQtcmVwbGF5LXF4bC5jCj4gPiArKysgYi9zZXJ2ZXIvcmVkLXJlcGxheS1xeGwuYwo+
ID4gQEAgLTI5LDggKzI5LDggQEAKPiA+ICAjaW5jbHVkZSAibWVtc2xvdC5oIgo+ID4gICNpbmNs
dWRlICJyZWQtcGFyc2UtcXhsLmgiCj4gPiAgCj4gPiAtI2RlZmluZSBRWExQSFlTSUNBTF9GUk9N
X1BUUihwdHIpICgoUVhMUEhZU0lDQUwpKGludHB0cl90KShwdHIpKQo+ID4gLSNkZWZpbmUgUVhM
UEhZU0lDQUxfVE9fUFRSKHBoeSkgKCh2b2lkKikoaW50cHRyX3QpKHBoeSkpCj4gPiArI2RlZmlu
ZSBRWExQSFlTSUNBTF9GUk9NX1BUUihwdHIpICgoUVhMUEhZU0lDQUwpKHVpbnRwdHJfdCkocHRy
KSkKPiA+ICsjZGVmaW5lIFFYTFBIWVNJQ0FMX1RPX1BUUihwaHkpICgodm9pZCopKHVpbnRwdHJf
dCkocGh5KSkKPiA+ICAKPiA+ICB0eXBlZGVmIGVudW0gewo+ID4gICAgICBSRVBMQVlfT0sgPSAw
LAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
