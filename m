Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C806CA2170
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 18:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553B46E130;
	Thu, 29 Aug 2019 16:52:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06416E130
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:52:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 45C6C31752B0
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:52:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CEA1451F
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:52:11 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 312634A486;
 Thu, 29 Aug 2019 16:52:11 +0000 (UTC)
Date: Thu, 29 Aug 2019 12:52:11 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1705524002.10119533.1567097531050.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190829163524.25992-1-uril@redhat.com>
References: <20190829163524.25992-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.5]
Thread-Topic: vdagentd: daemonize: check fopen/fprintf return value
Thread-Index: Zkx7lBo+MOvBfRUb7ayAX/MGaAVTWg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 29 Aug 2019 16:52:11 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-vdagent PATCH v2 1/2] vdagentd: daemonize:
 check fopen/fprintf return value
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

PiAKPiBVcG9uIGZhaWx1cmUsIHdyaXRlIGEgd2FybmluZyBtZXNzYWdlIGFuZCBjb250aW51ZQo+
IAo+IEZvdW5kLWJ5OiBjb3ZzY2FuCj4gCj4gU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiAgPHVy
aWxAcmVkaGF0LmNvbT4KPiAtLS0KPiAKPiB2MS0+djI6IGFkZGVkIGEgY2hlY2sgZm9yIGZvcGVu
IHRvby4KPiAKPiAtLS0KPiAgc3JjL3ZkYWdlbnRkL3ZkYWdlbnRkLmMgfCA3ICsrKysrKy0KPiAg
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYg
LS1naXQgYS9zcmMvdmRhZ2VudGQvdmRhZ2VudGQuYyBiL3NyYy92ZGFnZW50ZC92ZGFnZW50ZC5j
Cj4gaW5kZXggNzJhM2UxMy4uYmExYjBjNyAxMDA2NDQKPiAtLS0gYS9zcmMvdmRhZ2VudGQvdmRh
Z2VudGQuYwo+ICsrKyBiL3NyYy92ZGFnZW50ZC92ZGFnZW50ZC5jCj4gQEAgLTk5Niw4ICs5OTYs
MTMgQEAgc3RhdGljIHZvaWQgZGFlbW9uaXplKHZvaWQpCj4gICAgICAgICAgfQo+ICAgICAgICAg
IHBpZGZpbGUgPSBmb3BlbihwaWRmaWxlbmFtZSwgInciKTsKPiAgICAgICAgICBpZiAocGlkZmls
ZSkgewo+IC0gICAgICAgICAgICBmcHJpbnRmKHBpZGZpbGUsICIlZFxuIiwgKGludClnZXRwaWQo
KSk7Cj4gKyAgICAgICAgICAgIGludCByID0gZnByaW50ZihwaWRmaWxlLCAiJWRcbiIsIChpbnQp
Z2V0cGlkKCkpOwo+ICsgICAgICAgICAgICBpZiAociA8IDApIHsKPiArICAgICAgICAgICAgICAg
IHN5c2xvZyhMT0dfV0FSTklORywgIkVycm9yIHdyaXRpbmcgdG8gJXM6ICVtIiwgcGlkZmlsZW5h
bWUpOwoKVGhpcyB3b24ndCBuZXZlciBiZSBleGVjdXRlZCwgdGhlIGNvbmRpdGlvbiBzaG91bGQg
YmUKCiAgIGlmIChmY2xvc2UocGlkZmlsZSkgfHwgciA8IDApIHsKCnRoZSBmaWxlIGlzIGp1c3Qg
b3BlbmVkLCB0aGUgc3RyaW5nIGlzIHNtYWxsIGFuZCB0aGUgZmlsZSBpcyBub3QgYSB0ZXJtaW5h
bAooc28gZnVsbCBidWZmZXJpbmcsIG5vIGxpbmUgb25lLCBubyBmbHVzaCkgc28gZnByaW50ZiB3
aWxsIHJldHVybiByID4gMC4KCj4gKyAgICAgICAgICAgIH0KPiAgICAgICAgICAgICAgZmNsb3Nl
KHBpZGZpbGUpOwoKcmVtb3ZpbmcgdGhpcy4KCj4gKyAgICAgICAgfSBlbHNlIHsKPiArICAgICAg
ICAgICAgc3lzbG9nKExPR19XQVJOSU5HLCAiRmFpbGVkIHRvIGNyZWF0ZSBwaWRmaWxlICVzOiAl
bSIsCj4gcGlkZmlsZW5hbWUpOwo+ICAgICAgICAgIH0KPiAgICAgICAgICBicmVhazsKPiAgICAg
IGNhc2UgLTE6CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
