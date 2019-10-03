Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0035DC9E6C
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 14:31:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02BA06E9B5;
	Thu,  3 Oct 2019 12:31:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F456E9B5
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 12:31:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 99137970F1
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 12:31:34 +0000 (UTC)
Received: from lub.tlv (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B37310018F8;
 Thu,  3 Oct 2019 12:31:31 +0000 (UTC)
To: Victor Toso <victortoso@redhat.com>, spice-devel@lists.freedesktop.org
References: <20191003101423.732-1-victortoso@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <c24ce81a-9fbd-7694-9279-39b031c948e7@redhat.com>
Date: Thu, 3 Oct 2019 15:31:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191003101423.732-1-victortoso@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 03 Oct 2019 12:31:34 +0000 (UTC)
Subject: Re: [Spice-devel] [spice/tests/migrate v1 1/4] tests: migrate:
 default to not launch client
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
byA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gVGhpcyBzdXBwb3J0cyBkb2luZyBtaWdyYXRpb24g
d2l0aG91dCBhbnkgY2xpZW50IHRvIGJlIGNvbm5lY3RlZC4KPiBJZiB0ZXN0ZXIgd2FudHMgY2xp
ZW50LCBpdCBuZWVkcyB0byBwYXNzIGFuIG9wdGlvbiB0byAtLWNsaWVudC4KPiAKPiBDaGFuZ2Ug
b2YgZGVmYXVsdCBzdGlsbCBpcyB0byBrZWVwIHRoZSB0ZXN0IGFzIHNpbXBsZSBhcyBwb3NzaWJs
ZQo+IHdoZW4gbm8gYXJndW1lbnRzIGFyZSBnaXZlbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWN0
b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgoKQWNrLgoKVXJpLgoKPiAtLS0KPiAgIHRl
c3RzL21pZ3JhdGUucHkgfCAxNiArKysrKysrKysrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMv
bWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUucHkKPiBpbmRleCBiMTFiZWZkZC4uNWVkOWViYTQg
MTAwNzU1Cj4gLS0tIGEvdGVzdHMvbWlncmF0ZS5weQo+ICsrKyBiL3Rlc3RzL21pZ3JhdGUucHkK
PiBAQCAtNTcsNyArNTcsOCBAQCBkZWYgZ2V0X2FyZ3MoKToKPiAgICAgICBwYXJzZXIuYWRkX2Fy
Z3VtZW50KCctLXFlbXUnLCBkZXN0PSdxZW11JywgZGVmYXVsdD0nLi4vLi4vcWVtdS94ODZfNjQt
c29mdG1tdS9xZW11LXN5c3RlbS14ODZfNjQnKQo+ICAgICAgIHBhcnNlci5hZGRfYXJndW1lbnQo
Jy0tbG9nX2ZpbGVuYW1lJywgZGVzdD0nbG9nX2ZpbGVuYW1lJywgZGVmYXVsdD0nbWlncmF0ZS5s
b2cnKQo+ICAgICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0taW1hZ2UnLCBkZXN0PSdpbWFnZScs
IGRlZmF1bHQ9JycpCj4gLSAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWNsaWVudCcsIGRlc3Q9
J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywgY2hvaWNlcz1bJ3NwaWN5JywgJ3JlbW90ZS12aWV3
ZXInXSkKPiArICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tY2xpZW50JywgZGVzdD0nY2xpZW50
JywgZGVmYXVsdD0nbm9uZScsIGNob2ljZXM9WydzcGljeScsICdyZW1vdGUtdmlld2VyJywgJ25v
bmUnXSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgaGVscD0iQXV0b21hdGljYWxseSBsdW5j
aCBvbmUgb2Ygc3VwcG9ydGVkIGNsaWVudHMgb3Igbm9uZSAoZGVmYXVsdCkiKQo+ICAgICAgIHBh
cnNlci5hZGRfYXJndW1lbnQoJy0tdmRhZ2VudCcsIGRlc3Q9InZkYWdlbnQiLCBhY3Rpb249J3N0
b3JlX3RydWUnLCBkZWZhdWx0PUZhbHNlLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgaGVs
cD0iQXBwZW5kIG9wdGlvbnMgZm9yIGFnZW50J3MgdmlydHNlcmlhbHBvcnQiKQo+ICAgICAgIHBh
cnNlci5hZGRfYXJndW1lbnQoJy0td2FpdC11c2VyLWlucHV0JywgZGVzdD0id2FpdF91c2VyX2lu
cHV0IiwgYWN0aW9uPSdzdG9yZV90cnVlJywgZGVmYXVsdD1GYWxzZSwKPiBAQCAtMTQwLDcgKzE0
MSw3IEBAIGNsYXNzIE1pZ3JhdG9yKG9iamVjdCk6Cj4gICAKPiAgICAgICBkZWYgX19pbml0X18o
c2VsZiwgbG9nLCBjbGllbnQsIHFlbXVfZXhlYywgaW1hZ2UsIG1vbml0b3JfZmlsZXMsCj4gICAg
ICAgICAgICAgICAgICAgIHNwaWNlX3BvcnRzLCBtaWdyYXRpb25fcG9ydCwgdmRhZ2VudCk6Cj4g
LSAgICAgICAgc2VsZi5jbGllbnQgPSBjbGllbnQKPiArICAgICAgICBzZWxmLmNsaWVudCA9IGNs
aWVudCBpZiBjbGllbnQgIT0gIm5vbmUiIGVsc2UgTm9uZQo+ICAgICAgICAgICBzZWxmLmxvZyA9
IGxvZwo+ICAgICAgICAgICBzZWxmLnFlbXVfZXhlYyA9IHFlbXVfZXhlYwo+ICAgICAgICAgICBz
ZWxmLmltYWdlID0gaW1hZ2UKPiBAQCAtMTc3LDggKzE3OCwxMCBAQCBjbGFzcyBNaWdyYXRvcihv
YmplY3QpOgo+ICAgICAgICAgICB3YWl0X2FjdGl2ZShzZWxmLmFjdGl2ZS5xbXAsIFRydWUpCj4g
ICAgICAgICAgIHdhaXRfYWN0aXZlKHNlbGYudGFyZ2V0LnFtcCwgRmFsc2UpCj4gICAgICAgICAg
IGlmIG5vdCBzZWxmLmNvbm5lY3RlZF9jbGllbnQ6Cj4gLSAgICAgICAgICAgIHNlbGYuY29ubmVj
dGVkX2NsaWVudCA9IHN0YXJ0X2NsaWVudChjbGllbnQ9c2VsZi5jbGllbnQsIHNwaWNlX3BvcnQ9
c2VsZi5zcGljZV9wb3J0c1swXSkKPiAtICAgICAgICAgICAgd2FpdF9mb3JfZXZlbnQoc2VsZi5h
Y3RpdmUucW1wLCAnU1BJQ0VfSU5JVElBTElaRUQnKQo+ICsgICAgICAgICAgICBpZiBzZWxmLmNs
aWVudDoKPiArICAgICAgICAgICAgICAgIHNlbGYuY29ubmVjdGVkX2NsaWVudCA9IHN0YXJ0X2Ns
aWVudChjbGllbnQ9c2VsZi5jbGllbnQsIHNwaWNlX3BvcnQ9c2VsZi5zcGljZV9wb3J0c1swXSkK
PiArICAgICAgICAgICAgICAgIHdhaXRfZm9yX2V2ZW50KHNlbGYuYWN0aXZlLnFtcCwgJ1NQSUNF
X0lOSVRJQUxJWkVEJykKPiArCj4gICAgICAgICAgICAgICBpZiB3YWl0X2Zvcl91c2VyX2lucHV0
Ogo+ICAgICAgICAgICAgICAgICAgIHByaW50ICJ3YWl0aW5nIGZvciBFbnRlciB0byBzdGFydCBt
aWdyYXRpb25zIgo+ICAgICAgICAgICAgICAgICAgIHJhd19pbnB1dCgpCj4gQEAgLTE4OCw3ICsx
OTEsMTAgQEAgY2xhc3MgTWlncmF0b3Iob2JqZWN0KToKPiAgICAgICAgICAgc2VsZi5hY3RpdmUu
cW1wLmNtZCgnbWlncmF0ZScsIHsndXJpJzogJ3RjcDpsb2NhbGhvc3Q6JXMnICUgc2VsZi5taWdy
YXRpb25fcG9ydH0pCj4gICAgICAgICAgIHdhaXRfYWN0aXZlKHNlbGYuYWN0aXZlLnFtcCwgRmFs
c2UpCj4gICAgICAgICAgIHdhaXRfYWN0aXZlKHNlbGYudGFyZ2V0LnFtcCwgVHJ1ZSkKPiAtICAg
ICAgICB3YWl0X2Zvcl9ldmVudChzZWxmLnRhcmdldC5xbXAsICdTUElDRV9DT05ORUNURUQnKQo+
ICsKPiArICAgICAgICBpZiBzZWxmLmNvbm5lY3RlZF9jbGllbnQ6Cj4gKyAgICAgICAgICAgIHdh
aXRfZm9yX2V2ZW50KHNlbGYudGFyZ2V0LnFtcCwgJ1NQSUNFX0NPTk5FQ1RFRCcpCj4gKwo+ICAg
ICAgICAgICBkZWFkID0gc2VsZi5hY3RpdmUKPiAgICAgICAgICAgZGVhZC5xbXAuY21kKCJxdWl0
IikKPiAgICAgICAgICAgZGVhZC5xbXAuY2xvc2UoKQo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
