Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF6D1EBE24
	for <lists+spice-devel@lfdr.de>; Tue,  2 Jun 2020 16:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C646E3EE;
	Tue,  2 Jun 2020 14:30:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 208936E3EE
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Jun 2020 14:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591108254;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NVW2ltFKJOS9XB2k5aMUwMjI7R57JoGZDllmIo0yL7Q=;
 b=NTcL6hepXMTa+y+ovkbOY04rqvcZWnOJsDApJ6v2jLu8ApkJmdQzmURZtoXONIfx2LdW9O
 0lZHKnvFUjMI8HoCdjZ2M2ufRMPdk+K0suc9yMtIafPAG6xTdd+kKaTmduYakJxTXjvHBm
 xokFg3I9LMHxW1RYSCn3z8pirCOsBEE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-EkMbLa5LMwqJvlwj6sdQkg-1; Tue, 02 Jun 2020 10:30:46 -0400
X-MC-Unique: EkMbLa5LMwqJvlwj6sdQkg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18D3480058E;
 Tue,  2 Jun 2020 14:30:45 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.24])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D61865D9DD;
 Tue,  2 Jun 2020 14:30:43 +0000 (UTC)
To: ole-krutov@yandex.ru, Frediano Ziglio <fziglio@redhat.com>
References: <2062121591020278@mail.yandex.ru>
 <191822355.28679337.1591021618597.JavaMail.zimbra@redhat.com>
 <1516151591025233@mail.yandex.ru>
 <c663aa55-9b44-6211-6898-e4930b8dae24@redhat.com>
 <118741591105408@mail.yandex.ru>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <599d5340-6b36-36c3-7a4c-875ca16e3b0d@redhat.com>
