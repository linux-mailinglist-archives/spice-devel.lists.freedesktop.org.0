Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FFBDE60A
	for <lists+spice-devel@lfdr.de>; Mon, 21 Oct 2019 10:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71A489BFF;
	Mon, 21 Oct 2019 08:14:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DD7889BFF
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 08:14:22 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-383-0A5bVEUONrSK3ha8Rix_aw-1; Mon, 21 Oct 2019 04:14:19 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1FA91800D79
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 08:14:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C94B160A35
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 08:14:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B80471808878;
 Mon, 21 Oct 2019 08:14:18 +0000 (UTC)
Date: Mon, 21 Oct 2019 04:14:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <2013183819.7734897.1571645658497.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191021080113.xxpc754ked4hep7i@wingsuit>
References: <20191014092217.24405-1-fziglio@redhat.com>
 <20191014092217.24405-2-fziglio@redhat.com>
 <20191021080113.xxpc754ked4hep7i@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.34.247.51, 10.4.195.8]
Thread-Topic: smart-channel-client: Remove spicec client reference from comment
Thread-Index: vyGsdkSh7HDilFWnbJjMI/kSuE3hlA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: 0A5bVEUONrSK3ha8Rix_aw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571645661;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WQc9m4ghbiH0hGZ3gPPx8GSoz+Timn7UUSgJiP4P9DI=;
 b=KUm72ziwxDLw69EHl2i4joSBn+Xeh266T4NoaLk41t5QBnWo7Ws152tLszZCEDAiSrtgnj
 CBYu6d5XccakQnp81X1lRHPOgRNVfE3urMTJn/QxifZ4nKG87XF9Z6JnYIVEHRKk7dYCCv
 hMR/O2yH9z36c7m8a6v5LzbFtnsQddw=
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/7] smart-channel-client:
 Remove spicec client reference from comment
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
Cc: spice-devel@lists.freedesktop.org, cfergeau@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CgotLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tCj4gRnJvbTogIlZpY3RvciBUb3NvIiA8dmlj
dG9ydG9zb0ByZWRoYXQuY29tPgo+IFRvOiAiRnJlZGlhbm8gWmlnbGlvIiA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+IENjOiBzcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcsIGNmZXJnZWF1
QHJlZGhhdC5jb20KPiBTZW50OiBNb25kYXksIDIxIE9jdG9iZXIsIDIwMTkgOTowMToxMyBBTQo+
IFN1YmplY3Q6IFJlOiBbU3BpY2UtZGV2ZWxdIFtQQVRDSCBzcGljZS1zZXJ2ZXIgdjIgMS83XSBz
bWFydC1jaGFubmVsLWNsaWVudDogUmVtb3ZlIHNwaWNlYyBjbGllbnQgcmVmZXJlbmNlIGZyb20K
PiBjb21tZW50Cj4gCj4gSGksCj4gCj4gT24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgMTA6MjI6MTFB
TSArMDEwMCwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4gc3BpY2VjIGlzIGFuIG9ic29sZXRl
IGNsaWVudC4KPiAKPiBTaG91bGQgYmUgZmluZSB0byByZW1vdmUgdGhlIG90aGVyIGxhc3QgcmVm
ZXJlY2UgKHRoYXQgbXkgZ3JlcAo+IGNvdWxkIGZpbmQpIGluIHRoaXMgY29tbWl0IHRvbz8KPiAK
ClRoZSBvbmx5IG90aGVyIGNvbW1lbnQgSSBjYW4gZmluZCBpczoKCiAgIC8qIFhYWDogVGhpcyBu
ZWVkcyBmdXJ0aGVyIGludmVzdGlnYXRpb24gYXMgdG8gdGhlIHVuZGVybHlpbmcgY2F1c2UsIGl0
IGhhcHBlbmVkCiAgICAgKiBhZnRlciBzcGljZWMgZGlzY29ubmVjdCAoYnV0IG5vdCB3aXRoIHNw
aWNlLWd0aykgcmVwZWF0ZWRseS4gKi8KCmluIHRoaXMgY2FzZSBtYXliZSBpdCdzIHN0aWxsIHZh
bHVhYmxlIHRvIGtlZXAgYWx0aG91Z2ggSSBoYWQgYSBxdWljayBsb29rCmFuZCBJIGNhbid0IHVu
ZGVyc3RhbmQgaWYgdGhpcyBjb21tZW50IHN0aWxsIGFwcGx5LgoKPiBzZXJ2ZXIvcmVkLWNoYW5u
ZWwtY2xpZW50LmM6MTE4NzogICAgICogYWZ0ZXIgc3BpY2VjIGRpc2Nvbm5lY3QKPiAoYnV0IG5v
dCB3aXRoIHNwaWNlLWd0aykgcmVwZWF0ZWRseS4gKi8KPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEZy
ZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IAo+IEFja2VkLWJ5OiBWaWN0b3Ig
VG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgo+IAo+ID4gLS0tCj4gPiAgc2VydmVyL3NtYXJ0
Y2FyZC1jaGFubmVsLWNsaWVudC5jIHwgMyArLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc21h
cnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKPiA+IGIvc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNs
aWVudC5jCj4gPiBpbmRleCA0M2RmOTAyZjUuLmRhNDcyYTJhNyAxMDA2NDQKPiA+IC0tLSBhL3Nl
cnZlci9zbWFydGNhcmQtY2hhbm5lbC1jbGllbnQuYwo+ID4gKysrIGIvc2VydmVyL3NtYXJ0Y2Fy
ZC1jaGFubmVsLWNsaWVudC5jCj4gPiBAQCAtMjUyLDggKzI1Miw3IEBAIGJvb2wKPiA+IHNtYXJ0
Y2FyZF9jaGFubmVsX2NsaWVudF9oYW5kbGVfbWVzc2FnZShSZWRDaGFubmVsQ2xpZW50ICpyY2Ms
Cj4gPiAgICAgIFNtYXJ0Q2FyZENoYW5uZWxDbGllbnQgKnNjYyA9IFNNQVJUQ0FSRF9DSEFOTkVM
X0NMSUVOVChyY2MpOwo+ID4gIAo+ID4gICAgICBpZiAodHlwZSAhPSBTUElDRV9NU0dDX1NNQVJU
Q0FSRF9EQVRBKSB7Cj4gPiAtICAgICAgICAvKiBIYW5kbGVzIHNlYW1sZXNzIG1pZ3JhdGlvbiBw
cm90b2NvbC4gQWxzbyBoYW5kbGVzIGFjaydzLAo+ID4gLSAgICAgICAgICogc3BpY3kgc2VuZHMg
dGhlbSB3aGlsZSBzcGljZWMgZG9lcyBub3QgKi8KPiA+ICsgICAgICAgIC8qIEhhbmRsZXMgc2Vh
bWxlc3MgbWlncmF0aW9uIHByb3RvY29sLiBBbHNvIGhhbmRsZXMgYWNrJ3MgKi8KPiA+ICAgICAg
ICAgIHJldHVybiByZWRfY2hhbm5lbF9jbGllbnRfaGFuZGxlX21lc3NhZ2UocmNjLCB0eXBlLCBz
aXplLAo+ID4gICAgICAgICAgbWVzc2FnZSk7Cj4gPiAgICAgIH0KPiA+ICAKPiA+IC0tCj4gPiAy
LjIxLjAKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+ID4gU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVsCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
