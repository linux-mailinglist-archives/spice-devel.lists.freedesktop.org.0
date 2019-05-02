Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 608D7114A2
	for <lists+spice-devel@lfdr.de>; Thu,  2 May 2019 09:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC8E9892CA;
	Thu,  2 May 2019 07:57:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB90892CA
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 07:57:30 +0000 (UTC)
Received: from amboise.dolphin.eu.org ([82.243.26.181] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hM6bj-0000RI-BW; Thu, 02 May 2019 02:58:20 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hM6ap-0001ZU-JS; Thu, 02 May 2019 09:57:23 +0200
Date: Thu, 2 May 2019 09:57:23 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Snir Sheriber <ssheribe@redhat.com>
In-Reply-To: <53178cd8-a0f6-dab2-3d71-974c157b9c5b@redhat.com>
Message-ID: <alpine.DEB.2.21.1904191315160.25263@amboise.dolphin>
References: <E1hE9Tp-0006PZ-O0@amboise>
 <20190411093859.muawnv3u4vnxpuqp@toolbox>
 <alpine.DEB.2.21.1904170619150.22323@amboise.dolphin>
 <53178cd8-a0f6-dab2-3d71-974c157b9c5b@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -102.4
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 17 Apr 2019,
 Snir Sheriber wrote: [...] > > The reason
 for that is that while a minimum 400 ms latency is fine when > > playing
 a YouTube video [1], it's very annoying when the whole desktop > [...] 
 Content analysis details:   (-102.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1XFonEqTE3xdiPN871IcGURruAaq0kVWZprxUzcXJo8=; b=jdVzs4N1ktYNemYOGtu/zAr4Z
 +p+IbMklBZjTZG1/S+1p8x0sph8GfwEvbGmjJXnwc4VdbHCrkqvEn3id3EBtPoErlvHm80yK4lLLG
 mrP84MbR1qweeZqkNvzXUISXV66AALYn+8CR/qzOoFWbMaHtLCjZiaN9wVQBnSE8ni9FM=;
Subject: Re: [Spice-devel] [spice] Enable mm_time adjustments on startup
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

T24gV2VkLCAxNyBBcHIgMjAxOSwgU25pciBTaGVyaWJlciB3cm90ZToKWy4uLl0KPiA+IFRoZSBy
ZWFzb24gZm9yIHRoYXQgaXMgdGhhdCB3aGlsZSBhIG1pbmltdW0gNDAwIG1zIGxhdGVuY3kgaXMg
ZmluZSB3aGVuCj4gPiBwbGF5aW5nIGEgWW91VHViZSB2aWRlbyBbMV0sIGl0J3MgdmVyeSBhbm5v
eWluZyB3aGVuIHRoZSB3aG9sZSBkZXNrdG9wCj4gPiBpcyBiZWluZyBzdHJlYW1lZCwgZWl0aGVy
IHRocm91Z2ggdGhlIHN0cmVhbWluZyBhZ2VudCBvciB0aHJvdWdoIHRoZQo+ID4gZnV0dXJlIFZp
cmdsIHJlbW90ZSBhY2Nlc3MsIGJlY2F1c2UgdGhlbiBpdCB0cmFuc2xhdGVzIGludG8gYSA0MDAg
bXMKPiAKPiBBcmUgeW91IHdvcmtpbmcgb24gc29tZXRoaW5nIGxpa2UgdGhhdCAocmVtb3RlIHZp
cmdsKT8KClllcy4gU2VlICh0aG91Z2ggSSBuZWVkIHRvIHVwZGF0ZSByZWZyZXNoIHRoZXNlIEdp
dEh1YiBicmFuY2hlcyk6CgpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9z
cGljZS1kZXZlbC8yMDE5LUphbnVhcnkvMDQ3MzI5Lmh0bWwKCgo+IE5vdGljZSB0aGF0IGN1cnJl
bnRseSB0aGVyZSdzIHNtYWxsIGhhY2t5IHBhdGNoIG9uIGNsaWVudCB0byBpZ25vcmUgbGF0ZW5j
eQo+IHdoZW4gaXQncyBmdWxsCj4gc2NyZWVuIHN0cmVhbWluZyBhbmQgdGhlcmUgaXMgbm8gYXVk
aW8gcGxheWJhY2suCj4gCj4gKGQwNDdiMmZiN2Y1ZDQ5MmQ2YzQ5ZjU4OWJhNWZmODYyYzZiMTE1
ZGEpCgpSaWdodC4gSXQgbmV2ZXIgYWN0dWFsbHkgaGFkIGFueSBlZmZlY3QgaW4gbXkgdGVzdHMu
CiogV2hlbiB0ZXN0aW5nIHRoZSBmdWxsc2NyZWVuIHN0cmVhbWluZyBpbiBRRW11IChpLmUuIHdo
ZW4gCiAgc3RyZWFtaW5nX21vZGUgaXMgdHJ1ZSkgSSBoYWQgdG8gdXNlIHRoZSBtanBlZyBlbmNv
ZGluZyBiZWNhdXNlIHRoZXJlIAogIHNlZW1zIHRvIGJlIHNvbWUgY29uZmxpY3QgYmV0d2VlbiBR
RW11IGFuZCBHU3RyZWFtZXIgb24gRGViaWFuLiBCdXQgCiAgdGhlIHBhdGNoIGhhcyBubyBlZmZl
Y3Qgb24gdGhlIGJ1aWx0aW4gbWpwZWcgZGVjb2RlciBiZWNhdXNlIHRoZSAKICBsYXRlbmN5IGlu
IG1qcGVnX2RlY29kZXJfcXVldWVfZnJhbWUoKSBpcyB0byBkcm9wIGZyYW1lcyBpZiBpdCBpcyAK
ICBuZWdhdGl2ZS4gVG8gZGV0ZXJtaW5lIHdoZW4gdG8gZGlzcGxheSB0aGUgZnJhbWUgaXQgdXNl
cyB0aGUgZnJhbWUncyAKICB0aW1lc3RhbXAuCiogVGhlIHJlc3Qgb2YgdGhlIHRpbWUgSSdtIHRl
c3RpbmcgYnkgcnVubmluZyBhbiBPcGVuR0wgYXBwbGljYXRpb24gaW4gYSAKICByZWd1bGFyIHNl
c3Npb24gYW5kIHNvIHN0cmVhbWluZ19tb2RlIGlzIGZhbHNlIHNvIHRoZSBHc3RWaWRlb092ZXJs
YXkgCiAgaXMgbm90IHVzZWQgYW5kIHRodXMgdGhlIHBhdGNoIGhhcyBubyBlZmZlY3QuCgogIFRo
YXQncyBiZWNhdXNlIHNwaWNlX2dzdF9kZWNvZGVyX3F1ZXVlX2ZyYW1lKCkgdXNlcyBsYXRlbmN5
IHRvIGRyb3AgCiAgZnJhbWVzIGlmIGl0IGlzIG5lZ2F0aXZlOyBhbmQgdG8gZGV0ZXJtaW5lIHRo
ZSBkZWFkbGluZSBmb3IgZGVjb2RpbmcgCiAgdGhlIGZyYW1lLiBXaGVuIG5vdCB1c2luZyB0aGUg
dmlkZW8gb3ZlcmxheSB0aGUgZGVjb2RlZCBmcmFtZXMgdGhlbiAKICBnZXQgcXVldWVkIHVudGls
IGl0IGlzIHRpbWUgdG8gZGlzcGxheSB0aGVtLCBhY2NvcmRpbmcgdG8gdGhlaXIgCiAgbW1fdGlt
ZSB0aW1lc3RhbXAgd2hpY2ggaXMgbm90IGltcGFjdGVkIGJ5IGxhdGVuY3kuCgpUaGF0IHNhaWQg
SSdtIG5vdCBzdXJlIGlnbm9yaW5nIHRoZSBmcmFtZXMgbW1fdGltZSB0aW1lc3RhbXAgaXMgYSBn
b29kIAppZGVhIGFzIGl0IG1lYW5zIHRoZSBuZXR3b3JrIGppdHRlciB3aWxsIHRyYW5zbGF0ZSBk
aXJlY3RseSBpbnRvIApmcmFtZXJhdGUgaml0dGVyIChlLmcuIGluIE9wZW5HTCBhcHBsaWNhdGlv
bnMgb3IgaW4gc2lsZW50IG1vdmllcykuCgoKPiA+IE90aGVyIHN0ZXBzIGFyZToKPiA+ICogUmVk
dWNpbmcgdGhlIGRlZmF1bHQgbGF0ZW5jeS4KPiAKPiBXaGF0IHdpbGwgYmUgdGhlIGRlZmF1bHQ/
IHdoYXQgd2lsbCBoYXBwZW4gdG8gbGF0ZSB2aWRlbyBmcmFtZXM/CgpMYXRlIGZyYW1lcyB3aWxs
IGJlIGRyb3BwZWQgYXMgaGFzIGFsd2F5cyBiZWVuIHRoZSBjYXNlIChhdCBsZWFzdCBpbiAKdGhl
IG1qcGVnIGNhc2Ugb3RoZXJ3aXNlIGl0J3MgYSBiaXQgbW9yZSBjb21wbGV4KS4KCkFzIGJlZm9y
ZSB0aGUgbGF0ZW5jeSBtdXN0IGJlIGFkanVzdGVkLCBhbmQgcGFydGljdWxhcmx5LCBpbmNyZWFz
ZWQsIGFzIApyZXF1aXJlZCB0byBhdm9pZCBkcm9wcGluZyBmcmFtZXMuIE9mIGNvdXJzZSB3aGVu
IHN0YXJ0aW5nIHdpdGggYSAKaHVnZSBsYXRlbmN5IGxpa2UgNDAwIG1zIGhhbmRsaW5nIHRoZSBs
YXRlbmN5IGNvcnJlY3RseSBpcyBtdWNoIGxlc3MgCmltcG9ydGFudCBhcyBpdCBvbmx5IGJlY29t
ZSBpbXBvcnRhbnQgd2hlbiB5b3UgaGF2ZSByZWFsbHkgYSBiYWQgbmV0d29yayAKY29ubmVjdGlv
biBvciBhIHZlcnkgbG9uZyBlbmNvZGluZyB0aW1lcy4KCkl0J3MgaW1wb3J0YW50IHRvIGRpc3Rp
bmd1aXNoIGluY3JlYXNpbmcgYW5kIGRlY3JlYXNpbmcgdGhlIGxhdGVuY3kuCgpJbmNyZWFzaW5n
IHRoZSBsYXRlbmN5IG1lYW5zIGEgZnJhbWUgcXVldWVkIG9uIHRoZSBjbGllbnQgd2lsbCBiZSAK
ZGlzcGxheWVkIGV2ZW4gbGF0ZXIuIFNvIHRoZSBsYXRlbmN5IGNhbiBiZSBpbmNyZWFzZWQgZnJl
ZWx5LgoKRGVjcmVhc2luZyB0aGUgbGF0ZW5jeSBtZWFucyBhIGJ1bmNoIG9mIGZyYW1lcyBxdWV1
ZWQgb24gdGhlIGNsaWVudCBtYXkgCnN1ZGRlbmx5IGJlY29tZSBsYXRlLCBjYXVzaW5nIHRoZW0g
dG8gYmUgZHJvcHBlZC4gU28gbW9yZSBjYXJlIG11c3QgYmUgCnRha2VuLgoKCi0tIApGcmFuY29p
cyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMuY29tPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
