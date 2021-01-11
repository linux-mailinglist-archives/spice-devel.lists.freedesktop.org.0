Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9306E2F1048
	for <lists+spice-devel@lfdr.de>; Mon, 11 Jan 2021 11:43:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDFE89D79;
	Mon, 11 Jan 2021 10:43:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1AB389DA2
 for <spice-devel@lists.freedesktop.org>; Mon, 11 Jan 2021 10:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610361826;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iaW5WYeSsWQr0fG/8dzx2krsDVIUJvO+rENfh6lB6QA=;
 b=VIY/xH+LDzSc8OVeupFZoHfdf4sE3mLoTXcLSZIHRjYjNCmgsnxJRbICUTYAx8jMzGLkbi
 WMuE39dHJvjy2OpcHVq/NPdTOSDU6A929t1A8Ujyfhuxoup9fwpPzr7vH/NZvxxirx0Cha
 XjEusZLmrp79+ojGWB2AyEPTGyFLoy0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-bvXz7GYtP5652bKklx94PQ-1; Mon, 11 Jan 2021 05:43:40 -0500
X-MC-Unique: bvXz7GYtP5652bKklx94PQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A48D71005D4E;
 Mon, 11 Jan 2021 10:43:39 +0000 (UTC)
Received: from [10.35.206.134] (unknown [10.35.206.134])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D1CC60C4D;
 Mon, 11 Jan 2021 10:43:37 +0000 (UTC)
To: Roland Baudin <roland65@free.fr>
References: <ae3d253a-1231-4f9d-1017-05cf3e442ffb@free.fr>
 <e39ee648-3f62-4a4f-84b2-8ce7426e60ec@free.fr>
 <CAH=CeiBxwN2WB+LkPBbwEEVvmE0HFWBRS3wrrO8qOF4C6FPjKQ@mail.gmail.com>
 <eaf52cd8-e719-5da1-1f53-cadc70ea0479@free.fr>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <c3a191f3-0e70-d178-d8fb-805a501783fc@redhat.com>
