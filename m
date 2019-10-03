Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E7BCA0EB
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 17:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D53606EA0D;
	Thu,  3 Oct 2019 15:10:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC3556EA0D
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 15:10:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 688632CE953;
 Thu,  3 Oct 2019 15:10:27 +0000 (UTC)
Received: from lub.tlv (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AD60160C18;
 Thu,  3 Oct 2019 15:10:26 +0000 (UTC)
To: "Jason A. Donenfeld" <Jason@zx2c4.com>, spice-devel@lists.freedesktop.org
References: <CAHmME9r81ugJR_NDF74kvi=ahjNZWzEMo6CGDELL8tw_dmQTxA@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <5b44c00f-6190-ae98-1862-012fd8d371bc@redhat.com>
Date: Thu, 3 Oct 2019 18:10:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAHmME9r81ugJR_NDF74kvi=ahjNZWzEMo6CGDELL8tw_dmQTxA@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 03 Oct 2019 15:10:27 +0000 (UTC)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOS8yNy8xOSAxOjI3IFBNLCBKYXNvbiBBLiBEb25lbmZlbGQgd3JvdGU6Cj4gSGksCj4gCj4g
TXkgZGlzdHJvIHVwZ3JhZGVkIHNwaWNlIGZyb20gMC4xNC4wIHRvIDAuMTQuMi4gVGhpcyBoYXMg
Y2F1c2VkIHNjcmVlbgo+IHJlc2l6aW5nIGdlb21ldHJ5IHByb2JsZW1zIGZvciBteSBXaW5kb3dz
IGd1ZXN0Lgo+IAo+IEluIHNwaWN5LCBJIGV4cGVyaWVuY2UgYSBtYXNzaXZlIGJsYWNrIGJvcmRl
ciBhcm91bmQgdGhlIHNjcmVlbiwgYXMKPiB0aG91Z2ggaXQncyBnZXR0aW5nIHRoZSBpbnRlcm5h
bCBjb29yZGluYXRlcyBhbmQgZXh0ZXJuYWwgY29vcmRpbmF0ZXMKPiBvdXQgb2Ygc3luYy4gVGhp
cyBzZWVtcyB0byBnbyBhd2F5IGluIGxvLWRwaSBtb2RlLgo+IAo+IEluIHJlbW90ZS12aWV3ZXIs
IEkgZXhwZXJpZW5jZSBvbmx5IH5zcXVhcmUgc2NyZWVuIHJlc29sdXRpb25zIGFuZCBiaWcKPiBw
ZXJmb3JtYW5jZSByZWdyZXNzaW9ucy4KPiAKPiBSZXZlcnRpbmcgdG8gMC4xNC4wIChhbmQgcmVi
dWlsZGluZyBxZW11IHRvIHVzZSBpdCkgbWFrZXMgdGhpbmdzIHdvcmsKPiBhZ2Fpbiwgd2l0aCBh
bGwgZ3Vlc3Qgc2NyZWVuIHJlc29sdXRpb25zIGJlaW5nIHBvc3NpYmxlIGFuZCByZXNpemluZwo+
IHdvcmtpbmcgd2VsbC4KPiAKPiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IHJlcXVpcmUgYWRk
aXRpb25hbCBpbmZvcm1hdGlvbiBvciB3b3VsZCBsaWtlCj4gbWUgdG8gdHJ5IHdpdGggc29tZSBj
b21taXRzIHJldmVydGVkLgoKSGksCgpJIGp1c3QgdGVzdGVkIHYwLjE0LjAgYW5kIHJlc29sdXRp
b24gY2hhbmdlIHdvcmtzIGZvciBtZSAoV2luZG93cyA3IHg2NCwgCnJlbW90ZS12aWV3ZXIpLgoK
V2hhdCBkcml2ZXIgaXMgaW5zdGFsbGVkIG9uIHRoZSBndWVzdCA/CklzIHNwaWNlLXZkYWdlbnQg
c2VydmljZSBydW5uaW5nID8KCklmIHlvdSBjaGFuZ2UgcmVzb2x1dGlvbiBmcm9tIHdpdGhpbiB0
aGUgZ3Vlc3QgZG9lcyB0aGF0IHdvcmsKKENvbnRyb2wgUGFuZWwgLT4gRGlzcGxheSAtPiBBZGp1
c3QgUmVzb2x1dGlvbiwKICBvciBzaW1wbHkgcmlnaHQtY2xpY2sgb24gdGhlIGRlc2t0b3AgLT4g
U2NyZWVuIHJlc29sdXRpb24pPwoKVXJpLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
