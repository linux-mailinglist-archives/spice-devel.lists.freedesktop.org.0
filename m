Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9F57BE8E
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 12:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B12FF89C84;
	Wed, 31 Jul 2019 10:41:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7881489C82
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 10:41:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D740C3084051
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 10:41:11 +0000 (UTC)
Received: from ptitpuce (ovpn-116-130.ams2.redhat.com [10.36.116.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D067600CC;
 Wed, 31 Jul 2019 10:41:07 +0000 (UTC)
References: <20190731083636.21493-1-kpouget@redhat.com>
 <20190731083636.21493-3-kpouget@redhat.com>
 <2121688751.3798926.1564566634959.JavaMail.zimbra@redhat.com>
 <CADJ1XR2aULCXOdrZWa8UXs=2aY+dbhzD-ZATC+4mCU4Q4oN7mA@mail.gmail.com>
 <CADJ1XR21QHm70jKCjpBUmG4DV8AJ9Uq8P5SMWU0qUwYwyzQ-rA@mail.gmail.com>
User-agent: mu4e 1.3.2; emacs 26.2
From: Christophe de Dinechin <dinechin@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
In-reply-to: <CADJ1XR21QHm70jKCjpBUmG4DV8AJ9Uq8P5SMWU0qUwYwyzQ-rA@mail.gmail.com>
Date: Wed, 31 Jul 2019 12:41:05 +0200
Message-ID: <m1wofymqpq.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Wed, 31 Jul 2019 10:41:11 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC spice-streaming-agent 1/2] gst-plugin: allow
 the instantiation of multiple GST encoder plugins
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CktldmluIFBvdWdldCB3cml0ZXM6Cgo+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDExOjU5IEFN
IENocmlzdG9waGUgZGUgRGluZWNoaW4KPiA8ZGluZWNoaW5AcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
Cj4+IEkgZG9uJ3QgcmVhbGx5IGxpa2UgdGhlIHdheSBvcHRpb24gcGFyc2luZyBpcyBpbXBsZW1l
bnRlZCwgYmVjYXVzZSBJCj4+IHRoaW5rIGl0IGxlYWRzIHRvIHNvbWV3aGF0IGNvdW50ZXItaW50
dWl0aXZlIHVzZXIgYmVoYXZpb3JzLgo+Pgo+PiBGb3IgZXhhbXBsZSwgaWYgSSBzYXk6Cj4+Cj4+
ICAgICBnc3QuY29kZWM9bWpwZWcgZ3N0LmNvZGVjPWgyNjQgZnJhbWVyYXRlPTIwCj4+Cj4+IEkg
Z2V0IHR3byBwbHVnaW5zIHdpdGggZnJhbWVyYXRlPTIwLCBidXQgaWYgSSBoYXZlCj4+Cj4+ICAg
ICBnc3QuY29kZWM9bWpwZWcgZnJhbWVyYXRlPTIwIGdzdC5jb2RlYz1oMjY0Cj4+Cj4+IHRoZW4g
dGhlIG1qcGVnIHBsdWdpbiBoYXMgZnJhbWVyYXRlIDIwIGFuZCB0aGUgaDI2NCBwbHVnaW4gaGFz
IGRlZmF1bHQKPj4gZnJhbWVyYXRlICgyNSkuIElmIEkgc3BlY2lmeQo+Pgo+PiAgICAgZnJhbWVy
YXRlPTIwIGdzdC5jb2RlYz1tanBlZyBnc3QuY29kZWM9aDI2NAo+Pgo+PiB0aGVuIEkgZ2V0IHR3
byBwbHVnaW5zIHdpdGggZGVmYXVsdCBmcmFtZSByYXRlLgo+Pgo+PiBOb3RlIHRoYXQgYWxsIHRo
ZXNlIGJlaGF2aW9ycyBhcmUgZXNwZWNpYWxseSBwcm9ibGVtYXRpYyBiZWNhdXNlIHRoZXkKPj4g
d291bGQgYmUgZGlmZmVyZW50IGZyb20gd2hhdCB5b3UgZ2V0IHdpdGggYW5vdGhlciBwbHVnaW4g
KHdoZXJlCj4+IFBhcnNlT3B0aW9uIHdpbGwgcHJvY2VzcyBhbGwgb3B0aW9ucykuCj4KPiBJIGRv
dWJsZSBjaGVja2VkLCBidXQgaXQgZG9lc24ndCBydW4gbGlrZSB0aGF0LCB0aGUgb3JkZXIgaXMg
bm90Cj4gcmVsZXZhbnQsCgpJbmRlZWQsIEkgbWlzLXJlYWQgdGhlIGNhbGwgdG8gUGFyc2VPcHRp
b25zLCBJIHRob3VnaHQgeW91IHdlcmUgcGFzc2luZwpvcHRpb25zIGFuZCBub3QgYWdlbnQtPk9w
dGlvbnMoKS4KCj4KPj4gPiArCj4+ID4gKyAgICAgICAgICAgIGF1dG8gcGx1Z2luID0gc3RkOjpt
YWtlX3NoYXJlZDxHc3RyZWFtZXJQbHVnaW4+KCk7Cj4+ID4gKyAgICAgICAgICAgIHBsdWdpbi0+
UGFyc2VPcHRpb25zKGFnZW50LT5PcHRpb25zKCksIGNvZGVjX3R5cGUpOwo+PiA+ICsgICAgICAg
ICAgICBhZ2VudC0+UmVnaXN0ZXIocGx1Z2luKTsKPj4gPiArICAgICAgICB9Cj4+ID4gKyAgICB9
Cj4+Cj4+IEJlY2F1c2Ugb2YgdGhpcyBzZWNvbmQgbG9vcCwgeW91IHByZXNlbnRseSBsb29wIG11
bHRpcGxlIHRpbWVzIG92ZXIgdGhlCj4+IHNhbWUgb3B0aW9ucy4KCldlbGwsIEkgZ3Vlc3MgaWYg
d2UgYWNjZXB0IHRoYXQgZm9yIGRpZmZlcmVudCBwbHVnaW5zLCBpdCdzIE9LIHRvIGFjY2VwdApp
dCBmb3IgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIHRoZSBzYW1lIHBsdWdpbi4KCj4+ID4KPj4gPiAt
ICAgIGFnZW50LT5SZWdpc3RlcihwbHVnaW4pOwo+PiA+ICsgICAgLy8gbm8gZGVmYXVsdCB2YWx1
ZSBhdCB0aGUgbW9tZW50Cj4+ID4gKyAgICAvLyAodXNlZCB0byBiZSBoMjY0LCBzZWUgR3N0cmVh
bWVyRW5jb2RlclNldHRpbmdzOjpjb2RlYykKPj4gPgo+PiA+ICAgICAgcmV0dXJuIHRydWU7Cj4+
ID4gIH0KPj4KPj4KPj4gLS0KPj4gQ2hlZXJzLAo+PiBDaHJpc3RvcGhlIGRlIERpbmVjaGluIChJ
UkMgYzNkKQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWwKCgotLQpDaGVlcnMsCkNocmlzdG9waGUgZGUgRGluZWNoaW4gKElSQyBj
M2QpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