Date: Tue, 2 Jun 2020 17:30:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <118741591105408@mail.yandex.ru>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] No mouse under Win 10 when Nvidia drivers are
 active
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Reply-To: uril@redhat.com
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNi8yLzIwIDQ6NTAgUE0sIG9sZS1rcnV0b3ZAeWFuZGV4LnJ1IHdyb3RlOgo+IEhpLAo+IE5v
LCBJIGRvIG5vdCB1c2Ugc3BpY2Utc3RyZWFtaW5nLWFnZW50IHdpdGggd2luZG93cyBWTSBhdCBh
bGwuCgpIb3cgZG8geW91IHNlZSB0aGUgTlZJRElBIHdpbmRvdyBvbiB0aGUgY2xpZW50ID8KCgo+
IDAxLjA2LjIwMjAsIDIyOjI0LCAiVXJpIEx1YmxpbiIgPHVyaWxAcmVkaGF0LmNvbT46Cj4gCj4g
ICAgIE9uIDYvMS8yMCA2OjU5IFBNLCBvbGUta3J1dG92QHlhbmRleC5ydQo+ICAgICA8bWFpbHRv
Om9sZS1rcnV0b3ZAeWFuZGV4LnJ1PiB3cm90ZToKPiAKPiAgICAgICAgICDCoE5vdyBJIGhhdmUg
dHJpZWQgZGlmZmVyZW50IGNvbWJpbmF0aW9ucyBvZiB2ZC1hZ2VudCBzdGF0ZSBhbmQKPiAgICAg
ICAgIG1vdXNlCj4gICAgICAgICAgwqBjdXJzb3IgdHlwZS4gSW4gbm8gY2FzZSBtb3VzZSBjdXJz
b3Igd2FzIHZpc2libGUgb24gbnZpZGlhIGRpc3BsYXkKPiAgICAgICAgICDCoHdpbmRvdy4gV2l0
aCBkdWFsIGRpc3BsYXksIHF4bCtudmlkaWEsIHN0b3BwaW5nIHZkLWFnZW50IG1hZGUKPiAgICAg
ICAgIGN1cnNvcgo+ICAgICAgICAgIMKgdmlzaWJsZSBvbiBxeGwgd2luZG93LiBSZWFjdGlvbiB0
byBtb3VzZSBldmVudHMgd2FzIHNlZW4gb24gbnZpZGlhCj4gICAgICAgICAgwqB3aW5kb3cgdG9v
LCBidXQgd2l0aCBpbnZpc2libGUgbW91c2UgY3Vyc29yLgo+IAo+IAo+IAo+ICAgICBIaSwKPiAK
PiAgICAgSSBhc3N1bWUgeW91IGhhdmUgeW91ciBvd24gc3BpY2Utc3RyZWFtaW5nLWFnZW50IHBs
dWdpbi4KPiAKPiAgICAgRG9lcyBpdCBzdXBwb3J0IHRoZSBkaXNwbGF5X2luZm8gaW50ZXJmYWNl
ID8KPiAKPiAgICAgVXJpCj4gCj4gICAgICAgICAgwqAwMS4wNi4yMDIwLCAxNzoyNywgIkZyZWRp
YW5vIFppZ2xpbyIgPGZ6aWdsaW9AcmVkaGF0LmNvbQo+ICAgICAgICAgPG1haWx0bzpmemlnbGlv
QHJlZGhhdC5jb20+PjoKPiAKPiAgICAgICAgICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgSGkgYWxs
LAo+ICAgICAgICAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3aGVuIGp1c3QgcXhsIGFkYXB0ZXIg
aXMgYXR0YWNoZWQgdG8gVk0gYWxsIHdvcmtzCj4gICAgICAgICB3ZWxsLiBCdXQKPiAgICAgICAg
ICDCoMKgwqDCoMKgwqDCoMKgwqB3aGVuIE52aWRpYSBHUklECj4gICAgICAgICAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGluc3RhbmNlIGlzIGF0dGFjaGVkIGFuZCBpdHMgZHJpdmVycyBhcmUgcnVu
bmluZywKPiAgICAgICAgIG1vdXNlIGN1cnNvcgo+ICAgICAgICAgIMKgwqDCoMKgwqDCoMKgwqDC
oGlzIG5ldmVyCj4gICAgICAgICAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNob3duIG9uIGl0cyBk
aXNwbGF5IHdpbmRvdy4gU29tZXRpbWVzIGl0J3MganVzdAo+ICAgICAgICAgaW52aXNpYmxlIGJ1
dAo+ICAgICAgICAgIMKgwqDCoMKgwqDCoMKgwqDCoGFjdGl2ZSBhbmQKPiAgICAgICAgICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmVhY3RpbmcgdG8gbW91c2UgbW92ZW1lbnRzLCBjbGlja3MgYW5k
IHdoZWVsIHNjcm9sbGluZywKPiAgICAgICAgICDCoMKgwqDCoMKgwqDCoMKgwqBzb21ldGltZXMg
aXQncwo+ICAgICAgICAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0b3RhbGx5IG1pc3NpbmcuIFRo
aXMgYmVoYXZpb3VyIGlzIGEgYml0IGRlcGVuZGVudCBvZiBpcwo+ICAgICAgICAgIMKgwqDCoMKg
wqDCoMKgwqDCoE52aWRpYSBhZGFwdGVyCj4gICAgICAgICAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGFsb25lIG9yIHRvZ2V0aGVyIHdpdGggcXhsLiBKdXN0IHNvbWV0aW1lcyBtb3VzZQo+ICAgICAg
ICAgY3Vyc29yIGlzCj4gICAgICAgICAgwqDCoMKgwqDCoMKgwqDCoMKgdmlzaWJsZSBvbiBxeGwK
PiAgICAgICAgICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheSBidXQgaXQncyB2ZXJ5IHVu
c3RhYmxlIGFuZCB0b3RhbGx5IHVudXNhYmxlLgo+ICAgICAgICAgU2ltaWxhcgo+ICAgICAgICAg
IMKgwqDCoMKgwqDCoMKgwqDCoGJlaGF2aW91ciBpcwo+ICAgICAgICAgIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB1bmRlciBsaW51eCBWTSB0b28uIElzIGl0IG5vcm1hbCAid29uJ3QgZml4IiBzdGF0
ZSwKPiAgICAgICAgIG9yIGNhbiBJCj4gICAgICAgICAgwqDCoMKgwqDCoMKgwqDCoMKgcHJvdmlk
ZSBzb21lCj4gICAgICAgICAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkZGl0aW9uYWwgaW5mbz8g
V2luZG93cyBoYXMgbGF0ZXN0IHZkLWFnZW50IGFuZAo+ICAgICAgICAgc3BpY2UtYWdlbnQKPiAg
ICAgICAgICDCoMKgwqDCoMKgwqDCoMKgwqBpbnN0YWxsZWQuCj4gCj4gCj4gICAgICAgICAgwqDC
oMKgwqDCoEhpLAo+ICAgICAgICAgIMKgwqDCoMKgwqDCoMKgwqByZWNlbnRseSB3ZSBnb3Qgc2lt
aWxhciByZXBvcnRzLiBDYW4geW91IHRyeSB0byBzZWUKPiAgICAgICAgIHdoYXQncyBoYXBwZW4g
aWYKPiAgICAgICAgICDCoMKgwqDCoMKgeW91IGRpc2FibGUgdGhlIGFnZW50Pwo+IAo+ICAgICAg
ICAgIMKgwqDCoMKgwqBJdCBzZWVtcyB0aGF0IGluIHRoZXNlIGNvbmRpdGlvbnMgdGhlIGFnZW50
IGlzIG5vdCBhYmxlIHRvCj4gICAgICAgICBoYW5kbGUKPiAgICAgICAgICDCoMKgwqDCoMKgdGhl
IG1vdXNlCj4gICAgICAgICAgwqDCoMKgwqDCoHNvIG1vdXNlIGV2ZW50cyBhcmUgImxvc3QiLgo+
IAo+ICAgICAgICAgIMKgwqDCoMKgwqBBbm90aGVyIHRlc3Qgd291bGQgeW91IGNvdWxkIGRvIGlz
IHRvIHVzZSB0aGUgInNwaWN5Igo+ICAgICAgICAgdXRpbGl0eS4gVGhpcwo+ICAgICAgICAgIMKg
wqDCoMKgwqB1dGlsaXR5Cj4gICAgICAgICAgwqDCoMKgwqDCoGhhcyBhbiBvcHRpb24gdG8gc3dp
dGNoIG1hbnVhbGx5IHRoZSBtb3VzZSBtb2RlCj4gICAgICAgICAoc2VydmVyL2NsaWVudCkuIEl0
Cj4gICAgICAgICAgwqDCoMKgwqDCoHdvdWxkIGJlCj4gICAgICAgICAgwqDCoMKgwqDCoGhlbHBm
dWwgdG8gdW5kZXJzdGFuZCBkaWZmZXJlbnQgYmVoYXZpb3VyIHVzaW5nIHRoZSAyIG1vZGVzLgo+
IAo+ICAgICAgICAgIMKgwqDCoMKgwqBGcmVkaWFubwo+IAo+IAo+ICAgICAgICAgIMKgX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgICAgICDCoFNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdAo+ICAgICAgICAgU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gICAgICAgICA8bWFpbHRvOlNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZz4KPiAgICAgICAgIGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWwKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbAo=
