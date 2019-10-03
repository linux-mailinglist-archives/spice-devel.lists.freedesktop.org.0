Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C90C9EE8
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 14:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C3D6E161;
	Thu,  3 Oct 2019 12:54:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB756E161
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 12:54:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 83230316D8C4
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 12:54:25 +0000 (UTC)
Received: from lub.tlv (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B3DA110018F8;
 Thu,  3 Oct 2019 12:54:22 +0000 (UTC)
To: Victor Toso <victortoso@redhat.com>, spice-devel@lists.freedesktop.org
References: <20191003101423.732-1-victortoso@redhat.com>
 <20191003101423.732-4-victortoso@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <025a0e48-d4e4-ed57-8e1b-35ae86b0def7@redhat.com>
Date: Thu, 3 Oct 2019 15:54:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191003101423.732-4-victortoso@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 03 Oct 2019 12:54:25 +0000 (UTC)
Subject: Re: [Spice-devel] [spice/tests/migrate v1 4/4] tests: migrate: fix
 migration with --vdagent option
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
byA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gQmVmb3JlIHRoaXMgcGF0Y2gsIHJ1bm5pbmcgdGhl
IHRlc3Qgd2l0aCAtLXZkYWdlbnQgb3B0aW9uIHdvdWxkIGVycm9yCj4gaW4gdGhlIHNlY29uZCBt
aWdyYXRpb24gYXR0ZW1wdCB3aXRoOgo+IAo+ICAgfCBxZW11LXN5c3RlbS14ODZfNjQ6IFVua25v
d24gc2F2ZXZtIHNlY3Rpb24gb3IgaW5zdGFuY2UKPiAgIHwgJzAwMDA6MDA6MDQuMC92aXJ0aW8t
Y29uc29sZScgMC4gTWFrZSBzdXJlIHRoYXQgeW91ciBjdXJyZW50IFZNIHNldHVwCj4gICB8IG1h
dGNoZXMgeW91ciBzYXZlZCBWTSBzZXR1cCwgaW5jbHVkaW5nIGFueSBob3RwbHVnZ2VkIGRldmlj
ZXMKPiAKPiBUaGUgcmVhc29uIGlzIHRoYXQgdGFyZ2V0IGhvc3QgY3JlYXRlZCBmb3IgbWlncmF0
aW9uIHdhcyBsYWNraW5nIHRoZQo+IGNvbmZpZ3VyYXRpb24gZm9yIHZkYWdlbnQgdGhhdCBpcyBw
cmVzZW50IGluIHRoZSBmaXJzdCBzb3VyY2UvdGFyZ2V0Cj4gbWlncmF0aW9uIFZNcy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgoKTG9va3Mg
Z29vZCB0byBtZS4KClVyaS4KCj4gLS0tCj4gICB0ZXN0cy9taWdyYXRlLnB5IHwgMTkgKysrKysr
KysrKysrKy0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL21pZ3JhdGUucHkgYi90ZXN0cy9taWdy
YXRlLnB5Cj4gaW5kZXggOWFmZWI1OWMuLjVmMGYxM2EyIDEwMDc1NQo+IC0tLSBhL3Rlc3RzL21p
Z3JhdGUucHkKPiArKysgYi90ZXN0cy9taWdyYXRlLnB5Cj4gQEAgLTc3LDEwICs3NywxNyBAQCBk
ZWYgZ2V0X2FyZ3MoKToKPiAgICAgICAgICAgc3lzLmV4aXQoMSkKPiAgICAgICByZXR1cm4gYXJn
cwo+ICAgCj4gLWRlZiBzdGFydF9xZW11KHFlbXVfZXhlYywgaW1hZ2UsIHNwaWNlX3BvcnQsIHFt
cF9maWxlbmFtZSwgaW5jb21pbmdfcG9ydD1Ob25lLCBleHRyYV9hcmdzPVtdKToKPiArZGVmIHN0
YXJ0X3FlbXUocWVtdV9leGVjLCBpbWFnZSwgc3BpY2VfcG9ydCwgcW1wX2ZpbGVuYW1lLCBpbmNv
bWluZ19wb3J0PU5vbmUsIHdpdGhfYWdlbnQ9RmFsc2UpOgo+ICAgICAgIGluY29taW5nX2FyZ3Mg
PSBbXQo+ICAgICAgIGlmIGluY29taW5nX3BvcnQ6Cj4gICAgICAgICAgIGluY29taW5nX2FyZ3Mg
PSAoIi1pbmNvbWluZyB0Y3A6OiVzIiAlIGluY29taW5nX3BvcnQpLnNwbGl0KCkKPiArCj4gKyAg
ICBleHRyYV9hcmdzID0gW10KPiArICAgIGlmIHdpdGhfYWdlbnQ6Cj4gKyAgICAgICAgZXh0cmFf
YXJncyA9IFsnLWRldmljZScsICd2aXJ0aW8tc2VyaWFsJywKPiArICAgICAgICAgICAgICAgICAg
ICAgICctY2hhcmRldicsICdzcGljZXZtYyxuYW1lPXZkYWdlbnQsaWQ9dmRhZ2VudCcsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAnLWRldmljZScsICd2aXJ0c2VyaWFscG9ydCxjaGFyZGV2PXZk
YWdlbnQsbmFtZT1jb20ucmVkaGF0LnNwaWNlLjAnXQo+ICsKPiAgICAgICBhcmdzID0gKFtxZW11
X2V4ZWMsICItcW1wIiwgInVuaXg6JXMsc2VydmVyLG5vd2FpdCIgJSBxbXBfZmlsZW5hbWUsCj4g
ICAgICAgICAgICItc3BpY2UiLCAiZGlzYWJsZS10aWNrZXRpbmcscG9ydD0lcyIgJSBzcGljZV9w
b3J0XQo+ICAgICAgICAgICArIGluY29taW5nX2FyZ3MgKyBleHRyYV9hcmdzKQo+IEBAIC0xNDcs
MTMgKzE1NCwxMiBAQCBjbGFzcyBNaWdyYXRvcihvYmplY3QpOgo+ICAgICAgICAgICBzZWxmLm1v
bml0b3JfZmlsZXMgPSBtb25pdG9yX2ZpbGVzCj4gICAgICAgICAgIHNlbGYuc3BpY2VfcG9ydHMg
PSBzcGljZV9wb3J0cwo+ICAgICAgICAgICBzZWxmLnZkYWdlbnQgPSB2ZGFnZW50Cj4gLSAgICAg
ICAgZXh0cmFfYXJncyA9IFtdCj4gLSAgICAgICAgaWYgc2VsZi52ZGFnZW50Ogo+IC0gICAgICAg
ICAgICBleHRyYV9hcmdzID0gWyctZGV2aWNlJywgJ3ZpcnRpby1zZXJpYWwnLCAnLWNoYXJkZXYn
LCAnc3BpY2V2bWMsbmFtZT12ZGFnZW50LGlkPXZkYWdlbnQnLCAnLWRldmljZScsICd2aXJ0c2Vy
aWFscG9ydCxjaGFyZGV2PXZkYWdlbnQsbmFtZT1jb20ucmVkaGF0LnNwaWNlLjAnXQo+ICsKPiAg
ICAgICAgICAgc2VsZi5hY3RpdmUgPSBzdGFydF9xZW11KHFlbXVfZXhlYz1xZW11X2V4ZWMsIGlt
YWdlPWltYWdlLCBzcGljZV9wb3J0PXNwaWNlX3BvcnRzWzBdLAo+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBxbXBfZmlsZW5hbWU9bW9uaXRvcl9maWxlc1swXSwgZXh0cmFfYXJn
cz1leHRyYV9hcmdzKQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBxbXBfZmls
ZW5hbWU9bW9uaXRvcl9maWxlc1swXSwgd2l0aF9hZ2VudD1zZWxmLnZkYWdlbnQpCj4gICAgICAg
ICAgIHNlbGYudGFyZ2V0ID0gc3RhcnRfcWVtdShxZW11X2V4ZWM9cWVtdV9leGVjLCBpbWFnZT1p
bWFnZSwgc3BpY2VfcG9ydD1zcGljZV9wb3J0c1sxXSwKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcW1wX2ZpbGVuYW1lPW1vbml0b3JfZmlsZXNbMV0sIGluY29taW5nX3BvcnQ9
bWlncmF0aW9uX3BvcnQpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHFtcF9m
aWxlbmFtZT1tb25pdG9yX2ZpbGVzWzFdLCB3aXRoX2FnZW50PXNlbGYudmRhZ2VudCwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW5jb21pbmdfcG9ydD1taWdyYXRpb25fcG9y
dCkKPiAgICAgICAgICAgc2VsZi5yZW1vdmVfbW9uaXRvcl9maWxlcygpCj4gICAgICAgICAgIHNl
bGYuY29ubmVjdGVkX2NsaWVudCA9IE5vbmUKPiAgIAo+IEBAIC0yMDksNiArMjE1LDcgQEAgY2xh
c3MgTWlncmF0b3Iob2JqZWN0KToKPiAgICAgICAgICAgc2VsZi50YXJnZXQgPSBzdGFydF9xZW11
KHNwaWNlX3BvcnQ9bmV3X3NwaWNlX3BvcnQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcWVtdV9leGVjPXNlbGYucWVtdV9leGVjLCBpbWFnZT1zZWxmLmltYWdlLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHFtcF9maWxlbmFtZT1uZXdfcW1wX2ZpbGVuYW1lLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgd2l0aF9hZ2VudD1zZWxmLnZkYWdlbnQsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaW5jb21pbmdfcG9ydD1zZWxmLm1pZ3JhdGlvbl9w
b3J0KQo+ICAgICAgICAgICBwcmludCBzZWxmLm1pZ3JhdGlvbl9jb3VudAo+ICAgICAgICAgICBz
ZWxmLm1pZ3JhdGlvbl9jb3VudCArPSAxCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
