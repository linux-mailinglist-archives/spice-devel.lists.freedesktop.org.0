Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1530FDFF3D
	for <lists+spice-devel@lfdr.de>; Tue, 22 Oct 2019 10:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B156E440;
	Tue, 22 Oct 2019 08:17:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3968E6E440
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:17:27 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-PCZlP8NAMseIYffbHZ-D8w-1; Tue, 22 Oct 2019 04:17:23 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 278AA1005500
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:17:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C9FD5DA8D
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:17:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09E6218089DC;
 Tue, 22 Oct 2019 08:17:23 +0000 (UTC)
Date: Tue, 22 Oct 2019 04:17:22 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Message-ID: <535140296.7915177.1571732242000.JavaMail.zimbra@redhat.com>
In-Reply-To: <77efcae2-0987-946f-8460-4103952c75c4@redhat.com>
References: <20191021141048.4847-1-fziglio@redhat.com>
 <20191021141048.4847-4-fziglio@redhat.com>
 <77efcae2-0987-946f-8460-4103952c75c4@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.34.247.51, 10.4.195.6]
Thread-Topic: build-sys: Update URL in SPEC file
Thread-Index: e2uU1ZPpGSlt/lP4ZnG/LoEDlw5s0A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: PCZlP8NAMseIYffbHZ-D8w-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571732246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5BBIwr3JcfiKR3Cn41P6jveXa5auKMn2xoY2Q0M3d2s=;
 b=HXodKazlJrRmG54+KsMvD+O7lmDnGMDavhCEhkcFSexAtJua1mruUIbVDHUSAhHR2VMKHl
 U+Z2jWMZmU8VX8MGdAj65PkG3Si3JHR+mHESuW7DTXTrgBDCJMixuO8jffPLn23OPhwGPY
 hhVJWWFfdjMFxzfwi9WfUeZtf4KTkGc=
Subject: Re: [Spice-devel] [PATCH spice-protocol v2 4/5] build-sys: Update
 URL in SPEC file
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

Cj4gCj4gT24gMTAvMjEvMTkgMTE6MTAgQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+IFVz
ZSBodHRwcyBpbnN0ZWFkIG9mIGh0dHAsIHdlYiBzZXJ2ZXIgYXV0b21hdGljYWxseSByZWRpcmVj
dHMKPiA+IHRvIHNlY3VyZSB2ZXJzaW9uLgo+ID4gUmVtb3ZlIHNsYXNoIGF0IHRoZSBlbmQsIG5v
dCBuZWVkZWQuCj4gPiAKPiAKPiBJIHRoaW5rIHRoaXMgY2FuIGJlIHNxdWFzaGVkIHdpdGggdGhl
IGZpcnN0IHBhdGNoIGluIHRoZSBzZXJpZXMuCj4gCgpGaXJzdCBwYXRjaCBpcyBhIHZlcmJhdGlt
IGNvcHkgb2YgRmVkb3JhIFNQRUMgZmlsZS4KSSBrbm93IGl0J3MgYSBtaW5vciBjaGFuZ2UgYnV0
IEkgd291bGQgc3RpbGwgcmV0YWluIHRoZSB2ZXJiYXRpbQp2ZXJzaW9uIGFzIGEgc2VwYXJhdGUg
Y29tbWl0LgoKPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+ID4gLS0tCj4gPiAgIHNwaWNlLXByb3RvY29sLnNwZWMuaW4gfCA0ICsrLS0KPiA+
ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+
ID4gZGlmZiAtLWdpdCBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4gYi9zcGljZS1wcm90b2NvbC5z
cGVjLmluCj4gPiBpbmRleCA3MWFiOTFhLi41NGFhY2ZkIDEwMDY0NAo+ID4gLS0tIGEvc3BpY2Ut
cHJvdG9jb2wuc3BlYy5pbgo+ID4gKysrIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgo+ID4gQEAg
LTUsOCArNSw4IEBAIFN1bW1hcnk6ICAgICAgICBTcGljZSBwcm90b2NvbCBoZWFkZXIgZmlsZXMK
PiA+ICAgR3JvdXA6ICAgICAgICAgIERldmVsb3BtZW50L0xpYnJhcmllcwo+ID4gICAjIE1haW4g
aGVhZGVycyBhcmUgQlNELCBjb250cm9sbGVyIC8gZm9yZWlnbiBtZW51IGFyZSBMR1BMCj4gPiAg
IExpY2Vuc2U6ICAgICAgICBCU0QgYW5kIExHUEx2MisKPiA+IC1VUkw6ICAgICAgICAgICAgaHR0
cDovL3d3dy5zcGljZS1zcGFjZS5vcmcvCj4gPiAtU291cmNlMDoKPiA+IGh0dHA6Ly93d3cuc3Bp
Y2Utc3BhY2Uub3JnL2Rvd25sb2FkL3JlbGVhc2VzLyV7bmFtZX0tJXt2ZXJzaW9ufS50YXIuYnoy
Cj4gPiArVVJMOiAgICAgICAgICAgIGh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9yZwo+ID4gK1Nv
dXJjZTA6Cj4gPiBodHRwczovL3d3dy5zcGljZS1zcGFjZS5vcmcvZG93bmxvYWQvcmVsZWFzZXMv
JXtuYW1lfS0le3ZlcnNpb259LnRhci5iejIKPiA+ICAgQnVpbGRBcmNoOiAgICAgIG5vYXJjaAo+
ID4gICBCdWlsZFJlcXVpcmVzOiAgbWluZ3czMi1maWxlc3lzdGVtID49IDk1Cj4gPiAgIEJ1aWxk
UmVxdWlyZXM6ICBtaW5ndzY0LWZpbGVzeXN0ZW0gPj0gOTUKPiA+IAo+IAoKRnJlZGlhbm8KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
