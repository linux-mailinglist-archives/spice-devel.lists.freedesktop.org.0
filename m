Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D717AC9E9A
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 14:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1514389BF0;
	Thu,  3 Oct 2019 12:35:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ABAF89BF0
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 12:34:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AE66930BD1DE
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 12:34:57 +0000 (UTC)
Received: from lub.tlv (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 763E95D9DC;
 Thu,  3 Oct 2019 12:34:51 +0000 (UTC)
To: Victor Toso <victortoso@redhat.com>, spice-devel@lists.freedesktop.org
References: <20191003101423.732-1-victortoso@redhat.com>
 <20191003101423.732-2-victortoso@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <07ce7d94-6bb0-3ed8-ea85-bbb5c0fbbefb@redhat.com>
Date: Thu, 3 Oct 2019 15:34:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191003101423.732-2-victortoso@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 03 Oct 2019 12:34:57 +0000 (UTC)
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
dHMgcnVubmluZyBkaWZmZXJlbnQgdG9vbHMgKGdkYiwKPiB2YWxncmluZCkuCgpJdCBzZWVtcyB0
byBtZSBpdCdzIGFscmVhZHkgc29sdmVkIGJ5IC0td2FpdC11c2VyLWlucHV0LgpUaGUgdXNlciBj
YW4gc3RhcnQgdGhlIG1pZ3JhdGlvbiBvbmx5IGFmdGVyIHJ1bm5pbmcgdGhlIHRvb2wvY2xpZW50
LgoKVXJpLgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRo
YXQuY29tPgo+IC0tLQo+ICAgdGVzdHMvbWlncmF0ZS5weSB8IDEzICsrKysrKysrKy0tLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL3Rlc3RzL21pZ3JhdGUucHkgYi90ZXN0cy9taWdyYXRlLnB5Cj4gaW5kZXggNWVk
OWViYTQuLjg4ZTE3NjkxIDEwMDc1NQo+IC0tLSBhL3Rlc3RzL21pZ3JhdGUucHkKPiArKysgYi90
ZXN0cy9taWdyYXRlLnB5Cj4gQEAgLTYzLDYgKzYzLDggQEAgZGVmIGdldF9hcmdzKCk6Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICBoZWxwPSJBcHBlbmQgb3B0aW9ucyBmb3IgYWdlbnQncyB2
aXJ0c2VyaWFscG9ydCIpCj4gICAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS13YWl0LXVzZXIt
aW5wdXQnLCBkZXN0PSJ3YWl0X3VzZXJfaW5wdXQiLCBhY3Rpb249J3N0b3JlX3RydWUnLCBkZWZh
dWx0PUZhbHNlLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgaGVscD0iV2FpdCB1c2VyJ3Mg
aW5wdXQgdG8gc3RhcnQgbWlncmF0aW9uIHRlc3QiKQo+ICsgICAgcGFyc2VyLmFkZF9hcmd1bWVu
dCgnLS13YWl0LXVzZXItY29ubmVjdCcsIGRlc3Q9IndhaXRfdXNlcl9jb25uZWN0IiwgYWN0aW9u
PSdzdG9yZV90cnVlJywgZGVmYXVsdD1GYWxzZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
aGVscD0iV2FpdCBzcGljZSBjbGllbnQgdG8gY29ubmVjdCB0byBtb3ZlIHRvIG5leHQgc3RlcCBv
ZiBtaWdyYXRpb24gKGRlZmF1bHQgRmFsc2UpIikKPiAgICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50
KCctLWNvdW50JywgZGVzdD0nY291bnRlcicsIHR5cGU9aW50LCBkZWZhdWx0PTEwMCwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGhlbHA9Ik51bWJlciBvZiBtaWdyYXRpb25zIHRvIHJ1biAo
c2V0IDAgZm9yIGluZmluaXRlKSIpCj4gICAgICAgYXJncyA9IHBhcnNlci5wYXJzZV9hcmdzKHN5
cy5hcmd2WzE6XSkKPiBAQCAtMTc0LDI1ICsxNzYsMjggQEAgY2xhc3MgTWlncmF0b3Iob2JqZWN0
KToKPiAgICAgICAgICAgICAgIGlmIG9zLnBhdGguZXhpc3RzKHgpOgo+ICAgICAgICAgICAgICAg
ICAgIG9zLnVubGluayh4KQo+ICAgCj4gLSAgICBkZWYgaXRlcmF0ZShzZWxmLCB3YWl0X2Zvcl91
c2VyX2lucHV0PUZhbHNlKToKPiArICAgIGRlZiBpdGVyYXRlKHNlbGYsIHdhaXRfZm9yX3VzZXJf
aW5wdXQ9RmFsc2UsIHdhaXRfdXNlcl9jb25uZWN0PUZhbHNlKToKPiAgICAgICAgICAgd2FpdF9h
Y3RpdmUoc2VsZi5hY3RpdmUucW1wLCBUcnVlKQo+ICAgICAgICAgICB3YWl0X2FjdGl2ZShzZWxm
LnRhcmdldC5xbXAsIEZhbHNlKQo+ICAgICAgICAgICBpZiBub3Qgc2VsZi5jb25uZWN0ZWRfY2xp
ZW50Ogo+ICAgICAgICAgICAgICAgaWYgc2VsZi5jbGllbnQ6Cj4gICAgICAgICAgICAgICAgICAg
c2VsZi5jb25uZWN0ZWRfY2xpZW50ID0gc3RhcnRfY2xpZW50KGNsaWVudD1zZWxmLmNsaWVudCwg
c3BpY2VfcG9ydD1zZWxmLnNwaWNlX3BvcnRzWzBdKQo+IC0gICAgICAgICAgICAgICAgd2FpdF9m
b3JfZXZlbnQoc2VsZi5hY3RpdmUucW1wLCAnU1BJQ0VfSU5JVElBTElaRUQnKQo+ICAgCj4gICAg
ICAgICAgICAgICBpZiB3YWl0X2Zvcl91c2VyX2lucHV0Ogo+ICAgICAgICAgICAgICAgICAgIHBy
aW50ICJ3YWl0aW5nIGZvciBFbnRlciB0byBzdGFydCBtaWdyYXRpb25zIgo+ICAgICAgICAgICAg
ICAgICAgIHJhd19pbnB1dCgpCj4gICAKPiArICAgICAgICAjIFRlc3RlciBjYW4gbGF1bmNoIGl0
cyBvd24gY2xpZW50IG9yIHdlIHdhaXQgc3RhcnRfY2xpZW50KCkgdG8gY29ubmVjdAo+ICsgICAg
ICAgIGlmIHdhaXRfdXNlcl9jb25uZWN0Ogo+ICsgICAgICAgICAgICB3YWl0X2Zvcl9ldmVudChz
ZWxmLmFjdGl2ZS5xbXAsICdTUElDRV9JTklUSUFMSVpFRCcpCj4gKwo+ICAgICAgICAgICBzZWxm
LmFjdGl2ZS5xbXAuY21kKCdjbGllbnRfbWlncmF0ZV9pbmZvJywgeydwcm90b2NvbCc6J3NwaWNl
JywKPiAgICAgICAgICAgICAgICdob3N0bmFtZSc6J2xvY2FsaG9zdCcsICdwb3J0JzpzZWxmLnRh
cmdldC5zcGljZV9wb3J0fSkKPiAgICAgICAgICAgc2VsZi5hY3RpdmUucW1wLmNtZCgnbWlncmF0
ZScsIHsndXJpJzogJ3RjcDpsb2NhbGhvc3Q6JXMnICUgc2VsZi5taWdyYXRpb25fcG9ydH0pCj4g
ICAgICAgICAgIHdhaXRfYWN0aXZlKHNlbGYuYWN0aXZlLnFtcCwgRmFsc2UpCj4gICAgICAgICAg
IHdhaXRfYWN0aXZlKHNlbGYudGFyZ2V0LnFtcCwgVHJ1ZSkKPiAgIAo+IC0gICAgICAgIGlmIHNl
bGYuY29ubmVjdGVkX2NsaWVudDoKPiArICAgICAgICBpZiBzZWxmLmNvbm5lY3RlZF9jbGllbnQg
b3Igd2FpdF91c2VyX2Nvbm5lY3Q6Cj4gICAgICAgICAgICAgICB3YWl0X2Zvcl9ldmVudChzZWxm
LnRhcmdldC5xbXAsICdTUElDRV9DT05ORUNURUQnKQo+ICAgCj4gICAgICAgICAgIGRlYWQgPSBz
ZWxmLmFjdGl2ZQo+IEBAIC0yMjQsNyArMjI5LDcgQEAgZGVmIG1haW4oKToKPiAgICAgICBhdGV4
aXQucmVnaXN0ZXIoY2xlYW51cCwgbWlncmF0b3IpCj4gICAgICAgY291bnRlciA9IDAKPiAgICAg
ICB3aGlsZSBhcmdzLmNvdW50ZXIgPT0gMCBvciBjb3VudGVyIDwgYXJncy5jb3VudGVyOgo+IC0g
ICAgICAgIG1pZ3JhdG9yLml0ZXJhdGUoYXJncy53YWl0X3VzZXJfaW5wdXQpCj4gKyAgICAgICAg
bWlncmF0b3IuaXRlcmF0ZShhcmdzLndhaXRfdXNlcl9pbnB1dCwgYXJncy53YWl0X3VzZXJfY29u
bmVjdCkKPiAgICAgICAgICAgY291bnRlciArPSAxCj4gICAKPiAgIGlmIF9fbmFtZV9fID09ICdf
X21haW5fXyc6Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
