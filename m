Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9881D7ACD
	for <lists+spice-devel@lfdr.de>; Mon, 18 May 2020 16:13:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114C2899A3;
	Mon, 18 May 2020 14:13:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 1009 seconds by postgrey-1.36 at gabe;
 Mon, 18 May 2020 14:13:54 UTC
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50EB4899A3
 for <spice-devel@lists.freedesktop.org>; Mon, 18 May 2020 14:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=46wJv1T3315mSQxjJSO9lmGasr55WZ1OfPqqS/pGy2E=; b=rmlksIXrfJTULqyLPB0q2BjKwo
 KtNC0rlqV2P8GYz0Ao3maw0oIym/4NorJzZgxDWqdhY4wlngHmZP1tfK2gDuolidY6VRwVk6lLA7s
 JGY0y9uTbtUPLycTfnswoZFmhgqGZE/afOIywl2QzNQVMYrERQi/of0FTuPY6C8P/frM=;
Received: from [65.128.162.255] (helo=[10.0.0.11])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1jagGM-0004xn-K2
 for spice-devel@lists.freedesktop.org; Mon, 18 May 2020 08:57:04 -0500
To: spice-devel@lists.freedesktop.org
References: <63b7a25f-0f32-1626-5c1b-3811a4f0467f@redhat.com>
 <CAJ+F1CLMA99GrML-19GB4bzB+MSzJZw8gA+Vtdf7Siv6RAyC3Q@mail.gmail.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <8fc53a3b-60bc-4d00-6020-35b2c379e99d@codeweavers.com>
