Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF70D55738
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 20:30:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E80E6E1BB;
	Tue, 25 Jun 2019 18:30:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 181776E1BB
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 18:30:09 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hfqDI-00047J-KK
 for spice-devel@lists.freedesktop.org; Tue, 25 Jun 2019 13:30:40 -0500
To: spice-devel@lists.freedesktop.org
References: <20190625161147.25211-1-fziglio@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <ac114c73-3c54-6c4d-c698-cb536092f521@codeweavers.com>
Date: Tue, 25 Jun 2019 13:30:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H5pgH9F9V4SiexrFmV00zsFHJX6Zc3vYmo00LjEosV4=; b=w9o7PUgzRG7Debup0C5DMYDRdh
 R6x/JaPcZaedvHyw+iqZ3aTai9pB2IVLhBpMxRFZv7psBCvmlNuOsIPFfJb8MNZeVh4fUaJqp9/6p
 XhTjE3OCKyadDxF/PoD9ZWkBADBVxdUR5ssrwaK4yokSliKMIi1ho0LJw7PRXbQ8z+gk=;
Subject: Re: [Spice-devel] [PATCH spice-server 00/23] WebSocket support
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2VyaWVzIEFja2VkLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+CgpP
biA2LzI1LzE5IDExOjExIEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gVXBkYXRlZCBhIGxv
bmdzdGFuZGluZyBwYXRjaCBmb3IgV2ViU29ja2V0IHN1cHBvcnQuCj4gCj4gVGhpcyBpbmNsdWRl
czoKPiAtIHN0eWxlIHVwZGF0ZXM6Cj4gICAgLSB0eXBlcyAoQzk5IGluc3RlYWQgb2YgR0xpYik7
Cj4gICAgLSBtZW1vcnkgYWxsb2NhdGlvbiAoR0xpYiBpbnN0ZWFkIG9mIFNQSUNFIGZ1bmN0aW9u
cyk7Cj4gLSBzdXBwb3J0IGZvciBXaW5kb3dzOwo+IC0gZGlmZmVyZW50IGZpeGVzOwo+IC0gYXV0
b21hdGljIHRlc3RzIHVzaW5nIEF1dG9iYWhuIFRlc3RzdWl0ZTsKPiAtIHNvbWUgbWlzc2luZyBm
ZWF0dXJlczoKPiAgICAtIFBJTkcvUE9ORyBtZXNzYWdlczsKPiAgICAtIGVtcHR5ICgwIGJ5dGVz
KSBmcmFtZXMuCj4gCj4gRnJlZGlhbm8gWmlnbGlvICgyMik6Cj4gICAgdGVzdC1nbGliLWNvbXBh
dDogRml4IEdfUElEX0ZPUk1BVCBkZWZpbml0aW9uIGZvciBvbGQgc3lzdGVtcwo+ICAgIHJlZHM6
IEZpeCBTU0xfQ1RYX3NldF9lY2RoX2F1dG8gY2FsbCBmb3Igc29tZSBvbGQgT3BlblNTTAo+ICAg
IHdlYnNvY2tldDogU2ltcGxpZnkgYW5kIGZpeCBjb25zdHJhaW5faW92Cj4gICAgd2Vic29ja2V0
OiBNb3ZlIFJlZHNXZWJTb2NrZXQgdG8gaGVhZGVyCj4gICAgd2Vic29ja2V0OiBNYWtlIHdlYnNv
Y2tldCBmdW5jdGlvbiBtb3JlIEFCSSBjb21wYXRpYmxlcyB3aXRoIFJlZFN0cmVhbQo+ICAgIHdl
YnNvY2tldDogTWFrZSB3ZWJzb2NrZXRfYWNrX2Nsb3NlIHN0YXRpYwo+ICAgIHdlYnNvY2tldDog
TmV3IGludGVyZmFjZSB0byBjcmVhdGUgUmVkc1dlYlNvY2tldAo+ICAgIHdlYnNvY2tldDogQmV0
dGVyIGVuY2Fwc3VsYXRpb24KPiAgICB3ZWJzb2NrZXQ6IERldGVjdCBhbmQgaGFuZGxlIHNvbWUg
aGVhZGVyIGVycm9yCj4gICAgd2Vic29ja2V0OiBCZXR0ZXIgdmFyaWFibGUgdHlwZXMKPiAgICB3
ZWJzb2NrZXQ6IFByb3BhZ2F0ZSBzb21lIHZhcmlhYmxlCj4gICAgd2Vic29ja2V0OiBGaXggdXBk
YXRpbmcgcmVtYWluaW5nIGJ5dGVzIHRvIHdyaXRlIGluIHdlYnNvY2tldF93cml0ZQo+ICAgIHdl
YnNvY2tldDogQXZvaWQgcG9zc2libGUgc2VydmVyIGNyYXNoIHVzaW5nIHdlYnNvY2tldHMKPiAg
ICB3ZWJzb2NrZXQ6IFN1cHBvcnQgY29ycmVjdGx5IHByb3RvY29sIHZhbHVlcwo+ICAgIHdlYnNv
Y2tldDogSGFuZGxlIGNhc2UgaWYgc2VydmVyIGNhbm5vdCB3cml0ZSB0aGUgaGVhZGVyIGVudGly
ZWx5Cj4gICAgd2Vic29ja2V0OiBBdm9pZHMgdG8gd3JpdGUgY2xvc2UgZnJhbWUgaW4gdGhlIG1p
ZGRsZSBvZiBkYXRhCj4gICAgd2Vic29ja2V0OiBIYW5kbGUgUElORyBhbmQgUE9ORyBmcmFtZXMK
PiAgICB0ZXN0LXdlYnNvY2tldDogV3JpdGUgYSB0ZXN0IGhlbHBlciB0byBtYWtlIHBvc3NpYmxl
IHRvIHJ1biBBdXRvYmFobgo+ICAgICAgdGVzdHN1aXRlCj4gICAgd2Vic29ja2V0OiBEbyBub3Qg
cmVxdWlyZSAiU2VjLVdlYlNvY2tldC1Qcm90b2NvbCIgaGVhZGVyCj4gICAgd2Vic29ja2V0OiBI
YW5kbGUgdGV4dCBkYXRhCj4gICAgd2Vic29ja2V0OiBIYW5kbGUgY29udGludWF0aW9uIGFuZCAw
LXNpemUgZnJhbWVzCj4gICAgY2k6IEFkZCB0ZXN0IGZvciB3ZWJzb2NrZXRzCj4gCj4gSmVyZW15
IFdoaXRlICgxKToKPiAgICBBZGQgc3VwcG9ydCBmb3IgY2xpZW50cyBjb25uZWN0aW5nIHdpdGgg
dGhlIFdlYlNvY2tldCBwcm90b2NvbC4KPiAKPiAgIC5naXRsYWItY2kueW1sICAgICAgICAgICAg
ICAgICAgICAgfCAgMjAgKwo+ICAgY29uZmlndXJlLmFjICAgICAgICAgICAgICAgICAgICAgICB8
ICAgOSArCj4gICBzZXJ2ZXIvTWFrZWZpbGUuYW0gICAgICAgICAgICAgICAgIHwgICAyICsKPiAg
IHNlcnZlci9tZXNvbi5idWlsZCAgICAgICAgICAgICAgICAgfCAgIDIgKwo+ICAgc2VydmVyL3Jl
ZC1zdHJlYW0uYyAgICAgICAgICAgICAgICB8ICA1NiArKwo+ICAgc2VydmVyL3JlZC1zdHJlYW0u
aCAgICAgICAgICAgICAgICB8ICAgMiArCj4gICBzZXJ2ZXIvcmVkcy5jICAgICAgICAgICAgICAg
ICAgICAgIHwgIDE1ICsKPiAgIHNlcnZlci90ZXN0cy8uZ2l0aWdub3JlICAgICAgICAgICAgfCAg
IDEgKwo+ICAgc2VydmVyL3Rlc3RzL01ha2VmaWxlLmFtICAgICAgICAgICB8ICAgNiArCj4gICBz
ZXJ2ZXIvdGVzdHMvYXV0b2JhaG4tY2hlY2stcmVwb3J0IHwgIDE4ICsKPiAgIHNlcnZlci90ZXN0
cy9mdXp6aW5nY2xpZW50Lmpzb24gICAgfCAgMTEgKwo+ICAgc2VydmVyL3Rlc3RzL21lc29uLmJ1
aWxkICAgICAgICAgICB8ICAgMSArCj4gICBzZXJ2ZXIvdGVzdHMvdGVzdC1nbGliLWNvbXBhdC5o
ICAgIHwgICAyICstCj4gICBzZXJ2ZXIvdGVzdHMvdGVzdC13ZWJzb2NrZXQuYyAgICAgIHwgMjk5
ICsrKysrKysrKysrCj4gICBzZXJ2ZXIvd2Vic29ja2V0LmMgICAgICAgICAgICAgICAgIHwgNzk2
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICBzZXJ2ZXIvd2Vic29ja2V0LmggICAg
ICAgICAgICAgICAgIHwgIDQzICsrCj4gICAxNiBmaWxlcyBjaGFuZ2VkLCAxMjgyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiAgIGNyZWF0ZSBtb2RlIDEwMDc1NSBzZXJ2ZXIvdGVzdHMv
YXV0b2JhaG4tY2hlY2stcmVwb3J0Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgc2VydmVyL3Rlc3Rz
L2Z1enppbmdjbGllbnQuanNvbgo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IHNlcnZlci90ZXN0cy90
ZXN0LXdlYnNvY2tldC5jCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgc2VydmVyL3dlYnNvY2tldC5j
Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgc2VydmVyL3dlYnNvY2tldC5oCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
