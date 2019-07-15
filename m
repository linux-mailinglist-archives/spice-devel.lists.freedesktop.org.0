Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8B668618
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 11:13:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4118489852;
	Mon, 15 Jul 2019 09:13:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5DFB89725
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:13:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 70BDB308FC4D
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:13:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 684886013B
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:13:43 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5E91F1843720;
 Mon, 15 Jul 2019 09:13:43 +0000 (UTC)
Date: Mon, 15 Jul 2019 05:13:43 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <133947907.67700.1563182023349.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190712091242.13214-4-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-4-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.3]
Thread-Topic: covscan: check return value of fprintf
Thread-Index: Hpj0v1AbfOjrQItQFmtsTf+AnDvnIA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Mon, 15 Jul 2019 09:13:43 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd-agent v1 3/7] covscan: check return
 value of fprintf
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gIHwgRXJyb3I6
IENIRUNLRURfUkVUVVJOIChDV0UtMjUyKToKPiAgfCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMv
dmRhZ2VudGQvdmRhZ2VudGQuYzo5OTk6IGNoZWNrX3JldHVybjogQ2FsbGluZwo+ICB8ICJmcHJp
bnRmIiB3aXRob3V0IGNoZWNraW5nIHJldHVybiB2YWx1ZSAoYXMgaXMgZG9uZSBlbHNld2hlcmUg
Mjkgb3V0IG9mCj4gIHwgMzAgdGltZXMpLgo+ICB8IHNwaWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92
ZGFnZW50ZC94b3JnLWNvbmYuYzo5NTogZXhhbXBsZV9hc3NpZ246IEV4YW1wbGUKPiAgfCAxOiBB
c3NpZ25pbmc6ICJyIiA9IHJldHVybiB2YWx1ZSBmcm9tICJmcHJpbnRmKGYsICIjIHhvcmcuY29u
ZiBnZW5lcmF0ZWQKPiAgfCBieSBzcGljZS12ZGFnZW50ZFxuIikiLgo+ICB8IHNwaWNlLXZkYWdl
bnQtMC4xOS4wL3NyYy92ZGFnZW50ZC94b3JnLWNvbmYuYzo5NTogZXhhbXBsZV9jaGVja2VkOiBF
eGFtcGxlCj4gIHwgMSAoY29udC4pOiAiciIgaGFzIGl0cyB2YWx1ZSBjaGVja2VkIGluICJyIDwg
MCIuCj4gIHwgc3BpY2UtdmRhZ2VudC0wLjE5LjAvc3JjL3ZkYWdlbnRkL3hvcmctY29uZi5jOjk2
OiBleGFtcGxlX2Fzc2lnbjogRXhhbXBsZQo+ICB8IDI6IEFzc2lnbmluZzogInIiID0gcmV0dXJu
IHZhbHVlIGZyb20gImZwcmludGYoZiwgIiMgZ2VuZXJhdGVkIGZyb20KPiAgfCBtb25pdG9yIGlu
Zm8gcHJvdmlkZWQgYnkgdGhlIGNsaWVudFxuXG4iKSIuCj4gIHwgc3BpY2UtdmRhZ2VudC0wLjE5
LjAvc3JjL3ZkYWdlbnRkL3hvcmctY29uZi5jOjk2OiBleGFtcGxlX2NoZWNrZWQ6IEV4YW1wbGUK
PiAgfCAyIChjb250Lik6ICJyIiBoYXMgaXRzIHZhbHVlIGNoZWNrZWQgaW4gInIgPCAwIi4KPiAg
fCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudGQveG9yZy1jb25mLmM6OTk6IGV4YW1w
bGVfYXNzaWduOiBFeGFtcGxlCj4gIHwgMzogQXNzaWduaW5nOiAiciIgPSByZXR1cm4gdmFsdWUg
ZnJvbSAiZnByaW50ZihmLCAiIyBDbGllbnQgaGFzIG9ubHkgMQo+ICB8IG1vbml0b3JcbiIpIi4K
PiAgfCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudGQveG9yZy1jb25mLmM6OTk6IGV4
YW1wbGVfY2hlY2tlZDogRXhhbXBsZQo+ICB8IDMgKGNvbnQuKTogInIiIGhhcyBpdHMgdmFsdWUg
Y2hlY2tlZCBpbiAiciA8IDAiLgo+ICB8IHNwaWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50
ZC94b3JnLWNvbmYuYzoxMDA6IGV4YW1wbGVfYXNzaWduOiBFeGFtcGxlCj4gIHwgNDogQXNzaWdu
aW5nOiAiciIgPSByZXR1cm4gdmFsdWUgZnJvbSAiZnByaW50ZihmLCAiIyBUaGlzIHdvcmtzIGJl
c3Qgd2l0aAo+ICB8IG5vIHhvcmcuY29uZiwgbGVhdmluZyB4b3JnLmNvbmYgZW1wdHlcbiIpIi4K
PiAgfCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudGQveG9yZy1jb25mLmM6MTAwOiBl
eGFtcGxlX2NoZWNrZWQ6Cj4gIHwgRXhhbXBsZSA0IChjb250Lik6ICJyIiBoYXMgaXRzIHZhbHVl
IGNoZWNrZWQgaW4gInIgPCAwIi4KPiAgfCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2Vu
dGQveG9yZy1jb25mLmM6MTA2OiBleGFtcGxlX2Fzc2lnbjogRXhhbXBsZQo+ICB8IDU6IEFzc2ln
bmluZzogInIiID0gcmV0dXJuIHZhbHVlIGZyb20gImZwcmludGYoZiwgIlNlY3Rpb24KPiAgfCBc
IlNlcnZlckZsYWdzXCJcbiIpIi4KPiAgfCBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2Vu
dGQveG9yZy1jb25mLmM6MTA2OiBleGFtcGxlX2NoZWNrZWQ6Cj4gIHwgRXhhbXBsZSA1IChjb250
Lik6ICJyIiBoYXMgaXRzIHZhbHVlIGNoZWNrZWQgaW4gInIgPCAwIi4KPiAgfCAjICA5OTd8ICAg
ICAgICAgICBwaWRmaWxlID0gZm9wZW4ocGlkZmlsZW5hbWUsICJ3Iik7Cj4gIHwgIyAgOTk4fCAg
ICAgICAgICAgaWYgKHBpZGZpbGUpIHsKPiAgfCAjICA5OTl8LT4gICAgICAgICAgICAgZnByaW50
ZihwaWRmaWxlLCAiJWRcbiIsIChpbnQpZ2V0cGlkKCkpOwo+ICB8ICMgMTAwMHwgICAgICAgICAg
ICAgICBmY2xvc2UocGlkZmlsZSk7Cj4gIHwgIyAxMDAxfCAgICAgICAgICAgfQo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNy
Yy92ZGFnZW50ZC92ZGFnZW50ZC5jIHwgNiArKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvdmRhZ2VudGQv
dmRhZ2VudGQuYyBiL3NyYy92ZGFnZW50ZC92ZGFnZW50ZC5jCj4gaW5kZXggNzJhM2UxMy4uNjNm
M2ExMiAxMDA2NDQKPiAtLS0gYS9zcmMvdmRhZ2VudGQvdmRhZ2VudGQuYwo+ICsrKyBiL3NyYy92
ZGFnZW50ZC92ZGFnZW50ZC5jCj4gQEAgLTk5Niw3ICs5OTYsMTEgQEAgc3RhdGljIHZvaWQgZGFl
bW9uaXplKHZvaWQpCj4gICAgICAgICAgfQo+ICAgICAgICAgIHBpZGZpbGUgPSBmb3BlbihwaWRm
aWxlbmFtZSwgInciKTsKPiAgICAgICAgICBpZiAocGlkZmlsZSkgewo+IC0gICAgICAgICAgICBm
cHJpbnRmKHBpZGZpbGUsICIlZFxuIiwgKGludClnZXRwaWQoKSk7Cj4gKyAgICAgICAgICAgIGlu
dCBwaWQgPSAoaW50KSBnZXRwaWQoKTsKPiArICAgICAgICAgICAgaW50IHIgPSBmcHJpbnRmKHBp
ZGZpbGUsICIlZFxuIiwgcGlkKTsKPiArICAgICAgICAgICAgaWYgKHIgPCAwKSB7Cj4gKyAgICAg
ICAgICAgICAgICBzeXNsb2coTE9HX0VSUiwgIkZhaWx1cmUgdG8gd3JpdGUgcGlkICVkIHRvIGZp
bGUgJXMiLCBwaWQsCj4gcGlkZmlsZW5hbWUpOwo+ICsgICAgICAgICAgICB9Cj4gICAgICAgICAg
ICAgIGZjbG9zZShwaWRmaWxlKTsKPiAgICAgICAgICB9Cj4gICAgICAgICAgYnJlYWs7CgpJIHdv
dWxkIHNheSBpdCdzIHByZXR0eSB3ZWlyZCB0byBnaXZlIGVycm9yIGlmIGEgcmFyZSBzaXR1YXRp
b24gaGFwcGVucwoodW5hYmxlIHRvIHdyaXRlIHNtYWxsIGRhdGEpIGJ1dCBpZiB3ZSBjYW5ub3Qg
Y3JlYXRlIHRoZSBmaWxlICh3aGljaAppcyBtdWNoIG1vcmUgY29tbW9uKSB0aGVyZSdzIG5vIHdh
cm5pbmcvZXJyb3IuCldoeSB5b3UgaGFkIHRvIGFkZCBhbiBhZGRpdGlvbmFsICJwaWQiIHZhcmlh
YmxlPwoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