Date: Mon, 18 May 2020 08:57:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAJ+F1CLMA99GrML-19GB4bzB+MSzJZw8gA+Vtdf7Siv6RAyC3Q@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -26.5
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, > > The x11spice project is another example: we have only
 4 contributors > from the beginning of the year (and a single contributor
 holding 70% of > the commits) and the reviews on the gitlab merge re [...]
 Content analysis details:   (-26.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -20 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
Subject: Re: [Spice-devel] SPICE: changing the merge rules - a proposal
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgo+IAo+ICAgICBUaGUgeDExc3BpY2UgcHJvamVjdCBpcyBhbm90aGVyIGV4YW1wbGU6IHdl
IGhhdmUgb25seSA0IGNvbnRyaWJ1dG9ycwo+ICAgICBmcm9tIHRoZSBiZWdpbm5pbmcgb2YgdGhl
IHllYXIgKGFuZCBhIHNpbmdsZSBjb250cmlidXRvciBob2xkaW5nIDcwJSBvZgo+ICAgICB0aGUg
Y29tbWl0cykgYW5kIHRoZSByZXZpZXdzIG9uIHRoZSBnaXRsYWIgbWVyZ2UgcmVxdWVzdHMgaGF2
ZSBiZWVuCj4gICAgIHByb3ZpZGVkIGJ5IHR3byBwZW9wbGUgb25seSwgZWFjaCBvbmUgcmV2aWV3
aW5nIHRoZSBtZXJnZSByZXF1ZXN0cyBvZgo+ICAgICB0aGUgb3RoZXIuCj4gCj4gCj4gQXMgcHJv
amVjdHMgYmVjb21lIG1vcmUgc3BlY2lmaWMvbWFyZ2luYWwsIGl0J3MgY2xlYXIgdGhhdCB0aGUg
bnVtYmVyIG9mIAo+IG1haW50YWluZXJzIGlzIGxvd2VyLiBZZXQsIHdlIGhhdmUgdGhvc2UgcHJv
amVjdHMgdW5kZXIgdGhlIHNhbWUgCj4gdW1icmVsbGEsIGFuZCBJIGRvbid0IHRoaW5rIHRoZXkg
c2hvdWxkIGJlIHRyZWF0ZWQgZGlmZmVyZW50bHkuIDIgYWN0aXZlIAo+IGRldmVsb3BlcnMvbWFp
bnRhaW5lcnMgY2FuIGJlIHZlcnkgaGVhbHRoeSwgSSB3b3VsZCBzYXkuIFNvIGRvIHdlIGhhdmUg
YSAKPiBtYWludGVuYW5jZSBpc3N1ZSB3aXRoIHgxMXNwaWNlPyBEbyB3ZSB3YW50IHRvIG1vdmUg
dGhlIHByb2plY3Qgb3V0IG9mIAo+IHRoZSAiU3BpY2Utc3BhY2UiIHByb2plY3RzIGZvciBleD8g
V2hhdCBpcyB0aGUgcHJvYmxlbSBleGFjdGx5PwoKVGhlIHByb2JsZW0gaXMgdGhhdCBhbnkgbWVy
Z2UgcmVxdWVzdCBJIHB1dCBpbiBzaXRzIHRoZXJlIHVudGlsIEZyZWRpYW5vIApjb21lcyBhcm91
bmQgdG8gbG9vayBhdCBpdC4gIEkgZG8gaGF2ZSBjb21taXQgcmlnaHRzLCBidXQgSSBoYXZlIG5v
dCAKZmVsdCBjb21mb3J0YWJsZSBleGVyY2lzaW5nIHRob3NlIHVuaWxhdGVyYWxseS4gIEkgYW0g
YSBmYW4gb2YgdGhlIGNvcmUgClNwaWNlIHBvbGljeSAtIGNvbW1pdHMgb25seSBhZnRlciByZXZp
ZXcuICBBbmQgSSBoYXZlIGhhZCBwYXRjaGVzIGFuZCAKTVJzIHNpdCBmb3IgdmVyeSBsb25nIHBl
cmlvZHMgb2YgdGltZSB3aXRoIG5vIHJldmlldy4gIEZyZWRpYW5vIGlzIHJpZ2h0IAp0aGF0IHRo
ZSB3ZWJzb2NrZXQgY2hhbmdlIGlzIGEgZ29vZCBleGFtcGxlIC0gaXQgaXMgYSBtYXRlcmlhbCAK
aW1wcm92ZW1lbnQgZm9yIGFueW9uZSB1c2luZyB0aGUgc3BpY2UtaHRtbDUgY2xpZW50LCBhbmQg
aXQgbGluZ2VyZWQgZm9yIAp5ZWFycyB3aXRob3V0IGdvaW5nIGluLgoKVGhlcmUgd2VyZSBjZXJ0
YWlubHkgcGF0Y2ggc2V0cyB0aGF0IHdlcmUgc21hbGwgZW5vdWdoIHRoYXQgSSB0aGluayBpdCAK
d291bGQgaGF2ZSBiZWVuIHJlYXNvbmFibGUgZm9yIG1lIHRvIGp1c3QgJ3RpbWUgb3V0JyBhbmQg
YXBwbHkgdGhlbSAKd2l0aG91dCByZXZpZXcuICBQZXJoYXBzIEknbSBub3QgdXNpbmcgdGhlICd0
cml2aWFsJyBwb2xpY3kgYXMgSSBzaG91bGQsIAphbmQgSSB0aGluayBEYW5pZWwgaXMgcmlnaHQg
dGhhdCB0aGVyZSBqdXN0IGFyZW4ndCBlbm91Z2ggb2YgdXMuCgpCdXQgYW5vdGhlciB0cnV0aCBp
cyBJIGNvdWxkIGhhdmUgc2hvdXRlZCBsb3VkZXIgYW5kIG1vcmUgb2Z0ZW4gYW5kIApwZXJoYXBz
IGdvdHRlbiB0aGUgd2Vic29ja2V0IHBhdGNoIGluIGZhc3RlciwgYnV0IGl0IHdhc24ndCBpbXBh
Y3RpbmcgbWUgCm9yIGFueSBvZiBteSBjdXN0b21lcnMsIHNvIEkgZGlkbid0LgoKPiAKPiAgICAg
Rm9yIHRoZSBzYWtlIG9mIGhhdmluZyB0aGUgcHJvamVjdHMgYmVpbmcgYWJsZSB0byBtb3ZlIGZv
cndhcmQgd2l0aCBhCj4gICAgIHJlZHVjZWQgbnVtYmVyIG9mIGNvbnRyaWJ1dG9ycy9yZXZpZXdl
cnMsIHRoZSBwcm9wb3NhbCBpcyB0byAqYWxsb3cqIGEKPiAgICAgbWFpbnRhaW5lciB0byBtZXJn
ZSBhIE1lcmdlIFJlcXVlc3Qgd2l0aG91dCBhbiBleHBsaWNpdCBhY2sgaWYgdGhlCj4gICAgIHRo
cmVlCj4gICAgIGZvbGxvd2luZyBjb25kaXRpb25zIGFyZSBtZXQ6Cj4gICAgIDEpIFRoZSBNZXJn
ZSBSZXF1ZXN0IGhhcyBiZWVuIHBlbmRpbmcgZm9yIGF0IGxlYXN0IDMgd2Vla3Mgd2l0aG91dAo+
ICAgICBnZXR0aW5nIG5ldyBjb21tZW50cwo+ICAgICAyKSBUaGUgTWVyZ2UgUmVxdWVzdCBzdWJt
aXR0ZXIgaGFzIGtlcHQgYXNraW5nIGEgcmV2aWV3IG9uIGEgd2Vla2x5Cj4gICAgIGJhc2lzCj4g
ICAgIDMpIFRoZXJlIGFyZSBubyBwZW5kaW5nIG5hY2tzIG9uIHRoZSBNZXJnZSBSZXF1ZXN0Cj4g
Cj4gCj4gSXQncyBoYXJkIHRvIGRlZmluZSBhIGRlbGF5IHRvIGJ5cGFzcyBhIHJldmlld2luZyAm
IGNvbnNlbnN1cyBydWxlLiBJbiAKPiBnZW5lcmFsLCBpdCBzaG91bGQgcmVhbGx5IGJlIGZyb3du
ZWQgdXBvbi4gVGhlcmUgaXMgY2xlYXJseSBtb3JlIHRoYW4gCj4gb25lIHBlcnNvbiBpbnRlcmVz
dGVkIGFuZCB1c2luZyBTcGljZS4gSWYgdGhlIGlzc3VlIGlzIGltcG9ydGFudCwgaXQgCj4gc2hv
dWxkIGJlIGZhaXJseSBlYXN5IHRvIGdldCBzb21lb25lIGVsc2UgdG8gbG9vayBhdCB0aGUgaXNz
dWUgaW4gYSAKPiB0aW1lbHkgbWFubmVyLiBJZiBub3QsIHRoZXJlIGFyZSBwcm9iYWJseSBtb3Jl
IGltcG9ydGFudC9pbnRlcmVzdGluZyAKPiB0aGluZ3MgdG8gZG8gdG8gZ2V0IG90aGVyIGludGVy
ZXN0ZWQuCgpJIGhhdmUgdG8gc2F5IHRoYXQgSSB3YXMgcmVhbGx5IHN0YXJ0bGVkIHRvIGZpbmQg
dGhhdCB0aGUgQysrIGNoYW5nZSBoYWQgCmJlZW4gbWVyZ2VkLiAgSSBsYXJnZWx5IGRvbid0IHJl
dmlldyBzcGljZSBzZXJ2ZXIgcGF0Y2hlcywgYXMgSSBjb25zaWRlciAKbXlzZWxmIGEgY29uc3Vt
ZXIgb2YgdGhlIHNwaWNlIHNlcnZlciwgYW5kIG5vdCBleHBlcnQgZW5vdWdoIHRvIGNvbW1lbnQg
Cm9uIG1vc3QgcGF0Y2hlcy4gIFRvIG15IGRpc2NyZWRpdCwgSSBoYXZlbid0IHJlYWxseSBhZGFw
dGVkIHRvIHRoZSAKZ2l0bGFiIGVyYTsgSSBoYXZlIG5vdCBzdWJzY3JpYmVkIHRvIE1ScyBpbiBh
cmVhcyBvdXRzaWRlIG15IHByb2plY3RzIAooeDExc3BpY2UsIHNwaWNlLWh0bWw1KS4KCkkgYWxz
byBhZ3JlZSB3aXRoIE1hcmMtQW5kcsOpIHRoYXQgdGhpcyBjb252ZXJzYXRpb24gc2hvdWxkIGhh
dmUgdGFrZW4gCnBsYWNlIG92ZXIgdGhlIG1haWxpbmcgbGlzdC4gIEEgbWVyZ2UgcmVxdWVzdCBp
cyBub3QgdGhlIGFwcHJvcHJpYXRlIApwbGFjZSB0byBkaXNjdXNzIHRoYXQgc3Vic3RhbnRpdmUg
YSBjaGFuZ2UuCgpBbmQgSSAqd291bGQqIGhhdmUgbm90aWNlZCBhIGRpc2N1c3Npb24gb2YgdGhh
dCBzaWduaWZpY2FudCBhIGNoYW5nZSBvbiAKdGhlIG1haWxpbmcgbGlzdCwgYW5kIEkgbWlnaHQg
aGF2ZSBldmVuIHN0aXJyZWQgbXlzZWxmIHRvIGludmVzdCBpbiBpdCAKZW5vdWdoIHRvIGdpdmUg
YSBjb25zaWRlcmVkIG9waW5pb24uCgpDaGVlcnMsCgpKZXJlbXkKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
