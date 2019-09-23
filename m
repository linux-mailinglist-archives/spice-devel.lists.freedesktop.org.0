Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0533ABB00A
	for <lists+spice-devel@lfdr.de>; Mon, 23 Sep 2019 10:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2907E6E22E;
	Mon, 23 Sep 2019 08:54:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3570C6E22E
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 08:54:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B19DE2CE953
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 08:54:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AA4EB5C1D6
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 08:54:22 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A1FC318089C8
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 08:54:22 +0000 (UTC)
Date: Mon, 23 Sep 2019 04:54:21 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1479680305.2807406.1569228861654.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190910092134.19105-1-fziglio@redhat.com>
References: <20190910092134.19105-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.27]
Thread-Topic: spicy: Do not call gst_init directly
Thread-Index: +n/8IY3zCq+GuC5kFR/iIP6ukc4P4g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 23 Sep 2019 08:54:22 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spicy: Do not call gst_init
 directly
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBHU3RyZWFtZXIgaXMgYWxyZWFkeSBpbml0aWFsaXplZCB1c2luZyBnc3RfaW5p
dF9nZXRfb3B0aW9uX2dyb3VwIGFuZAo+IGdzdF9pbml0X2dldF9vcHRpb25fZ3JvdXAuCj4gCj4g
RnJvbSBnc3RfaW5pdCBkb2N1bWVudGF0aW9uOgo+ICAgIFdBUk5JTkc6IFRoaXMgZnVuY3Rpb24g
ZG9lcyBub3Qgd29yayBpbiB0aGUgc2FtZSB3YXkgYXMKPiAgICBjb3JyZXNwb25kaW5nIGZ1bmN0
aW9ucyBpbiBvdGhlciBnbGliLXN0eWxlIGxpYnJhcmllcywKPiAgICBzdWNoIGFzIGd0a19pbml0
KCkuIEluIHBhcnRpY3VsYXIsIHVua25vd24gY29tbWFuZCBsaW5lIG9wdGlvbnMKPiAgICBjYXVz
ZSB0aGlzIGZ1bmN0aW9uIHRvIGFib3J0IHByb2dyYW0gZXhlY3V0aW9uLgo+IAo+IFRoaXMgbHVj
a2lseSBpcyBub3QgdHJ1ZSAocHJvZ3JhbSB3b24ndCBhYm9ydCBpZiB5b3UgcGFzcyAtLWdzdC1m
b28KPiBmb3IgaW5zdGFuY2UpIGJ1dCBiZXR0ZXIgdG8gc3RpY2sgdG8gZG9jdW1lbnRhdGlvbi4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4K
PiAtLS0KPiAgdG9vbHMvc3BpY3kuYyB8IDEgLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS90b29scy9zcGljeS5jIGIvdG9vbHMvc3BpY3kuYwo+IGlu
ZGV4IDQwM2E2NmQxLi44Y2E2MmY5MSAxMDA2NDQKPiAtLS0gYS90b29scy9zcGljeS5jCj4gKysr
IGIvdG9vbHMvc3BpY3kuYwo+IEBAIC0yMDE3LDcgKzIwMTcsNiBAQCBpbnQgbWFpbihpbnQgYXJn
YywgY2hhciAqYXJndltdKQo+ICAKPiAgICAgIC8qIHBhcnNlIG9wdHMgKi8KPiAgICAgIGd0a19p
bml0KCZhcmdjLCAmYXJndik7Cj4gLSAgICBnc3RfaW5pdCgmYXJnYywgJmFyZ3YpOwo+ICAgICAg
Y29udGV4dCA9IGdfb3B0aW9uX2NvbnRleHRfbmV3KCItIHNwaWNlIGNsaWVudCB0ZXN0IGFwcGxp
Y2F0aW9uIik7Cj4gICAgICBnX29wdGlvbl9jb250ZXh0X3NldF9zdW1tYXJ5KGNvbnRleHQsICJH
dGsrIHRlc3QgY2xpZW50IHRvIGNvbm5lY3QgdG8KPiAgICAgIFNwaWNlIHNlcnZlcnMuIik7Cj4g
ICAgICBnX29wdGlvbl9jb250ZXh0X3NldF9kZXNjcmlwdGlvbihjb250ZXh0LCAiUmVwb3J0IGJ1
Z3MgdG8gIgo+ICAgICAgUEFDS0FHRV9CVUdSRVBPUlQgIi4iKTsKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
