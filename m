Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A9EA0708
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 18:14:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656E189D8A;
	Wed, 28 Aug 2019 16:14:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28C8B89D8D
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:13:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C966210576DD
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:13:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C21185D6B0
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:13:58 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B6C86180B536;
 Wed, 28 Aug 2019 16:13:58 +0000 (UTC)
Date: Wed, 28 Aug 2019 12:13:58 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <299324888.9967562.1567008838717.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190828160234.8182-2-uril@redhat.com>
References: <20190828160234.8182-1-uril@redhat.com>
 <20190828160234.8182-2-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.6]
Thread-Topic: virtio-port: handle_fds: make read and write code consistent
Thread-Index: mYU7kx1UlViB3z35m9S88xL7frBfug==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Wed, 28 Aug 2019 16:13:58 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-vdagent PATCH 2/2] virtio-port:
 handle_fds: make read and write code consistent
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

PiAKPiAicmV0dXJuIGVhcmx5IiBiZWZvcmUgd3JpdGUgdG9vCj4gCj4gU2lnbmVkLW9mZi1ieTog
VXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgo+IC0tLQo+IAo+IEFsdGVybmF0aXZlbHksIGNo
YW5nZSB0aGUgcmVhZCBwYXJ0IHN1Y2ggdGhhdDoKPiAKPiAgICAgaWYgKCp2cG9ydHAgJiYgRkRf
SVNTRVQoKCp2cG9ydHApLT5mZCwgcmVhZGZkcykpCj4gICAgICAgICB2ZGFnZW50X3ZpcnRpb19w
b3J0X2RvX3JlYWQKPiAgICAgaWYgKCp2cG9ydHAgJiYgRkRfSVNTRVQoKCp2cG9ydHApLT5mZCwg
d3JpdGVmZHMpKQo+ICAgICAgICAgdmRhZ2VudF92aXJ0aW9fcG9ydF9kb193cml0ZQo+IAo+IAo+
IC0tLQo+ICBzcmMvdmRhZ2VudGQvdmlydGlvLXBvcnQuYyB8IDUgKysrKy0KPiAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9z
cmMvdmRhZ2VudGQvdmlydGlvLXBvcnQuYyBiL3NyYy92ZGFnZW50ZC92aXJ0aW8tcG9ydC5jCj4g
aW5kZXggM2FlN2YyMi4uYWY1YmQ1OCAxMDA2NDQKPiAtLS0gYS9zcmMvdmRhZ2VudGQvdmlydGlv
LXBvcnQuYwo+ICsrKyBiL3NyYy92ZGFnZW50ZC92aXJ0aW8tcG9ydC5jCj4gQEAgLTE3Miw3ICsx
NzIsMTAgQEAgdm9pZCB2ZGFnZW50X3ZpcnRpb19wb3J0X2hhbmRsZV9mZHMoc3RydWN0Cj4gdmRh
Z2VudF92aXJ0aW9fcG9ydCAqKnZwb3J0cCwKPiAgICAgIGlmIChGRF9JU1NFVCgoKnZwb3J0cCkt
PmZkLCByZWFkZmRzKSkKPiAgICAgICAgICB2ZGFnZW50X3ZpcnRpb19wb3J0X2RvX3JlYWQodnBv
cnRwKTsKPiAgCj4gLSAgICBpZiAoKnZwb3J0cCAmJiBGRF9JU1NFVCgoKnZwb3J0cCktPmZkLCB3
cml0ZWZkcykpCj4gKyAgICBpZiAoISp2cG9ydHApIC8qIG1heSBoYXZlIGJlZW4gZGVzdHJveWVk
IGluIGRvX3JlYWQgKi8KPiArICAgICAgICByZXR1cm47Cj4gKwo+ICsgICAgaWYgKEZEX0lTU0VU
KCgqdnBvcnRwKS0+ZmQsIHdyaXRlZmRzKSkKPiAgICAgICAgICB2ZGFnZW50X3ZpcnRpb19wb3J0
X2RvX3dyaXRlKHZwb3J0cCk7Cj4gIH0KPiAgCgpUaGV5IGFyZSBlcXVpdmFsZW50IChiZXNpZGUg
dGhlIGNvbW1lbnQgd2hpY2ggY2FuIGJlIGFkZGVkIG9uIHRvcCBvZgp0aGUgaWYpLgpJIGxpa2Ug
dGhlIGFsdGVybmF0aXZlIHZlcnNpb24gaWYgaXQncyByZWFsbHkgaW1wb3J0YW50LgpTdHlsZTog
YWx3YXlzIGJyYWNrZXRzLgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
