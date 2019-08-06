Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE26830C4
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 13:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4B66E35F;
	Tue,  6 Aug 2019 11:35:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B893C6E35F
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 11:35:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 392DCE77D6
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 11:35:30 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A29B5D71A;
 Tue,  6 Aug 2019 11:35:29 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190806093947.948-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <6c96b812-3f4c-8f2d-e31e-6e99c233c38e@redhat.com>
Date: Tue, 6 Aug 2019 14:35:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190806093947.948-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 06 Aug 2019 11:35:30 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-html5] Fix double string termination
 in HTML page
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

T24gOC82LzE5IDEyOjM5IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpBY2suCgo+IC0tLQo+ICAg
c3BpY2UuaHRtbCB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zcGljZS5odG1sIGIvc3BpY2UuaHRtbAo+IGlu
ZGV4IDE3N2NmYzIuLmZjMWFkZjYgMTAwNjQ0Cj4gLS0tIGEvc3BpY2UuaHRtbAo+ICsrKyBiL3Nw
aWNlLmh0bWwKPiBAQCAtMTc2LDcgKzE3Niw3IEBACj4gICAgICAgICAgICAgICA8bGFiZWwgZm9y
PSJob3N0Ij5Ib3N0OjwvbGFiZWw+IDxpbnB1dCB0eXBlPSd0ZXh0JyBpZD0naG9zdCcgdmFsdWU9
J2xvY2FsaG9zdCc+IDwhLS0gbG9jYWxob3N0IC0tPgo+ICAgICAgICAgICAgICAgPGxhYmVsIGZv
cj0icG9ydCI+UG9ydDo8L2xhYmVsPiA8aW5wdXQgdHlwZT0ndGV4dCcgaWQ9J3BvcnQnIHZhbHVl
PSc1OTU5Jz4KPiAgICAgICAgICAgICAgIDxsYWJlbCBmb3I9InBhc3N3b3JkIj5QYXNzd29yZDo8
L2xhYmVsPiA8aW5wdXQgdHlwZT0ncGFzc3dvcmQnIGlkPSdwYXNzd29yZCcgdmFsdWU9Jyc+Cj4g
LSAgICAgICAgICAgIDxsYWJlbCBmb3I9InNob3dfY29uc29sZSI+U2hvdyBjb25zb2xlIDwvbGFi
ZWw+PGlucHV0IHR5cGU9ImNoZWNrYm94IiBpZD0ic2hvd19jb25zb2xlIiB2YWx1ZT0iMSIiPgo+
ICsgICAgICAgICAgICA8bGFiZWwgZm9yPSJzaG93X2NvbnNvbGUiPlNob3cgY29uc29sZSA8L2xh
YmVsPjxpbnB1dCB0eXBlPSJjaGVja2JveCIgaWQ9InNob3dfY29uc29sZSIgdmFsdWU9IjEiPgo+
ICAgICAgICAgICAgICAgPGJ1dHRvbiBpZD0iY29ubmVjdEJ1dHRvbiI+U3RhcnQ8L2J1dHRvbj4K
PiAgICAgICAgICAgPC9kaXY+Cj4gICAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
