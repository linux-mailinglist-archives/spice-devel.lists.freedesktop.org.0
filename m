Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E795CA5AC
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 18:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 057DF6EA25;
	Thu,  3 Oct 2019 16:52:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009626E165
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 16:52:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6834C10C094F;
 Thu,  3 Oct 2019 16:52:04 +0000 (UTC)
Received: from lub.tlv (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B5BFA10018F8;
 Thu,  3 Oct 2019 16:52:03 +0000 (UTC)
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
References: <CAHmME9r81ugJR_NDF74kvi=ahjNZWzEMo6CGDELL8tw_dmQTxA@mail.gmail.com>
 <5b44c00f-6190-ae98-1862-012fd8d371bc@redhat.com>
 <CAHmME9r=B9gQP3doBaj-=47i2reKAoVFqQNt9sVAL0x5MwMpJw@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <03e794c0-70a8-f43e-6ba9-e8da5cbdfd27@redhat.com>
Date: Thu, 3 Oct 2019 19:52:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAHmME9r=B9gQP3doBaj-=47i2reKAoVFqQNt9sVAL0x5MwMpJw@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Thu, 03 Oct 2019 16:52:04 +0000 (UTC)
Subject: Re: [Spice-devel] regression from 0.14.0 -> 0.14.2 in screen
 resizing
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMTAvMy8xOSA2OjExIFBNLCBKYXNvbiBBLiBEb25lbmZlbGQgd3JvdGU6Cj4gT24gVGh1LCBP
Y3QgMywgMjAxOSBhdCA1OjEwIFBNIFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4+Cj4+IEhpLAo+Pgo+PiBJIGp1c3QgdGVzdGVkIHYwLjE0LjAgYW5kIHJlc29sdXRpb24gY2hh
bmdlIHdvcmtzIGZvciBtZSAoV2luZG93cyA3IHg2NCwKPj4gcmVtb3RlLXZpZXdlcikuCj4gCj4g
VGhpcyBpcyB3aHkgSSBzcGVjaWZpZWQgdGhhdCBpdCBmYWlscyBpbiAwLjE0LjIuCgpJbmRlZWQu
CgpJdCB3b3JrcyBmb3IgbWUgYWxzbyB3aXRoIHNwaWNlIHYwLjE0LjIgKGZyb20gZ2l0KSBhbmQg
Y3VycmVudCBtYXN0ZXIuCgpUaGUgcWVtdSB2ZXJzaW9uIGlzIDQuMS41MCAoZnJvbSBnaXQpIGFu
ZCBhbHNvIHRlc3RlZCBRRU1VIDMuMS4xIChGZWRvcmEgCjMwKS4KCkJUVywgd2hhdCBkaXN0cm8g
aXMgaXQgPyAgV2hpY2ggV2luZG93cyBndWVzdCA/CgpVcmkuCgo+IAo+PiBXaGF0IGRyaXZlciBp
cyBpbnN0YWxsZWQgb24gdGhlIGd1ZXN0ID8KPiBUaGUgdXN1YWwgb25lcyBmcm9tIHRoZSBzcGlj
ZSB3ZWJzaXRlLgo+IAo+PiBJcyBzcGljZS12ZGFnZW50IHNlcnZpY2UgcnVubmluZyA/Cj4gWWVz
Lgo+IAo+PiBJZiB5b3UgY2hhbmdlIHJlc29sdXRpb24gZnJvbSB3aXRoaW4gdGhlIGd1ZXN0IGRv
ZXMgdGhhdCB3b3JrCj4+IChDb250cm9sIFBhbmVsIC0+IERpc3BsYXkgLT4gQWRqdXN0IFJlc29s
dXRpb24sCj4+ICAgIG9yIHNpbXBseSByaWdodC1jbGljayBvbiB0aGUgZGVza3RvcCAtPiBTY3Jl
ZW4gcmVzb2x1dGlvbik/Cj4gV2VpcmQgYmVoYXZpb3IgYXMgZGVzY3JpYmVkLgo+IAo+IEphc29u
Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
