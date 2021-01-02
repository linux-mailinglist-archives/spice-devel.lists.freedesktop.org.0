Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7892E86D1
	for <lists+spice-devel@lfdr.de>; Sat,  2 Jan 2021 09:49:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229D989780;
	Sat,  2 Jan 2021 08:49:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [IPv6:2a01:e0c:1:1599::13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 572E089780
 for <spice-devel@lists.freedesktop.org>; Sat,  2 Jan 2021 08:46:23 +0000 (UTC)
Received: from [IPv6:2a01:e0a:240:a730:aae4:91a8:2d56:10e3] (unknown
 [IPv6:2a01:e0a:240:a730:aae4:91a8:2d56:10e3])
 (Authenticated sender: roland65)
 by smtp4-g21.free.fr (Postfix) with ESMTPSA id 9974219F57C
 for <spice-devel@lists.freedesktop.org>; Sat,  2 Jan 2021 09:46:19 +0100 (CET)
From: Roland Baudin <roland65@free.fr>
To: spice-devel@lists.freedesktop.org
References: <ae3d253a-1231-4f9d-1017-05cf3e442ffb@free.fr>
Message-ID: <e39ee648-3f62-4a4f-84b2-8ce7426e60ec@free.fr>
Date: Sat, 2 Jan 2021 09:46:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <ae3d253a-1231-4f9d-1017-05cf3e442ffb@free.fr>
Content-Language: fr
X-Mailman-Approved-At: Sat, 02 Jan 2021 08:49:00 +0000
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpwZXJoYXBzIHRoaXMgaXMgbm90IHRoZSByaWdodCBwbGFjZSBmb3IgdGhpcyByZXF1ZXN0
PyBDb3VsZCB5b3UgZ2l2ZSBtZSAKc29tZSBwbGFjZSB3aGVyZSBJIGNhbiBwb3N0IHRoaXMgcmVx
dWVzdD8KClRoYW5rcyBhIGxvdCwKUkIKCgpMZSAzMS8xMi8yMDIwIMOgIDEwOjQyLCBSb2xhbmQg
QmF1ZGluIGEgw6ljcml0wqA6Cj4gSGkgdGhlcmUsCj4KPiBmb3IgbXkgb3duIHB1cnBvc2UsIEkg
aGF2ZSBwb3J0ZWQgdGhlIHNlYW1sZXNzIG1vZGUgcGF0Y2hlcyB3cml0dGVuIGJ5IAo+IEpha3Vi
IEphbmvFrywgT25kxZllaiBIb2zDvSBhbmQgTHVrw6HFoSBWZW5ob2RhIChzZWUgCj4gaHR0cHM6
Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvc3BpY2UtZGV2ZWwvbXNnMzAxNzcuaHRtbCkgdG8gVWJ1
bnR1IDIwLjA0Lgo+Cj4gSSBoYXZlIGFsc28gaGFja2VkIHRoZSB2aXJ0LXZpZXdlciBndGsgYXBw
IHRvIGFsbG93IGVhc2lseSBlbnRlcmluZyAKPiBhbmQgbGVhdmluZyBzZWFtbGVzcyBtb2RlLiBU
aGlzIGlzIGEgdmVyeSBjb252ZW5pZW50IHdheSB0byB3b3JrIHdpdGggCj4gdGhlIFZNIGluIFVi
dW50dS4gSXQncyBwcm9iYWJseSBub3QgZGlmZmljdWx0IHRvIGRvIHRoZSBzYW1lIHdpdGggCj4g
dmlydC1tYW5hZ2VyIGJ1dCBhbGFzIEknbSBub3QgYSBQeXRob24gcHJvZ3JhbW1lci4KPgo+IFNv
LCBJIGhhdmUgYSBzZXQgb2YgcGFja2FnZXMgZm9yIFVidW50dSAyMC4wNCBhbmQgaW5zdGFsbGF0
aW9uIG9mIAo+IHRoZXNlIHBhY2thZ2VzIGlzIHZlcnkgc2ltcGxlLiBJbiB0aGUgV2luZG93cyBW
TSwgaXQgaXMgYWxzbyByZXF1aXJlZCAKPiB0byByZXBsYWNlIHRoZSB2ZGFnZW50IGFuZCB2ZHNl
cnZpY2UgcHJvZ3JhbXMgYnkgdGhlIHBhdGNoZWQgb25lcy4gCj4gVGhpcyBpcyBub3QgZGlmZmlj
dWx0LCBidXQgaXQncyBhIG1hbnVhbCBwcm9jZXNzIGZvciBub3cuCj4KPiBFdmVyeXRoaW5nIHdv
cmtzIHdlbGwgKGJ1dCB0aGVyZSBhcmUgcHJvYmFibHkgaXNzdWVzIEkgZGlkbid0IHNlZSwgCj4g
cG9zc2libHkgd2l0aCBtdWx0aXBsZSBzY3JlZW5zKSBhbmQgSSB0aGluayB0aGlzIGNvdWxkIGJl
IGEgbWFqb3IgCj4gaW1wcm92ZW1lbnQgdG8gdGhlIGt2bS9xZW11IHVzZXIgZXhwZXJpZW5jZSBp
biBMaW51eC4KPgo+IEhvd2V2ZXIsIEkgZG9uJ3QgaGF2ZSB0aW1lIChhbmQgc2tpbGxzKSB0byBt
YWludGFpbiB0aGVzZSBwYWNrYWdlcyBhbmQgCj4gcGF0Y2hlcy4gSSBoYXZlIHR3byBvdGhlciBv
cGVuIHNvdXJjZSBwcm9qZWN0cyAoWGZlIGFuZCBUZXhNYXRocykgYW5kIAo+IGEgZnVsbCB0aW1l
IGpvYi4uLgo+Cj4gU28sIEknbSBhc2tpbmcgaGVyZSBpZiBzb21lb25lIGlzIGludGVyZXN0ZWR0
byBnZXQgdGhpcyB3b3JrIGFuZCAKPiBtYWludGFpbiBpdD8gSSBjb3VsZCBnaXZlIHlvdSBteSBw
YWNrYWdlcyAodGhlIHBhdGNoZXMgYXJlIGluIHRoZSAKPiBzb3VyY2UgcGFja2FnZXMpIGFuZCBh
IGxpdHRsZSBleHBsYW5hdGlvbiB0byBzdGFydC4KPgo+IEknZCBiZSBoYXBweSBpZiB0aGUgY29t
bXVuaXR5IGNvdWxkIGJ1aWxkIHNvbWV0aGluZyB1c2VmdWwgdXBvbiB0aGlzIAo+IHdvcmsuCj4K
PiBJZiBzb21lb25lIGlzIGludGVyZXN0ZWQsIGhvdyBjYW4gSSBzZW5kIHRoZSBmaWxlcz8gTWFp
bCBhdHRhY2htZW50IHRvIAo+IHRoaXMgbGlzdD8gR29vZ2xlIGRyaXZlPwo+Cj4gVGhhbmtzIGZv
ciBhbmR5IGFuc3dlciBhbmQgaGF2ZSBhIG5pY2UgZGF5LAo+Cj4gUkIKPgo+Cj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
