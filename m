Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 727551E2692
	for <lists+spice-devel@lfdr.de>; Tue, 26 May 2020 18:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAE56E21B;
	Tue, 26 May 2020 16:11:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F22DF6E21B
 for <spice-devel@lists.freedesktop.org>; Tue, 26 May 2020 16:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+xe85gD/cSSrRTL0xu4nkMCNTHCNIwcFH94Di2QcQko=; b=v5Wm9pn5v5F9JLhJ0uVhLKEOhz
 DPk1qFKj1n+Ty+b5KWfIE+nmlQ3YnxOabC/4bLQel9+o85kt7xPTLEpLrgg+22gDvuoSjWn1E8oXn
 HPtRfvJQ4j/wKDQiDOI6jM2dOIv1Ekz2sl+KCOtpRlDHLr6klAUB3MtCLqtVrd42HHtM=;
Received: from jwhite.vpn.codeweavers.com ([10.69.141.101] helo=[10.0.0.11])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1jdcAw-00046M-Rx; Tue, 26 May 2020 11:11:37 -0500
To: =?UTF-8?Q?Marc-Andr=c3=a9_Lureau?= <marcandre.lureau@gmail.com>
References: <9de80072-fffc-9155-d2dc-9aab7ad73745@codeweavers.com>
 <CAJ+F1C+GjG_jawa1y=KReZfBvf0j40Jxs3MhMCQ5Dj0nx6r7xA@mail.gmail.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <a251a7b4-80f3-dcbd-a11b-a16c0f91694b@codeweavers.com>
