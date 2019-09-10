Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7DDAE731
	for <lists+spice-devel@lfdr.de>; Tue, 10 Sep 2019 11:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC2296E883;
	Tue, 10 Sep 2019 09:41:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 637976E883
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:41:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0C5DD300BCE9
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:41:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F3057100194E
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:41:13 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E9F0F2551B
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 09:41:13 +0000 (UTC)
Date: Tue, 10 Sep 2019 05:41:13 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <338828308.11342435.1568108473723.JavaMail.zimbra@redhat.com>
In-Reply-To: <1126453792.9954038.1567004568339.JavaMail.zimbra@redhat.com>
References: <20190814170825.11903-1-fziglio@redhat.com>
 <20190814170825.11903-2-fziglio@redhat.com>
 <1126453792.9954038.1567004568339.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.19]
Thread-Topic: codegen: Add 'chunk' to the output attributes
Thread-Index: oZvqvZBdEuK5z1nGXdk34O8H8hUf8RQzgV7D
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 10 Sep 2019 09:41:14 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] codegen: Add 'chunk' to the
 output attributes
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IE91dHB1dCBhdHRyaWJ1dGVzIGFyZSB0aGUgYXR0
cmlidXRlcyB0aGF0IHNwZWNpZnkgaG93IHRvIHN0b3JlCj4gPiB0aGF0IGZpZWxkIGluIHRoZSBD
IHN0cnVjdHVyZS4KPiA+IFRoZXJlIGNhbiBiZSBvbmx5IG9uZSBvdXRwdXQgdHlwZSBzcGVjaWZp
ZWQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+ID4gLS0tCj4gPiAgcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5IHwgMiArLQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBk
aWZmIC0tZ2l0IGEvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5IGIvcHl0aG9uX21vZHVsZXMvcHR5
cGVzLnB5Cj4gPiBpbmRleCBlYmUwMDFjLi43OTZhNDM2IDEwMDY0NAo+ID4gLS0tIGEvcHl0aG9u
X21vZHVsZXMvcHR5cGVzLnB5Cj4gPiArKysgYi9weXRob25fbW9kdWxlcy9wdHlwZXMucHkKPiA+
IEBAIC05OCw3ICs5OCw3IEBAIGRlZiBmaXhfYXR0cmlidXRlcyhhdHRyaWJ1dGVfbGlzdCk6Cj4g
PiAgICAgICAgICBhdHRyc1tuYW1lXSA9IGxzdAo+ID4gIAo+ID4gICAgICAjIHRoZXNlIGF0dHJp
YnV0ZXMgc3BlY2lmeSBvdXRwdXQgZm9ybWF0LCBvbmx5IG9uZSBjYW4gYmUgc2V0Cj4gPiAtICAg
IG91dHB1dF9hdHRycyA9IHNldChbJ2VuZCcsICd0b19wdHInLCAnYXNfcHRyJywgJ3B0cl9hcnJh
eScsICd6ZXJvJ10pCj4gPiArICAgIG91dHB1dF9hdHRycyA9IHNldChbJ2VuZCcsICd0b19wdHIn
LCAnYXNfcHRyJywgJ3B0cl9hcnJheScsICd6ZXJvJywKPiA+ICdjaHVuayddKQo+ID4gICAgICBp
ZiBsZW4ob3V0cHV0X2F0dHJzLmludGVyc2VjdGlvbihhdHRycy5rZXlzKCkpKSA+IDE6Cj4gPiAg
ICAgICAgICByYWlzZSBFeGNlcHRpb24oIk11bHRpcGxlIG91dHB1dCB0eXBlIGF0dHJpYnV0ZXMg
c3BlY2lmaWVkICVzIiAlCj4gPiAgICAgICAgICBvdXRwdXRfYXR0cnMpCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
