Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D8DFF1F
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 19:51:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2242D891DD;
	Tue, 30 Apr 2019 17:51:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007B5891DD
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 17:51:46 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hLWvm-0005Wr-08; Tue, 30 Apr 2019 12:52:38 -0500
To: Christophe Fergeau <cfergeau@redhat.com>
References: <fa91a050-1cc4-9328-ae1c-a3f93f972f7a@codeweavers.com>
 <20170310170101.koz5a34ibtzlusrs@edamame.cdg.redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <421a38b7-755a-4612-3c47-478b84655259@codeweavers.com>
Date: Tue, 30 Apr 2019 12:51:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20170310170101.koz5a34ibtzlusrs@edamame.cdg.redhat.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zX4hBenYvNFiENtcwYJpQ8TcKVmHMhEfrDY/KhQ6MyM=; b=Xwp98xosRUc9UlZe6HGWa5wSAX
 4UdKVE2iTjj0RPVdb38ZRRRMcdBuMl72E43B0AgxvYjWqO86CfLm0yzNeu4fH4AKLTS/XZGCPFllu
 eeVYsbaQJwoq/QuVQac1TFe9b45SzfyGk6/uzxgeKNwBX32UaEEM7a9AWE7BGH1EJQCY=;
Subject: Re: [Spice-devel] gtk client side timeouts
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpPbiAzLzEwLzE3IDExOjAxIEFNLCBDaHJpc3RvcGhlIEZlcmdlYXUgd3JvdGU6Cj4gT24g
RnJpLCBNYXIgMTAsIDIwMTcgYXQgMTA6NDk6NTRBTSAtMDYwMCwgSmVyZW15IFdoaXRlIHdyb3Rl
Ogo+PiBIZXkgYWxsLAo+Pgo+PiBXZSd2ZSBnb3QgYW4gaXNzdWUgd2l0aCBhIHJlbW90ZSB2aWV3
ZXIga2lvc2suICBUaGF0IGlzLCBpbiBvdXIgbm9ybWFsCj4+IG1vZGUgb2Ygb3BlcmF0aW9uLCBp
ZiBzb21ldGhpbmcgZ29lcyB3cm9uZyB3aXRoIGEgY2xpZW50IGNvbm5lY3Rpb24KPj4gKGUuZy4g
dGhlIHNlc3Npb25zIGlzIGtpbGxlZCwgc2VydmVyIHJlc3RhcnRlZCBub3JtYWxseSksIHRoZSBr
aW9zayB3aWxsCj4+IGV4aXQgb24gZGlzY29ubmVjdCwgYW5kIHdlIGdldCBhIGNoYW5jZSB0byBy
ZXRyeSB0aGUgY29ubmVjdGlvbiwgb3IKPj4gcHJlc2VudCB0aGUgdXNlciB3aXRoIGEgJ3NlcnZl
ciBkb3duJyBzdHlsZSBtZXNzYWdlLgo+Pgo+PiBCdXQgaW4gdGhlIGNhc2Ugb2YgYSBzZXJpb3Vz
IG5ldHdvcmsgcHJvYmxlbSBvciBhIHNlcnZlciBoYXJkIHBvd2VyCj4+IGN5Y2xlIChpLmUuIG5v
IFRDUCBGSU4gcGFja2V0cyBjYW4gZmxvdyksIG91ciBlbmQgdXNlciBiZWhhdmlvciBpcyBub3QK
Pj4gaWRlYWwgLSB0aGUga2lvc2sgYXBwZWFycyB0byBoYW5nIHNvbGlkLCByZXF1aXJpbmcgYSBw
b3dlciBjeWNsZS4KPj4KPj4gVGhhdCdzIGJlY2F1c2Ugd2UndmUgZ290IHRoZSBzdG9jayBrZWVw
YWxpdmUgdGltZW91dHMsIG9yIGFib3V0IDIgaG91cnMKPj4gYW5kIDExIG1pbnV0ZXMsIGJlZm9y
ZSB0aGUgY2xpZW50IHNlZXMgdGhlIGRpc2Nvbm5lY3QuCj4+Cj4+IE5vdyB0aGlzIGlzIGEgcmVs
YXRpdmVseSByYXJlIG9jY3VycmVuY2UsIGFuZCBhcmd1YWJseSBhIG1pbm9yIG51aXNhbmNlLAo+
PiBidXQgSSd2ZSBiZWVuIGFza2VkIHRvIHNlZSB3aGF0IGl0IHdvdWxkIHRha2UgdG8gaW1wcm92
ZSB0aGUgc2l0dWF0aW9uLgo+Pgo+PiBJIGxvb2tlZCBmb3IgcGFzdCBkaXNjdXNzaW9ucyBvbiBz
cGljZS1kZXZlbDsgSSBvbmx5IHJlYWRpbHkgZm91bmQKPj4gZGlzY3Vzc2lvbiBvZiB0aGUga2Vl
cGFsaXZlIHBhcmFtZXRlcnMgb24gdGhlIHNlcnZlciBzaWRlLCBhbmQgaXQgbG9va3MKPj4gbGlr
ZSB3ZSB0YWtlIHRoZSBpZGxlIHRpbWVyIGRvd24gdG8gMTAgbWludXRlcyBub3csIGZyb20gMiBo
b3Vycy4gIEkKPj4gZGlkbid0IGZpbmQgZGlzY3Vzc2lvbiBvZiBzb21ldGhpbmcgc2ltaWxhciBj
bGllbnQgc2lkZS4KPj4KPj4gSGF2ZSB3ZSBjb25zaWRlcmVkIHR1bmluZyB0aGVtIG9uIHRoZSBz
cGljZS1ndGsgY2xpZW50IHNpZGU/Cj4+Cj4+IFRoZSBhdHRhY2hlZCBwYXRjaCBhcHBsaWVzIGEg
cm91Z2hseSA3NSBzZWNvbmQgdGltZW91dCBmb3IgbWU7IGlzIHRoaXMKPj4gc29tZXRoaW5nIHRo
YXQgd291bGQgYmUgdmlhYmxlIHRvIGFkZCB0byB0aGUgZ3RrIGNsaWVudCwgZXZlbiBpZiBvbmx5
IGFzCj4+IGFuIG9wdGlvbj8KPiAKPiBBaCwgSSd2ZSBjb2luY2lkZW50YWxseSBiZWVuIGxvb2tp
bmcgYXQgdGhpcyB0aGlzIHdlZWsgdG9vLCBub3Qgd2l0aCB0aGUKPiBzYW1lIGdvYWwgaW4gbWlu
ZCB0aG91Z2gsIG15IHByb2JsZW0gaXMgU1BJQ0UgY29ubmVjdGlvbiBzb21ldGltZXMKPiBnZXR0
aW5nIGRyb3BwZWQgaWYgaWRsZSBmb3IgdG9vIGxvbmcuIEJ1dCB0aGUgY3VycmVudCBhbnN3ZXIg
aXMgYWxzbwo+IHR3ZWFraW5nIFRDUCBrZWVwYWxpdmVzLgo+IERlZmluaXRlbHkgbm8gb2JqZWN0
aW9uIGhhdmluZyBzb21lIGZvcm0gb2Yga2VlcGFsaXZlIGNsaWVudCBzaWRlcywKPiB0aG91Z2gg
eW91ciBwcm9wb3NlZCBjaGFuZ2UgaXMgbm90IGdvaW5nIHRvIHdvcmsgZm9yIHRoZSBXaW5kb3dz
IGNsaWVudC4KPiAKPiBJJ3ZlIG1hZGUgc29tZSBnb29kIHByb2dyZXNzIG9uIHBhdGNoZXMgdG8g
YWRkIGJvdGggV2luZG93cy9saW51eAo+IHN1cHBvcnQgdG8gZ2xpYiwgYnV0IG5lZWQgdG8gZmlu
aXNoIHRoZW0gdXAgOykKClBpbmc/ICBUaGlzIHByb2JsZW0gcGVyc2lzdHMsIGFuZCB0aGUgcGF0
Y2ggSSBzZW50IHRoZW46CiAKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMv
c3BpY2UtZGV2ZWwvYXR0YWNobWVudHMvMjAxNzAzMTAvNjkzOGM2ZGMvYXR0YWNobWVudC5kaWZm
CgpoYXMgYmVlbiB3b3JraW5nIGZvciB1cyBmb3IgYSBudW1iZXIgb2YgeWVhcnMgd2l0aG91dCBh
bnkgdW5leHBlY3RlZCAKY29uc2VxdWVuY2VzLgoKQ291bGQgSSBzdWJtaXQgdGhpcyBwYXRjaCBh
bmQgd2UgcmVtb3ZlIGl0IHdoZW4gdGhlcmUgaXMgYSBiZXR0ZXIgCnNvbHV0aW9uIHRoYXQgYWxz
byBzdXBwb3J0cyBXaW5kb3dzPwoKQ2hlZXJzLAoKSmVyZW15Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