Date: Tue, 26 May 2020 11:11:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAJ+F1C+GjG_jawa1y=KReZfBvf0j40Jxs3MhMCQ5Dj0nx6r7xA@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -26.3
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > I didn't know you could do that. I suppose the solution
 is X11 only? It > would be nice to have gnome-remote-desktop integration.
 Though GNOME > seems more interested to support RDP these days (ha [...] 
 Content analysis details:   (-26.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -20 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
Subject: Re: [Spice-devel] Brainstorming help with x11spice on socket
 permissions across users
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBJIGRpZG4ndCBrbm93IHlvdSBjb3VsZCBkbyB0aGF0LiBJIHN1cHBvc2UgdGhlIHNvbHV0
aW9uIGlzIFgxMSBvbmx5PyBJdCAKPiB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgZ25vbWUtcmVtb3Rl
LWRlc2t0b3AgaW50ZWdyYXRpb24uIFRob3VnaCBHTk9NRSAKPiBzZWVtcyBtb3JlIGludGVyZXN0
ZWQgdG8gc3VwcG9ydCBSRFAgdGhlc2UgZGF5cyAoaGF2aW5nIGEgZ2xpYi9nb2JqZWN0IAo+IHNl
cnZlciBsaWJyYXJ5IHdvdWxkIGNlcnRhaW5seSBoZWxwIHRoZW0gdG8gY29uc2lkZXIgU3BpY2Us
ICpoaW50KiA7KQoKWWVzLCBhbHRob3VnaCBJJ20gbm90IHN1cmUgV2F5bGFuZCBzdXBwb3J0IHdv
dWxkIGJlIGhhcmQuCgo+IAo+ICAgICBUaGUgc2Vjb25kIGlzIHVzZXIgQSBnZXR0aW5nIGFjY2Vz
cyB0byBhIG5ldyBzZXNzaW9uIGZvciB0aGVtc2VsdmVzLsKgIEkKPiAgICAgZG9uJ3QgZmVlbCBi
bG9ja2VkIG9uIHRoaXMgY2FzZTsgdGhlIHdvcmsgc2hvdWxkIGJlIHN0cmFpZ2h0Cj4gICAgIGZv
cndhcmQsIGlmCj4gICAgIGZpZGRseSAoSSBtYXkgcmVncmV0IHRob3NlIHdvcmRzOyBkb2luZyBh
IHNlY3VyZSAnc3UnIGxpa2UgZnVuY3Rpb24gb3V0Cj4gICAgIG9mIGFwYWNoZSBtYXkgYmUgaGFy
ZGVyIHRoYW4gSSB0aGluaykuCj4gCj4gCj4gTXVsdGlwbGUgdXNlciBzZXNzaW9uIGlzIHRyaWNr
eS4gQWZhaWssIHRoaXMgaXMgbW9zdGx5IHVzZWQgZm9yIGRlc2t0b3AgCj4gZGV2ZWxvcG1lbnQu
IFRoZSBpbnN0cnVjdGlvbnMgdG8gc2V0dXAgc3VjaCBlbnZpcm9ubW5lbnQgY2hhbmdlIG92ZXIg
Cj4gdGltZSBhbmQgZGVza3RvcC4gRGlkIEkgbWlzcyBzb21ldGhpbmc/IFdoYXQncyB0aGUgdXNl
IGNhc2U/CgpUaGUgdXNlIGNhc2UgaXMgSSd2ZSBnb3QgYSBzZXJ2ZXIgSSdkIGxpa2UgdG8gZ2V0
IGFjY2VzcyB0by4gIEkgaGl0IGEgCndlYiBwYWdlLCBwcm92aWRlIG15IGNyZWRlbnRpYWxzLCBh
bmQgSSBoYXZlIGEgZnVsbCBsb2dpbiBzZXNzaW9uLiAKVXNpbmcgeGRtY3AvZ2RtIGhhcyB0aGUg
dmlydHVlIG9mIGdvaW5nIHRocm91Z2ggJ3N0YW5kYXJkJyBjaGFubmVscy4KCj4gCj4gCj4gICAg
IFRoZSAzcmQgY2FzZSwgaG93ZXZlciwgaGFzIG1lIHRyb3VibGVkLsKgIFRoaXMgaXMgdGhlIGNh
c2UgdGhhdCB1c2VyIEEKPiAgICAgKHBvdGVudGlhbGx5IGFwYWNoZSkgc3RhcnRzIHgxMXNwaWNl
IHdoaWNoIHRoZW4gZG9lcyBhbiB4ZG1jcAo+ICAgICByZXF1ZXN0IHRvCj4gICAgIGdkbSwgYW5k
IGV2ZW50dWFsbHkgc3VwcG9ydHMgYSBsb2cgaW4gYnkgdXNlciBCLsKgIFRoaXMgbWFrZXMgaXQK
PiAgICAgY2hhbGxlbmdpbmcgdG8gcHJvdmlkZSBhIHdheSBmb3IgdXNlciBCIHRvIGxhdW5jaCBh
IHNwaWNlIGFnZW50IG9yIGEKPiAgICAgcHVsc2VhdWRpbyBkYWVtb24gYW5kIGhhdmUgaXQgc2Vj
dXJlbHkgY29ubmVjdCBiYWNrIHRvIHRoZSBzcGljZQo+ICAgICBwcm9jZXNzCj4gICAgIHN0YXJ0
ZWQgYnkgdXNlciBBLsKgIFRoZSBhcHByb2FjaCBJJ3ZlIHVzZWQgaW4gdGhlIHBhc3QgaXMgdG8g
aGF2ZSBhCj4gICAgIHByaXZpbGVnZWQgYmluYXJ5IHVzZSBpbmZvcm1hdGlvbiBmcm9tIGFuIFgg
YXRvbSB0byBhZGp1c3Qgc29ja2V0Cj4gICAgIHBlcm1pc3Npb25zLsKgIEJ1dCB0aGF0IGZlZWxz
IHVuc2F0aXNmeWluZywgYW5kIGl0IHNlZW1zIHRvIG1lIHRoYXQgdGhpcwo+ICAgICBpcyBhbiBh
cmVhIHdpdGggYSBsb3Qgb2YgbW9kZXJuIHRoaW5raW5nIHRoYXQgSSd2ZSBsYXJnZWx5IG1pc3Nl
ZC4KPiAKPiAgICAgQXMgYW4gYWRkZWQgY29tcGxleGl0eSwgaW4gdGhlIGlkZWFsIGNhc2UsIHlv
dSBoYXZlIGEgdmRhZ2VudAo+ICAgICBydW5uaW5nIGFzCj4gICAgIHVzZXIgQSBkdXJpbmcgdGhl
IGxvZ2luIHByb2Nlc3MsIHdoaWNoIGtub3dzIHRvIHJlYXAgaXRzZWxmIGFuZCBnaXZlCj4gICAg
IHdheQo+ICAgICB0byBhIHZkYWdlbnQgbGF1bmNoZWQgYnkgdXNlciBCLgo+IAo+ICAgICBJIHdh
cyBob3BpbmcgdGhhdCBvdGhlcnMgd291bGQgaGF2ZSBtb2Rlcm4gaW5zdGluY3RzIG9uIGhvdyB0
byBtb3JlCj4gICAgIGNvcnJlY3RseSBpbXBsZW1lbnQgdGhlIHRoaXJkIHVzZSBjYXNlLsKgIENs
dWUgYmF0cyBvciBvdGhlciBpZGVhcwo+ICAgICB3ZWxjb21lLgo+IAo+IAo+IFRoaXMgaXMgc3lz
dGVtZC9kZXNrdG9wIHRlcnJpdG9yaWVzLCBhbmQgSSBkb24ndCBrbm93IHdoYXQgd291bGQgYmUg
dGhlIAo+IGJlc3Qgd2F5IHRvIGRvIGFsbCB0aGF0LiBJIHdvdWxkIHN1Z2dlc3QgeW91IGFzayB0
aGUgCj4gZ25vbWUtcmVtb3RlLWRlc2t0b3AgJiBzeXN0ZW1kL2xvZ2luZCBkZXZlbG9wcGVycywg
b3Igb3RoZXIgZGVza3RvcCAKPiBkZXZlbG9wcGVycyBob3cgdGhleSBwbGFuIG9yIG5vdCB0byBz
b2x2ZSBpdC4KCkNoZWNrLCB0aGFua3MuCgpDaGVlcnMsCgpKZXJlbXkKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
