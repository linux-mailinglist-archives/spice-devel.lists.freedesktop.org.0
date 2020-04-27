Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E10691BA4B2
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 15:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775286E2CD;
	Mon, 27 Apr 2020 13:28:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 251E96E2CD
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587994112;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WDhimf4Da1w+Kd9bWuKcUPhUWgl2/6DIyW+hewfqqCo=;
 b=YH4JF8EkP5K2mv6UyCJJKlIF0hA2AuRHXSSF95JY5rWragmaEkaCQgVxz6Uop4cadmpeb0
 s/aHTy+8lT54P6q+gp8Pt4MGNN/FvcrgRq/zDwpEg5O6OcEwr+eoI6J6lhRlT9Oy2Q74y4
 Y3OBsPMt0lI0BYX8nA5LLv6l86NnJgY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-KxDxq2xKPHmy9toEYYx8ew-1; Mon, 27 Apr 2020 09:28:30 -0400
X-MC-Unique: KxDxq2xKPHmy9toEYYx8ew-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 638B1107ACCA;
 Mon, 27 Apr 2020 13:28:29 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.205])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 86C3B1000329;
 Mon, 27 Apr 2020 13:28:28 +0000 (UTC)
To: ole-krutov@yandex.ru,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
References: <5137131587976277@sas1-68ac888a1313.qloud-c.yandex.net>
 <fc22402d-a59e-7784-bf27-967544a92e02@redhat.com>
 <895531587990060@mail.yandex.ru>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <1dca33a8-bf5b-6476-756a-25114371e80b@redhat.com>
Date: Mon, 27 Apr 2020 16:28:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <895531587990060@mail.yandex.ru>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Spice-streaming-agent: is it possible to replace
 main display channel with agent's video stream?
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNC8yNy8yMCAzOjI0IFBNLCBvbGUta3J1dG92QHlhbmRleC5ydSB3cm90ZToKPiBIaSwKPiBJ
IGNhbiBzZXQgZGlzcGxheT1vZmYgb2YgY291cnNlLiBCdXQgaW4gdGhhdCBjYXNlIE52aWRpYSBG
QkMgCj4gKEZyYW1lQnVmZmVyIENhcHR1cmluZykgaXMgdW51c2FibGUuIEJ1dCB3ZSB0cnkgdG8g
bWFrZSBhbmQgdXNlIGEgcGx1Z2luIAo+IHRoYXQgdXNlcyB0aGF0IGZlYXR1cmUuIEkgdXNlIEdS
SUQgdkdQVXMuIHhvcmcuY29uZiBpcyBzZXQgdG8gdXNlIG52aWRpYSAKPiBjYXJkIC0tIGl0J3Mg
dGhlIHNhbWUgY29uZmlnIHRoYXQgd29ya3Mgd2l0aCBnc3QtcGx1Z2luLgoKSGksCgpNYXliZSB0
cnkgdG8gbW9kaWZ5IHNvbWUgc2V0dGluZ3MgaW4gRkJDLCBzdWNoIHRoYXQgaXQgd29ya3Mgd2l0
aCAKZGlzcGxheT1vZmYuCgpVcmkuCgoKPiAyNy4wNC4yMDIwLCAxNToyMCwgIlVyaSBMdWJsaW4i
IDx1cmlsQHJlZGhhdC5jb20+Ogo+IAo+ICAgICBPbiA0LzI3LzIwIDExOjMxIEFNLCBPbGVnIEty
dXRvdiB3cm90ZToKPiAKPiAgICAgICAgICDCoFdlIGFyZSB0cnlpbmcgdG8gbWFrZSBwbHVnaW4g
d2hpY2ggdXNlcyBudmlkaWEgRkJDICsgTlZFTkMKPiAgICAgICAgIGluc3RlYWQgb2YKPiAgICAg
ICAgICDCoGdzdC1wbHVnaW4uIFdoZW4gdXNpbmcgRkJDLCBJIG11c3Qgc2V0ICJkaXNwbGF5IiB0
byAib24iLCBlbHNlCj4gICAgICAgICBGQkMgaXMKPiAgICAgICAgICDCoHJlcG9ydGluZyBhcyBu
b3Qgc3VwcG9ydGVkLiBJIGNhbid0IGRvIHRoZSB0cmljayB3aXRoCj4gICAgICAgICBxeGwrbnZp
ZGlhIHdpdGgKPiAgICAgICAgICDCoGRpc3BsYXkgb2ZmIGFzIHdpdGggZ3N0LXBsdWdpbi4gVGh1
cywgdHdvIHNwaWNlIHdpbmRvd3MKPiAgICAgICAgIGFwcGVhciwgb25lIHdpdGgKPiAgICAgICAg
ICDCoG1haW4gZGlzcGxheSBjaGFubmVsIHdpdGggY2hvcHB5IHZpZGVvLCBhbmQgc2Vjb25kIC0t
IHdpdGggaDI2NAo+ICAgICAgICAgIMKgY29tcHJlc3NlZCBjYXB0dXJlZCB2aWRlby4gVGhlcmUg
aXMgbm8gbW91c2UgY29udHJvbHMgaW4KPiAgICAgICAgIHNlY29uZCB3aW5kb3csCj4gICAgICAg
ICAgwqBhbmQgZmlyc3Qgd2luZG93IGNvbnN1bWVzIG11Y2ggY3B1IGFuZCBuZXR3b3JrIGJhbmR3
aWR0aCB3aGVuCj4gICAgICAgICB2aWRlbyBvcgo+ICAgICAgICAgIMKgZHluYW1pYyBncmFwaGlj
cyBpcyBkaXNwbGF5ZWQuIFNvIGl0IHdvdWxkIGJlIGdyZWF0IHRvIHN0b3Agb3V0cHV0Cj4gICAg
ICAgICAgwqBwcmltYXJ5IGRpc3BsYXkgYW5kIHJlZGlyZWN0IGFnZW50J3MgdmlkZW8gc3RyZWFt
IGludG8gaXQuIElzCj4gICAgICAgICBpdCBzb21laG93Cj4gICAgICAgICAgwqBwb3NzaWJsZT8g
VGhhbmsgeW91Lgo+IAo+ICAgICAgICAgIMKgLS0KPiAgICAgICAgICDCoNCe0YLQv9GA0LDQstC7
0LXQvdC+INC40Lcg0LzQvtCx0LjQu9GM0L3QvtCz0L4g0L/RgNC40LvQvtC20LXQvdC40Y8g0K/Q
vdC00LXQutGBLtCf0L7Rh9GC0YsKPiAKPiAKPiAgICAgSGksCj4gCj4gICAgIFdoeSBjYW4geW91
IG5vdCBzZXQgZGlzcGxheT1vZmYgPwo+IAo+ICAgICBEaWQgeW91IGNvbmZpZ3VyZSB5b3VyIFgg
c2VydmVyIHRvIHVzZSB0aGUgTlZJRElBIEdQVSBvciB0aGUgUVhMID8KPiAKPiAgICAgV2hhdCBO
VklESUEgY2FyZCBhbmQgZHJpdmVyIGFyZSB5b3UgdXNpbmcgPwo+IAo+ICAgICBVcmkuCj4gCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
