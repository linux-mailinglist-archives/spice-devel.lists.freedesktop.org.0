Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E812BDB09
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1ECA6EB5E;
	Wed, 25 Sep 2019 09:32:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891436EB5E
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:32:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2FEB910C094B
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:32:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 248C460C5D
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:32:09 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 18E591808876;
 Wed, 25 Sep 2019 09:32:09 +0000 (UTC)
Date: Wed, 25 Sep 2019 05:32:09 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1236926289.3205407.1569403929066.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190925090701.19130-6-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-6-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.21]
Thread-Topic: tests: migrate: remove multiple client option
Thread-Index: nEZRYnMu1yYf+HNhnBGsz8hBtZYbbw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Wed, 25 Sep 2019 09:32:09 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 5/8] tests: migrate: remove multiple
 client option
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gTm90IHN1cHBv
cnRlZCBmZWF0dXJlIHRvIGJlIHRlc3RlZCBzbyByZWR1Y2UgdW51c2VkL3VudGVzdGVkIGNvZGUg
Zm9yCj4gbm93Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJl
ZGhhdC5jb20+Cj4gLS0tCj4gIHRlc3RzL21pZ3JhdGUucHkgfCAxNCArKysrKystLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMvbWlncmF0ZS5weQo+IGluZGV4IDVj
YmM4MjE4Li4zMTU5M2M4YSAxMDA3NTUKPiAtLS0gYS90ZXN0cy9taWdyYXRlLnB5Cj4gKysrIGIv
dGVzdHMvbWlncmF0ZS5weQo+IEBAIC01NCw3ICs1NCw2IEBAIGRlZiBnZXRfYXJncygpOgo+ICAg
ICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1zcGljZV9wb3J0MScsIGRlc3Q9J3NwaWNlX3BvcnQx
JywgdHlwZT1pbnQsCj4gICAgICBkZWZhdWx0PTU5MTEpCj4gICAgICBwYXJzZXIuYWRkX2FyZ3Vt
ZW50KCctLXNwaWNlX3BvcnQyJywgZGVzdD0nc3BpY2VfcG9ydDInLCB0eXBlPWludCwKPiAgICAg
IGRlZmF1bHQ9NjkxMSkKPiAgICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tbWlncmF0ZV9wb3J0
JywgZGVzdD0nbWlncmF0ZV9wb3J0JywgdHlwZT1pbnQsCj4gICAgICBkZWZhdWx0PTgwMDApCj4g
LSAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWNsaWVudF9jb3VudCcsIGRlc3Q9J2NsaWVudF9j
b3VudCcsIHR5cGU9aW50LAo+IGRlZmF1bHQ9MSkKPiAgICAgIHBhcnNlci5hZGRfYXJndW1lbnQo
Jy0tcWVtdScsIGRlc3Q9J3FlbXUnLAo+ICAgICAgZGVmYXVsdD0nLi4vLi4vcWVtdS94ODZfNjQt
c29mdG1tdS9xZW11LXN5c3RlbS14ODZfNjQnKQo+ICAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgn
LS1sb2dfZmlsZW5hbWUnLCBkZXN0PSdsb2dfZmlsZW5hbWUnLAo+ICAgICAgZGVmYXVsdD0nbWln
cmF0ZS5sb2cnKQo+ICAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1pbWFnZScsIGRlc3Q9J2lt
YWdlJywgZGVmYXVsdD0nJykKPiBAQCAtMTM0LDE0ICsxMzMsMTMgQEAgY2xhc3MgTWlncmF0b3Io
b2JqZWN0KToKPiAgCj4gICAgICBtaWdyYXRpb25fY291bnQgPSAwCj4gIAo+IC0gICAgZGVmIF9f
aW5pdF9fKHNlbGYsIGxvZywgY2xpZW50LCBxZW11X2V4ZWMsIGltYWdlLCBtb25pdG9yX2ZpbGVz
LAo+IGNsaWVudF9jb3VudCwKPiArICAgIGRlZiBfX2luaXRfXyhzZWxmLCBsb2csIGNsaWVudCwg
cWVtdV9leGVjLCBpbWFnZSwgbW9uaXRvcl9maWxlcywKPiAgICAgICAgICAgICAgICAgICBzcGlj
ZV9wb3J0cywgbWlncmF0aW9uX3BvcnQsIHZkYWdlbnQpOgo+ICAgICAgICAgIHNlbGYuY2xpZW50
ID0gY2xpZW50Cj4gICAgICAgICAgc2VsZi5sb2cgPSBsb2cKPiAgICAgICAgICBzZWxmLnFlbXVf
ZXhlYyA9IHFlbXVfZXhlYwo+ICAgICAgICAgIHNlbGYuaW1hZ2UgPSBpbWFnZQo+ICAgICAgICAg
IHNlbGYubWlncmF0aW9uX3BvcnQgPSBtaWdyYXRpb25fcG9ydAo+IC0gICAgICAgIHNlbGYuY2xp
ZW50X2NvdW50ID0gY2xpZW50X2NvdW50Cj4gICAgICAgICAgc2VsZi5tb25pdG9yX2ZpbGVzID0g
bW9uaXRvcl9maWxlcwo+ICAgICAgICAgIHNlbGYuc3BpY2VfcG9ydHMgPSBzcGljZV9wb3J0cwo+
ICAgICAgICAgIHNlbGYudmRhZ2VudCA9IHZkYWdlbnQKPiBAQCAtMTc0LDEzICsxNzIsMTMgQEAg
Y2xhc3MgTWlncmF0b3Iob2JqZWN0KToKPiAgICAgICAgICB3YWl0X2FjdGl2ZShzZWxmLmFjdGl2
ZS5xbXAsIFRydWUpCj4gICAgICAgICAgd2FpdF9hY3RpdmUoc2VsZi50YXJnZXQucW1wLCBGYWxz
ZSkKPiAgICAgICAgICBpZiBsZW4oc2VsZi5jbGllbnRzKSA9PSAwOgo+IC0gICAgICAgICAgICBm
b3IgaSBpbiByYW5nZShzZWxmLmNsaWVudF9jb3VudCk6Cj4gLSAgICAgICAgICAgICAgICBzZWxm
LmNsaWVudHMuYXBwZW5kKHN0YXJ0X2NsaWVudChjbGllbnQ9c2VsZi5jbGllbnQsCj4gLSAgICAg
ICAgICAgICAgICAgICAgc3BpY2VfcG9ydD1zZWxmLnNwaWNlX3BvcnRzWzBdKSkKPiAtICAgICAg
ICAgICAgICAgIHdhaXRfZm9yX2V2ZW50KHNlbGYuYWN0aXZlLnFtcCwgJ1NQSUNFX0lOSVRJQUxJ
WkVEJykKPiArICAgICAgICAgICAgc2VsZi5jbGllbnRzLmFwcGVuZChzdGFydF9jbGllbnQoY2xp
ZW50PXNlbGYuY2xpZW50LAo+ICsgICAgICAgICAgICAgICAgc3BpY2VfcG9ydD1zZWxmLnNwaWNl
X3BvcnRzWzBdKSkKCldlaXJkIHRvIGhhdmUgYSAiY2xpZW50cyIgd2l0aCBqdXN0IG9uZSBjbGll
bnQsIGJ1dCAiY2xpZW50IiBpcyBhbHJlYWR5CnRha2VuCgo+ICsgICAgICAgICAgICB3YWl0X2Zv
cl9ldmVudChzZWxmLmFjdGl2ZS5xbXAsICdTUElDRV9JTklUSUFMSVpFRCcpCj4gICAgICAgICAg
ICAgIGlmIHdhaXRfZm9yX3VzZXJfaW5wdXQ6Cj4gICAgICAgICAgICAgICAgICBwcmludCAid2Fp
dGluZyBmb3IgRW50ZXIgdG8gc3RhcnQgbWlncmF0aW9ucyIKPiAgICAgICAgICAgICAgICAgIHJh
d19pbnB1dCgpCj4gKwo+ICAgICAgICAgIHNlbGYuYWN0aXZlLnFtcC5jbWQoJ2NsaWVudF9taWdy
YXRlX2luZm8nLCB7J3Byb3RvY29sJzonc3BpY2UnLAo+ICAgICAgICAgICAgICAnaG9zdG5hbWUn
Oidsb2NhbGhvc3QnLCAncG9ydCc6c2VsZi50YXJnZXQuc3BpY2VfcG9ydH0pCj4gICAgICAgICAg
c2VsZi5hY3RpdmUucW1wLmNtZCgnbWlncmF0ZScsIHsndXJpJzogJ3RjcDpsb2NhbGhvc3Q6JXMn
ICUKPiAgICAgICAgICBzZWxmLm1pZ3JhdGlvbl9wb3J0fSkKPiBAQCAtMjEyLDcgKzIxMCw3IEBA
IGRlZiBtYWluKCk6Cj4gICAgICBtaWdyYXRvciA9IE1pZ3JhdG9yKGNsaWVudD1hcmdzLmNsaWVu
dCwgcWVtdV9leGVjPWFyZ3MucWVtdV9leGVjLAo+ICAgICAgICAgIGltYWdlPWFyZ3MuaW1hZ2Us
IGxvZz1sb2csIG1vbml0b3JfZmlsZXM9W2FyZ3MucW1wMSwgYXJncy5xbXAyXSwKPiAgICAgICAg
ICBtaWdyYXRpb25fcG9ydD1hcmdzLm1pZ3JhdGVfcG9ydCwgc3BpY2VfcG9ydHM9W2FyZ3Muc3Bp
Y2VfcG9ydDEsCj4gLSAgICAgICAgYXJncy5zcGljZV9wb3J0Ml0sIGNsaWVudF9jb3VudD1hcmdz
LmNsaWVudF9jb3VudCwKPiB2ZGFnZW50PShhcmdzLnZkYWdlbnQ9PSdvbicpKQo+ICsgICAgICAg
IGFyZ3Muc3BpY2VfcG9ydDJdLCB2ZGFnZW50PShhcmdzLnZkYWdlbnQ9PSdvbicpKQo+ICAgICAg
YXRleGl0LnJlZ2lzdGVyKGNsZWFudXAsIG1pZ3JhdG9yKQo+ICAgICAgd2hpbGUgVHJ1ZToKPiAg
ICAgICAgICBtaWdyYXRvci5pdGVyYXRlKCkKCk90aGVyd2lzZSwKICBBY2tlZC1ieTogRnJlZGlh
bm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpGcmVkaWFubwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
