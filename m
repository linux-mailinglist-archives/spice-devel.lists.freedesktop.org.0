Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7462043506
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 11:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBA0898A4;
	Thu, 13 Jun 2019 09:57:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8DC898A4
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 09:57:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1F5E888E61
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 09:57:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 16EE75F9B0
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 09:57:35 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CF6F1806B0E;
 Thu, 13 Jun 2019 09:57:35 +0000 (UTC)
Date: Thu, 13 Jun 2019 05:57:33 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <420073056.22554354.1560419853598.JavaMail.zimbra@redhat.com>
In-Reply-To: <e2afe030-d952-fb05-be80-b6e1de944c7b@redhat.com>
References: <20190612105330.18091-1-fziglio@redhat.com>
 <e2afe030-d952-fb05-be80-b6e1de944c7b@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.51, 10.4.195.10]
Thread-Topic: red-stream: Fix compilation on Fedora 30 for Windows using MingW
Thread-Index: +qtK6E5UvTLhnNyAM762t/1rlkn6sw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 13 Jun 2019 09:57:35 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-stream: Fix compilation
 on Fedora 30 for Windows using MingW
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

PiBPbiA2LzEyLzE5IDE6NTMgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+IE9uIFdpbmRv
d3MgRmVkb3JhIDMwIHJlcG9ydHMgdGhlc2UgZXJyb3JzOgo+ID4gCj4gPiBJbiBmaWxlIGluY2x1
ZGVkIGZyb20KPiA+IC91c3IveDg2XzY0LXc2NC1taW5ndzMyL3N5cy1yb290L21pbmd3L2luY2x1
ZGUvb3BlbnNzbC9jcnlwdG8uaDoyOSwKPiA+ICAgICAgICAgICAgICAgICAgIGZyb20KPiA+ICAg
ICAgICAgICAgICAgICAgIC91c3IveDg2XzY0LXc2NC1taW5ndzMyL3N5cy1yb290L21pbmd3L2lu
Y2x1ZGUvb3BlbnNzbC9iaW8uaDoyMCwKPiA+ICAgICAgICAgICAgICAgICAgIGZyb20KPiA+ICAg
ICAgICAgICAgICAgICAgIC91c3IveDg2XzY0LXc2NC1taW5ndzMyL3N5cy1yb290L21pbmd3L2lu
Y2x1ZGUvb3BlbnNzbC9lcnIuaDoyMSwKPiA+ICAgICAgICAgICAgICAgICAgIGZyb20gcmVkLXN0
cmVhbS5jOjMxOgo+ID4gL3Vzci94ODZfNjQtdzY0LW1pbmd3MzIvc3lzLXJvb3QvbWluZ3cvaW5j
bHVkZS9vcGVuc3NsL3g1MDkuaDo3NToxOiBlcnJvcjoKPiA+IHBhc3RpbmcgInN0YWNrX3N0XyIg
YW5kICIoIiBkb2VzIG5vdCBnaXZlIGEgdmFsaWQgcHJlcHJvY2Vzc2luZyB0b2tlbgo+ID4gICBE
RUZJTkVfU1RBQ0tfT0YoWDUwOV9OQU1FKQo+ID4gICBefn5+fn5+fn5+fn5+fn4KPiA+IC91c3Iv
eDg2XzY0LXc2NC1taW5ndzMyL3N5cy1yb290L21pbmd3L2luY2x1ZGUvb3BlbnNzbC94NTA5Lmg6
NzU6MTc6IGVycm9yOgo+ID4gZXhwZWN0ZWQgJyknIGJlZm9yZSBudW1lcmljIGNvbnN0YW50Cj4g
PiAgIERFRklORV9TVEFDS19PRihYNTA5X05BTUUpCj4gPiAgICAgICAgICAgICAgICAgICBefn5+
fn5+fn4KPiA+IC4uLgo+ID4gCj4gPiBUaGlzIGlzIGR1ZSB0byBtaXNzaW5nIFg1MDlfTkFNRSBk
ZWZpbml0aW9uIGJ5IFdpbmRvd3MgaGVhZGVycy4KPiA+IEluY3VkZSBtaXNzaW5nIGhlYWRlciBp
biBvcmRlciB0byBtYWtlIGNvZGUgY29tcGlsZSBhZ2Fpbi4KPiA+IAo+ID4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICAgc2Vy
dmVyL3JlZC1zdHJlYW0uYyB8IDIgKysKPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1zdHJlYW0uYyBiL3NlcnZlci9y
ZWQtc3RyZWFtLmMKPiA+IGluZGV4IDMwNTdkOGJiYi4uNzdmZWQwOTdlIDEwMDY0NAo+ID4gLS0t
IGEvc2VydmVyL3JlZC1zdHJlYW0uYwo+ID4gKysrIGIvc2VydmVyL3JlZC1zdHJlYW0uYwo+ID4g
QEAgLTI0LDYgKzI0LDggQEAKPiA+ICAgI2luY2x1ZGUgPG5ldGRiLmg+Cj4gPiAgICNpbmNsdWRl
IDxzeXMvc29ja2V0Lmg+Cj4gPiAgICNpbmNsdWRlIDxuZXRpbmV0L3RjcC5oPgo+ID4gKyNlbHNl
Cj4gPiArI2luY2x1ZGUgPHdzMnRjcGlwLmg+Cj4gCj4gSSBzZWUgWDUwOV9OQU1FIGlzIGRlZmlu
ZWQgaW4gd2luY3J5cHQuaAo+IAo+IEkgZGlkIG5vdCBmb2xsb3cgdGhlIGluY2x1ZGUtcGF0aCBi
dXQgc2luY2UKPiB0aGUgTGludXggc2lkZSBpbmNsdWRlcyBuZXR3b3JrIGgtZmlsZXMgaXQKPiBt
YWtlcyBzZW5zZSB0aGUgd2luZG93cyBzaWRlIHdpbGwgZG8gdGhlIHNhbWUuCj4gCj4gVXJpLgo+
IAoKV2luZG93cyBhbmQgVW5peCAoc28gTGludXgpIGluY2x1ZGUgZmlsZXMgZm9yIG5ldHdvcmsg
YXJlIHF1aXRlCmRpZmZlcmVudCBzbyB0aGUgI2lmZGVmLiBJIGluY2x1ZGVkIHRoaXMgaGVhZGVy
IGFzIEkgbm90ZWQgdGhhdAp0aGlzIHdhcyBkb25lIGluIHJlZHMuYyBhbmQgdGhlIHByb2JsZW0g
ZGlkbid0IGhhcHBlbiBzbyBmb3IKY29oZXJlbmNlIEkgaW5jbHVkZWQgdGhhdCBzcGVjaWZpYyBo
ZWFkZXIuCgo+ID4gICAjZW5kaWYKPiA+ICAgCj4gPiAgICNpbmNsdWRlIDxnbGliLmg+Cj4gPiAK
PiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