Date: Mon, 11 Jan 2021 12:43:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <eaf52cd8-e719-5da1-1f53-cadc70ea0479@free.fr>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Spice-devel] Working seamless mode
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
Reply-To: uril@redhat.com
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMS8xMC8yMSA2OjUwIFBNLCBSb2xhbmQgQmF1ZGluIHdyb3RlOgo+IEhpIEpha3ViLAo+IAo+
IHRoYW5rcyBmb3IgeW91ciBkZXRhaWxlZCBhbnN3ZXIuIEkgdW5kZXJzdGFuZCB0aGVyZSBtYXkg
aXNzdWVzIHdpdGggCj4gV2F5bGFuZCwgYnV0IElNSE8gdGhlIHZhc3QgbWFqb3JpdHkgb2YgTGlu
dXggdXNlcnMgZG9uJ3QgdXNlIFdheWxhbmQgeWV0IAo+ICh0b28gbWFueSBwcm9ibGVtcyEpLiBT
byBJIHN0aWxsIHRoaW5rIHlvdXIgd29yayBpcyB2ZXJ5IHVzZWZ1bC4gSSB1c2UgCj4gdGhlIHNl
YW1sZXNzIG1vZGUgYXQgaG9tZSBhbmQgYXQgd29yayBpbiBVYnVudHUgMjAuMDQgYW5kIGl0IHdv
cmtzIHZlcnkgCj4gbmljZWx5Lgo+IAo+IEJ1dCBJIHVuZGVyc3RhbmQgaXQncyBkaWZmaWN1bHQg
dG8gbWFpbnRhaW4gdGhlc2VzIHBhdGNoZXMgYW5kIG1ha2UgdGhlbSAKPiBldm9sdmUuCj4gCj4g
SGF2ZSBhIG5pY2UgZGF5LAo+IFJCCgpIaSwKClBsZWFzZSBkbyBzZW5kIHlvdXIgcGF0Y2hlcyB0
byB0aGUgbGlzdC4KVGhlIGJlc3Qgd2F5IGlzIHdpdGggZ2l0IHNlbmQtZW1haWwsIGJ1dCBhdHRh
Y2htZW50cwphbHNvIHdvcmsuIFByZWZpeCBwYXRjaCBzdWJqZWN0IHdpdGggdGhlIGNvbXBvbmVu
dAppdCBiZWxvbmdzIHRvIChmb3IgZXhhbXBsZSBbc3BpY2UtZ3RrXSkuCgpBbHRlcm5hdGl2ZWx5
LCBpZiB5b3UgcHJlZmVyLCB5b3UgY2FuIGNyZWF0ZSBhbiBpc3N1ZQpvbiBnaXRsYWIuZnJlZWRl
c2t0b3AuY29tLCBhcyBKYWt1YiBzdWdnZXN0ZWQsIGFuZAphZGQgdGhlIHRoZSBwYXRjaGVzIHRo
ZXJlLgoKTWF5YmUgeW91ciBwYXRjaGVzIHdpbGwgbm90IGJlIG1haW50YWluZWQsIGJ1dApieSBz
aGFyaW5nIHRoZW0sIG90aGVycyBjYW4gdHJ5IGEgYmV0dGVyCnNlYW1sZXNzLW1vZGUgYW5kIG1h
eWJlIGV2ZW4gaW1wcm92ZSBpdCBmdXJ0aGVyLgoKVGhhbmtzLAogICAgIFVyaS4KCj4gCj4gCj4g
Cj4gTGUgMDYvMDEvMjAyMSDDoCAxMjo0OCwgSmFrdWIgSmFua3UgYSDDqWNyaXTCoDoKPj4gSGks
Cj4+Cj4+IE9uIFNhdCwgSmFuIDIsIDIwMjEgYXQgOTo0OSBBTSBSb2xhbmQgQmF1ZGluIDxyb2xh
bmQ2NUBmcmVlLmZyPiB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+IHBlcmhhcHMgdGhpcyBpcyBub3Qg
dGhlIHJpZ2h0IHBsYWNlIGZvciB0aGlzIHJlcXVlc3Q/IENvdWxkIHlvdSBnaXZlIG1lCj4+PiBz
b21lIHBsYWNlIHdoZXJlIEkgY2FuIHBvc3QgdGhpcyByZXF1ZXN0Pwo+PiBUaGlzIGlzIHRoZSBy
aWdodCBwbGFjZSwgSSBiZWxpZXZlLiBBbHRlcm5hdGl2ZWx5LCB5b3UgY291bGQgb3BlbiBhCj4+
IG5ldyBpc3N1ZSBoZXJlOgo+PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uv
c3BpY2UtcHJvdG9jb2wvLS9pc3N1ZXMKPj4KPj4gQnV0IHRvIGJlIGhvbmVzdCwgSSB3b3VsZG4n
dCBleHBlY3QgYW55b25lIHRvIHRha2UgaXQgdXAgYW55dGltZSBzb29uLgo+Pgo+PiBJIGRvbid0
IGtub3cgaG93IHRoZXNlIHBhdGNoZXMgaGF2ZSBhZ2VkIHNpbmNlIHRoZSB0aW1lIEkgcHVibGlz
aGVkIHRoZW0sCj4+IGJ1dCBJIGFzc3VtZSB0aGF0IHRoZXJlIHdpbGwgYmUgc29tZSBpc3N1ZXMg
d2l0aCBXYXlsYW5kIChib3RoIG9uIHRoZSAKPj4gY2xpZW50Cj4+IGFuZCBndWVzdCBzaWRlKS4K
Pj4KPj4gVGhlIG1haW4gcHJvYmxlbSBpcyBwcm9iYWJseSB0aGUgZGVzaWduIGl0c2VsZi4KPj4K
Pj4gc3BpY2UtZ2t0L3ZpcnQtdmlld2VyIHNob3dzIGEgc2luZ2xlIGZ1bGxzY3JlZW4gd2luZG93
IHRoYXQgaXMKPj4gcGFydGlhbGx5IHRyYW5zcGFyZW50Cj4+IChpbiB0aGUgYXJlYXMgd2hlcmUg
dGhlcmUncyBubyBndWVzdCB3aW5kb3cpLiBUaGlzIHJlc3VsdHMgaW4gYSBwb29yIAo+PiBpbnRl
Z3JhdGlvbgo+PiB3aXRoIHRoZSBjbGllbnQncyBzeXN0ZW0gLS0gd2hhdCB5b3UnZCB3YW50IGlz
IHRvIGhhdmUgYSBuZXcgd2luZG93IGluCj4+IHRoZSBjbGllbnQgZm9yIGVhY2gKPj4gd2luZG93
L2FwcGxpY2F0aW9uIG9uIHRoZSBndWVzdCBhbmQgc2VwYXJhdGUgZHJhd2luZyBjb250ZXh0cyBm
b3IgZWFjaCAKPj4gYXBwLgo+PiBUaGUgb3JpZ2luYWwgdGhyZWFkIGdvZXMgaW50byBtb3JlIGRl
dGFpbCBvbiB0aGUgaXNzdWVzLCBJIHRoaW5rLgo+Pgo+PiBTbyB0aGUgcGF0Y2hlcyB3b3VsZCBw
cm9iYWJseSByZXF1aXJlIGEgbG90IG9mIGZ1cnRoZXIgd29yaywgb3IKPj4gY29tcGxldGUgcmV3
cml0ZS4KPj4gSSB3b3VsZCBiZSBoYXBweSB0byBoYXZlIHRoaXMgZmVhdHVyZSBhcyB3ZWxsLCBi
dXQgdGhlIGNoYW5jZXMgYXJlCj4+IGltaG8gc2xpbSwgc29ycnkuCj4+Cj4+IFJlZ2FyZHMsCj4+
IEpha3ViCj4+Cj4+PiBUaGFua3MgYSBsb3QsCj4+PiBSQgo+Pj4KPj4+Cj4+PiBMZSAzMS8xMi8y
MDIwIMOgIDEwOjQyLCBSb2xhbmQgQmF1ZGluIGEgw6ljcml0IDoKPj4+PiBIaSB0aGVyZSwKPj4+
Pgo+Pj4+IGZvciBteSBvd24gcHVycG9zZSwgSSBoYXZlIHBvcnRlZCB0aGUgc2VhbWxlc3MgbW9k
ZSBwYXRjaGVzIHdyaXR0ZW4gYnkKPj4+PiBKYWt1YiBKYW5rxa8sIE9uZMWZZWogSG9sw70gYW5k
IEx1a8OhxaEgVmVuaG9kYSAoc2VlCj4+Pj4gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMv
c3BpY2UtZGV2ZWwvbXNnMzAxNzcuaHRtbCkgdG8gVWJ1bnR1IAo+Pj4+IDIwLjA0Lgo+Pj4+Cj4+
Pj4gSSBoYXZlIGFsc28gaGFja2VkIHRoZSB2aXJ0LXZpZXdlciBndGsgYXBwIHRvIGFsbG93IGVh
c2lseSBlbnRlcmluZwo+Pj4+IGFuZCBsZWF2aW5nIHNlYW1sZXNzIG1vZGUuIFRoaXMgaXMgYSB2
ZXJ5IGNvbnZlbmllbnQgd2F5IHRvIHdvcmsgd2l0aAo+Pj4+IHRoZSBWTSBpbiBVYnVudHUuIEl0
J3MgcHJvYmFibHkgbm90IGRpZmZpY3VsdCB0byBkbyB0aGUgc2FtZSB3aXRoCj4+Pj4gdmlydC1t
YW5hZ2VyIGJ1dCBhbGFzIEknbSBub3QgYSBQeXRob24gcHJvZ3JhbW1lci4KPj4+Pgo+Pj4+IFNv
LCBJIGhhdmUgYSBzZXQgb2YgcGFja2FnZXMgZm9yIFVidW50dSAyMC4wNCBhbmQgaW5zdGFsbGF0
aW9uIG9mCj4+Pj4gdGhlc2UgcGFja2FnZXMgaXMgdmVyeSBzaW1wbGUuIEluIHRoZSBXaW5kb3dz
IFZNLCBpdCBpcyBhbHNvIHJlcXVpcmVkCj4+Pj4gdG8gcmVwbGFjZSB0aGUgdmRhZ2VudCBhbmQg
dmRzZXJ2aWNlIHByb2dyYW1zIGJ5IHRoZSBwYXRjaGVkIG9uZXMuCj4+Pj4gVGhpcyBpcyBub3Qg
ZGlmZmljdWx0LCBidXQgaXQncyBhIG1hbnVhbCBwcm9jZXNzIGZvciBub3cuCj4+Pj4KPj4+PiBF
dmVyeXRoaW5nIHdvcmtzIHdlbGwgKGJ1dCB0aGVyZSBhcmUgcHJvYmFibHkgaXNzdWVzIEkgZGlk
bid0IHNlZSwKPj4+PiBwb3NzaWJseSB3aXRoIG11bHRpcGxlIHNjcmVlbnMpIGFuZCBJIHRoaW5r
IHRoaXMgY291bGQgYmUgYSBtYWpvcgo+Pj4+IGltcHJvdmVtZW50IHRvIHRoZSBrdm0vcWVtdSB1
c2VyIGV4cGVyaWVuY2UgaW4gTGludXguCj4+Pj4KPj4+PiBIb3dldmVyLCBJIGRvbid0IGhhdmUg
dGltZSAoYW5kIHNraWxscykgdG8gbWFpbnRhaW4gdGhlc2UgcGFja2FnZXMgYW5kCj4+Pj4gcGF0
Y2hlcy4gSSBoYXZlIHR3byBvdGhlciBvcGVuIHNvdXJjZSBwcm9qZWN0cyAoWGZlIGFuZCBUZXhN
YXRocykgYW5kCj4+Pj4gYSBmdWxsIHRpbWUgam9iLi4uCj4+Pj4KPj4+PiBTbywgSSdtIGFza2lu
ZyBoZXJlIGlmIHNvbWVvbmUgaXMgaW50ZXJlc3RlZHRvIGdldCB0aGlzIHdvcmsgYW5kCj4+Pj4g
bWFpbnRhaW4gaXQ/IEkgY291bGQgZ2l2ZSB5b3UgbXkgcGFja2FnZXMgKHRoZSBwYXRjaGVzIGFy
ZSBpbiB0aGUKPj4+PiBzb3VyY2UgcGFja2FnZXMpIGFuZCBhIGxpdHRsZSBleHBsYW5hdGlvbiB0
byBzdGFydC4KPj4+Pgo+Pj4+IEknZCBiZSBoYXBweSBpZiB0aGUgY29tbXVuaXR5IGNvdWxkIGJ1
aWxkIHNvbWV0aGluZyB1c2VmdWwgdXBvbiB0aGlzCj4+Pj4gd29yay4KPj4+Pgo+Pj4+IElmIHNv
bWVvbmUgaXMgaW50ZXJlc3RlZCwgaG93IGNhbiBJIHNlbmQgdGhlIGZpbGVzPyBNYWlsIGF0dGFj
aG1lbnQgdG8KPj4+PiB0aGlzIGxpc3Q/IEdvb2dsZSBkcml2ZT8KPj4+Pgo+Pj4+IFRoYW5rcyBm
b3IgYW5keSBhbnN3ZXIgYW5kIGhhdmUgYSBuaWNlIGRheSwKPj4+Pgo+Pj4+IFJCCj4+Pj4KPj4+
Pgo+Pj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4+PiBTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWwKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbAo=
