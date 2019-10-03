Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E82DCA021
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 16:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E8676E9ED;
	Thu,  3 Oct 2019 14:13:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 165A86E9ED
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 14:13:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 932A189AC5
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 14:13:52 +0000 (UTC)
Received: from lub.tlv (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3268860E1C;
 Thu,  3 Oct 2019 14:13:48 +0000 (UTC)
To: Victor Toso <victortoso@redhat.com>, spice-devel@lists.freedesktop.org
References: <20191003101423.732-1-victortoso@redhat.com>
 <20191003101423.732-2-victortoso@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <100ed97c-3e9f-68ec-511d-c078abaf5dd3@redhat.com>
Date: Thu, 3 Oct 2019 17:13:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191003101423.732-2-victortoso@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 03 Oct 2019 14:13:52 +0000 (UTC)
Subject: Re: [Spice-devel] [spice/tests/migrate v1 2/4] tests: migrate: wait
 user launch client option
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMTAvMy8xOSAxOjE0IFBNLCBWaWN0b3IgVG9zbyB3cm90ZToKPiBGcm9tOiBWaWN0b3IgVG9z
byA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gVXNlZnVsIHRvIHRlc3QgZGlmZmVyZW50IGNsaWVu
dHMgcnVubmluZyBkaWZmZXJlbnQgdG9vbHMgKGdkYiwKPiB2YWxncmluZCkuCj4gCj4gU2lnbmVk
LW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPiAtLS0KPiAgIHRl
c3RzL21pZ3JhdGUucHkgfCAxMyArKysrKysrKystLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9taWdy
YXRlLnB5IGIvdGVzdHMvbWlncmF0ZS5weQo+IGluZGV4IDVlZDllYmE0Li44OGUxNzY5MSAxMDA3
NTUKPiAtLS0gYS90ZXN0cy9taWdyYXRlLnB5Cj4gKysrIGIvdGVzdHMvbWlncmF0ZS5weQo+IEBA
IC02Myw2ICs2Myw4IEBAIGRlZiBnZXRfYXJncygpOgo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgaGVscD0iQXBwZW5kIG9wdGlvbnMgZm9yIGFnZW50J3MgdmlydHNlcmlhbHBvcnQiKQo+ICAg
ICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0td2FpdC11c2VyLWlucHV0JywgZGVzdD0id2FpdF91
c2VyX2lucHV0IiwgYWN0aW9uPSdzdG9yZV90cnVlJywgZGVmYXVsdD1GYWxzZSwKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGhlbHA9IldhaXQgdXNlcidzIGlucHV0IHRvIHN0YXJ0IG1pZ3Jh
dGlvbiB0ZXN0IikKPiArICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0td2FpdC11c2VyLWNvbm5l
Y3QnLCBkZXN0PSJ3YWl0X3VzZXJfY29ubmVjdCIsIGFjdGlvbj0nc3RvcmVfdHJ1ZScsIGRlZmF1
bHQ9RmFsc2UsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIGhlbHA9IldhaXQgc3BpY2UgY2xp
ZW50IHRvIGNvbm5lY3QgdG8gbW92ZSB0byBuZXh0IHN0ZXAgb2YgbWlncmF0aW9uIChkZWZhdWx0
IEZhbHNlKSIpCgpDb25zaWRlciBhZGRpbmcgYSBjaGVjayBmb3IgYm90aCAgLS13YWl0LXVzZXIt
Y29ubmVjdCBhbmQgLS1jbGllbnQ9bm9uLW5vbmUKKHdoaWNoIEkgZXhwZWN0IHdpbGwgYnJlYWsg
c29tZXRoaW5nKQoKVXJpLgoKPiAgICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWNvdW50Jywg
ZGVzdD0nY291bnRlcicsIHR5cGU9aW50LCBkZWZhdWx0PTEwMCwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGhlbHA9Ik51bWJlciBvZiBtaWdyYXRpb25zIHRvIHJ1biAoc2V0IDAgZm9yIGlu
ZmluaXRlKSIpCj4gICAgICAgYXJncyA9IHBhcnNlci5wYXJzZV9hcmdzKHN5cy5hcmd2WzE6XSkK
PiBAQCAtMTc0LDI1ICsxNzYsMjggQEAgY2xhc3MgTWlncmF0b3Iob2JqZWN0KToKPiAgICAgICAg
ICAgICAgIGlmIG9zLnBhdGguZXhpc3RzKHgpOgo+ICAgICAgICAgICAgICAgICAgIG9zLnVubGlu
ayh4KQo+ICAgCj4gLSAgICBkZWYgaXRlcmF0ZShzZWxmLCB3YWl0X2Zvcl91c2VyX2lucHV0PUZh
bHNlKToKPiArICAgIGRlZiBpdGVyYXRlKHNlbGYsIHdhaXRfZm9yX3VzZXJfaW5wdXQ9RmFsc2Us
IHdhaXRfdXNlcl9jb25uZWN0PUZhbHNlKToKPiAgICAgICAgICAgd2FpdF9hY3RpdmUoc2VsZi5h
Y3RpdmUucW1wLCBUcnVlKQo+ICAgICAgICAgICB3YWl0X2FjdGl2ZShzZWxmLnRhcmdldC5xbXAs
IEZhbHNlKQo+ICAgICAgICAgICBpZiBub3Qgc2VsZi5jb25uZWN0ZWRfY2xpZW50Ogo+ICAgICAg
ICAgICAgICAgaWYgc2VsZi5jbGllbnQ6Cj4gICAgICAgICAgICAgICAgICAgc2VsZi5jb25uZWN0
ZWRfY2xpZW50ID0gc3RhcnRfY2xpZW50KGNsaWVudD1zZWxmLmNsaWVudCwgc3BpY2VfcG9ydD1z
ZWxmLnNwaWNlX3BvcnRzWzBdKQo+IC0gICAgICAgICAgICAgICAgd2FpdF9mb3JfZXZlbnQoc2Vs
Zi5hY3RpdmUucW1wLCAnU1BJQ0VfSU5JVElBTElaRUQnKQo+ICAgCj4gICAgICAgICAgICAgICBp
ZiB3YWl0X2Zvcl91c2VyX2lucHV0Ogo+ICAgICAgICAgICAgICAgICAgIHByaW50ICJ3YWl0aW5n
IGZvciBFbnRlciB0byBzdGFydCBtaWdyYXRpb25zIgo+ICAgICAgICAgICAgICAgICAgIHJhd19p
bnB1dCgpCj4gICAKPiArICAgICAgICAjIFRlc3RlciBjYW4gbGF1bmNoIGl0cyBvd24gY2xpZW50
IG9yIHdlIHdhaXQgc3RhcnRfY2xpZW50KCkgdG8gY29ubmVjdAo+ICsgICAgICAgIGlmIHdhaXRf
dXNlcl9jb25uZWN0Ogo+ICsgICAgICAgICAgICB3YWl0X2Zvcl9ldmVudChzZWxmLmFjdGl2ZS5x
bXAsICdTUElDRV9JTklUSUFMSVpFRCcpCj4gKwo+ICAgICAgICAgICBzZWxmLmFjdGl2ZS5xbXAu
Y21kKCdjbGllbnRfbWlncmF0ZV9pbmZvJywgeydwcm90b2NvbCc6J3NwaWNlJywKPiAgICAgICAg
ICAgICAgICdob3N0bmFtZSc6J2xvY2FsaG9zdCcsICdwb3J0JzpzZWxmLnRhcmdldC5zcGljZV9w
b3J0fSkKPiAgICAgICAgICAgc2VsZi5hY3RpdmUucW1wLmNtZCgnbWlncmF0ZScsIHsndXJpJzog
J3RjcDpsb2NhbGhvc3Q6JXMnICUgc2VsZi5taWdyYXRpb25fcG9ydH0pCj4gICAgICAgICAgIHdh
aXRfYWN0aXZlKHNlbGYuYWN0aXZlLnFtcCwgRmFsc2UpCj4gICAgICAgICAgIHdhaXRfYWN0aXZl
KHNlbGYudGFyZ2V0LnFtcCwgVHJ1ZSkKPiAgIAo+IC0gICAgICAgIGlmIHNlbGYuY29ubmVjdGVk
X2NsaWVudDoKPiArICAgICAgICBpZiBzZWxmLmNvbm5lY3RlZF9jbGllbnQgb3Igd2FpdF91c2Vy
X2Nvbm5lY3Q6Cj4gICAgICAgICAgICAgICB3YWl0X2Zvcl9ldmVudChzZWxmLnRhcmdldC5xbXAs
ICdTUElDRV9DT05ORUNURUQnKQo+ICAgCj4gICAgICAgICAgIGRlYWQgPSBzZWxmLmFjdGl2ZQo+
IEBAIC0yMjQsNyArMjI5LDcgQEAgZGVmIG1haW4oKToKPiAgICAgICBhdGV4aXQucmVnaXN0ZXIo
Y2xlYW51cCwgbWlncmF0b3IpCj4gICAgICAgY291bnRlciA9IDAKPiAgICAgICB3aGlsZSBhcmdz
LmNvdW50ZXIgPT0gMCBvciBjb3VudGVyIDwgYXJncy5jb3VudGVyOgo+IC0gICAgICAgIG1pZ3Jh
dG9yLml0ZXJhdGUoYXJncy53YWl0X3VzZXJfaW5wdXQpCj4gKyAgICAgICAgbWlncmF0b3IuaXRl
cmF0ZShhcmdzLndhaXRfdXNlcl9pbnB1dCwgYXJncy53YWl0X3VzZXJfY29ubmVjdCkKPiAgICAg
ICAgICAgY291bnRlciArPSAxCj4gICAKPiAgIGlmIF9fbmFtZV9fID09ICdfX21haW5fXyc6Cj4g
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
