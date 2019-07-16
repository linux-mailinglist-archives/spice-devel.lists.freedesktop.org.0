Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D1A6A996
	for <lists+spice-devel@lfdr.de>; Tue, 16 Jul 2019 15:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC63A6E11F;
	Tue, 16 Jul 2019 13:25:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E72526E11F
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 13:25:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8DF05308330C
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 13:25:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 787F7614C1
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 13:25:20 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 635434E58D
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 13:25:20 +0000 (UTC)
Date: Tue, 16 Jul 2019 09:25:20 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <943671418.414653.1563283520331.JavaMail.zimbra@redhat.com>
In-Reply-To: <1935296595.26515562.1562333451169.JavaMail.zimbra@redhat.com>
References: <20190627150358.16534-1-fziglio@redhat.com>
 <1935296595.26515562.1562333451169.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.12]
Thread-Topic: websocket: Add header guards
Thread-Index: vF2DbccKEZkTDtRyrgLOExixyooVxtWVZ0r7
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 16 Jul 2019 13:25:21 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] websocket: Add header
 guards
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

cGluZyB0aGUgc2VyaWVzCgo+IAo+IHBpbmcgdGhlIHNlcmllcwo+IAo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4g
IHNlcnZlci93ZWJzb2NrZXQuaCB8IDUgKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvd2Vic29ja2V0LmggYi9zZXJ2
ZXIvd2Vic29ja2V0LmgKPiA+IGluZGV4IDIyMTIwZDkzOS4uNzcwN2U2ODA0IDEwMDY0NAo+ID4g
LS0tIGEvc2VydmVyL3dlYnNvY2tldC5oCj4gPiArKysgYi9zZXJ2ZXIvd2Vic29ja2V0LmgKPiA+
IEBAIC0xNSw2ICsxNSw5IEBACj4gPiAgICogIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJh
cnk7IGlmIG5vdCwgc2VlCj4gPiAgIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiA+
ICAgKi8KPiA+ICAKPiA+ICsjaWZuZGVmIFdFQlNPQ0tFVF9IXwo+ID4gKyNkZWZpbmUgV0VCU09D
S0VUX0hfCj4gPiArCj4gPiAgdHlwZWRlZiBzc2l6ZV90ICgqd2Vic29ja2V0X3JlYWRfY2JfdCko
dm9pZCAqb3BhcXVlLCB2b2lkICpidWYsIHNpemVfdAo+ID4gIG5ieXRlKTsKPiA+ICB0eXBlZGVm
IHNzaXplX3QgKCp3ZWJzb2NrZXRfd3JpdGVfY2JfdCkodm9pZCAqb3BhcXVlLCBjb25zdCB2b2lk
ICpidWYsCj4gPiAgc2l6ZV90IG5ieXRlKTsKPiA+ICB0eXBlZGVmIHNzaXplX3QgKCp3ZWJzb2Nr
ZXRfd3JpdGV2X2NiX3QpKHZvaWQgKm9wYXF1ZSwgc3RydWN0IGlvdmVjICppb3YsCj4gPiAgaW50
IGlvdmNudCk7Cj4gPiBAQCAtNDEsMyArNDQsNSBAQCB2b2lkIHdlYnNvY2tldF9mcmVlKFJlZHNX
ZWJTb2NrZXQgKndzKTsKPiA+ICBpbnQgd2Vic29ja2V0X3JlYWQoUmVkc1dlYlNvY2tldCAqd3Ms
IHVpbnQ4X3QgKmJ1Ziwgc2l6ZV90IGxlbiwgdW5zaWduZWQKPiA+ICAqZmxhZ3MpOwo+ID4gIGlu
dCB3ZWJzb2NrZXRfd3JpdGUoUmVkc1dlYlNvY2tldCAqd3MsIGNvbnN0IHZvaWQgKmJ1Ziwgc2l6
ZV90IGxlbiwKPiA+ICB1bnNpZ25lZAo+ID4gIGZsYWdzKTsKPiA+ICBpbnQgd2Vic29ja2V0X3dy
aXRldihSZWRzV2ViU29ja2V0ICp3cywgY29uc3Qgc3RydWN0IGlvdmVjICppb3YsIGludAo+ID4g
IGlvdmNudCwKPiA+ICB1bnNpZ25lZCBmbGFncyk7Cj4gPiArCj4gPiArI2VuZGlmCgpPVDogc2hv
dWxkIHdlIGNvbnNpZGVyICIjcHJhZ21hIG9uY2UiIGluIHRoZSBmdXR1cmU/CgpGcmVkaWFubwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
