Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF68F9F376
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 21:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC703897C5;
	Tue, 27 Aug 2019 19:49:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B965897BB
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 19:49:55 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id 10so308917wmp.3
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:49:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cxkD7jYhnQWO22WVM0EQsME8ACUEgNJHTZ7tbSBVgUo=;
 b=PV/jnaasG1znGf84Exj4+X+kmKn8h9/1W889U8zzjLALZIGApCvd+yju5uxh1H4P8t
 sqxrs18X9NH6+sthwsku/vhtU/xhif8OAP2smythsJcO9Ged/C9i/Z8PNd0Ny74Yuoev
 09Y7+X8rzWZMcBSsW92dF7STip9TeHcFzAmnMKG5vsVV2Nh8aesDavEjpxMEzOFgQ7pM
 a8rEvclWHevTEWpGuTThP08WuaU3lzovtg1PM3TxnmJ59ROo+gB5AAET547j5zGEv8be
 64ljm68AJ48zwIeq3P/J2GBdeHtSn7Oa1pYJosq397hOiqqPSQvNAoKKofPuxI5tmBkc
 4BEA==
X-Gm-Message-State: APjAAAV95+q9uF/mGANKr4gegnRlhSkXeKbIREQp4QuoViDifIPFqhbz
 0FcyTuwzVhUZWNIbCG/m6qZzgiin9vvbmracoieWM0MxgYU=
X-Google-Smtp-Source: APXvYqxJNBrxDdcdd8rmqIZcVZ7hKnB4nybFmnmlPvoaahGg+4X45GYjRjybH//mJoulxdIicfk+y/5bRjJheioZTeM=
X-Received: by 2002:a05:600c:22c6:: with SMTP id 6mr249013wmg.5.1566935393984; 
 Tue, 27 Aug 2019 12:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190827142733.3130-1-ssheribe@redhat.com>
 <20190827142733.3130-2-ssheribe@redhat.com>
In-Reply-To: <20190827142733.3130-2-ssheribe@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Tue, 27 Aug 2019 23:49:41 +0400
Message-ID: <CAJ+F1C+-WNj7FGW_=ic0ZGS+8kFcDNqByNv7J35-6MxuRxJCVg@mail.gmail.com>
To: Snir Sheriber <ssheribe@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cxkD7jYhnQWO22WVM0EQsME8ACUEgNJHTZ7tbSBVgUo=;
 b=i9esqwe9AR1gZXAOEW/teUq5TatgzAwwQyLZw91AZN9/qW1h9SBU4qJWc5/IpIlqp9
 6BCc77EsxywYzXiTHrNLfdibM/RYtq3B2JGh7jwMy/M34y7BuPoNKLhPZiVxq0cXj+7N
 PeQ9kvzOQse1Sjk+heg/AJt7rqmic1481GHD/rAFF4jmfZn4DVQvSldLrXB3zUYcSpBt
 VpjuAcTWtbKWBZNSF7L7kF9rjPf9P5jqhJY81W1bBxyXe/8ZKA4nr49fnBXMU/N8RXUS
 kXzUB697nTxsGacDvk4ws0YvRRGKnvgTzZbxYA+mcxxldPUNVdg3gGjtVwFtEKtGy2q4
 pHmA==
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] Add copr builds integration
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkKCk9uIFR1ZSwgQXVnIDI3LCAyMDE5IGF0IDY6MjcgUE0gU25pciBTaGVyaWJlciA8c3NoZXJp
YmVAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHdpbGwgbGV0IGNvcHIgdG8gZ2VuZXJhdGUg
c3JwbSB1c2luZyB0aGUgLmNvcHIvTWFrZWZpbGUgc2NyaXB0CgpEbyB3ZSByZWFsbHkgd2FudCB0
byBtYWludGFpbiB0aGF0IGtpbmQgb2YgZGlzdHJvIHRoaW5ncyB1cHN0cmVhbT8gRG8Kd2UgbmVl
ZCBpdD8KCldoYXQgZG9lcyBpdCBicmluZyB0aGF0IGdpdGxhYiBDSSBkb2Vzbid0IGhhdmU/Cgo+
Cj4gU2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KPiAt
LS0KPiAgLmNvcHIvTWFrZWZpbGUgfCAyOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
LmNvcHIvTWFrZWZpbGUKPgo+IGRpZmYgLS1naXQgYS8uY29wci9NYWtlZmlsZSBiLy5jb3ByL01h
a2VmaWxlCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwLi5kYjI5N2ZiCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiLy5jb3ByL01ha2VmaWxlCj4gQEAgLTAsMCArMSwyOSBAQAo+
ICsjIFRoaXMgTWFrZWZpbGUgc2NyaXB0IGlzIGludm9rZWQgYnkgY29wciB0byBidWlsZCBzb3Vy
Y2UgcnBtCj4gKyMgU2VlOiBodHRwczovL2RvY3MucGFndXJlLm9yZy9jb3ByLmNvcHIvdXNlcl9k
b2N1bWVudGF0aW9uLmh0bWwjbWFrZS1zcnBtCgpXaGVuIGlzIHRoZSBidWlsZCBhY3R1YWxseSB0
cmlnZ2VyZWQ/IElzIGNvcHIgbW9uaXRvcmluZyB0aGUgZ2l0CnJlcG9zaXRvcnk/IElzIHRoZXJl
IGEgaG9vayBzb21ld2hlcmUgaW4gZ2l0bGFiIHRvIHRyaWdnZXIgdGhlIGJ1aWxkPwoKPiArCj4g
K1BST1RPQ09MX0dJVF9SRVBPID0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3NwaWNl
L3NwaWNlLXByb3RvY29sCj4gK0JVSUxEID0gbWVzb24gZ2NjIHh6IGdpdCBycG0tYnVpbGQKPiAr
Cj4gK3NycG06Cj4gKyAgICAgICBkbmYgaW5zdGFsbCAteSAkKEJVSUxEKQo+ICsKPiArICAgICAg
ICMgZ2V0IHVwc3RyZWFtIHNwaWNlIHByb3RvY29sCj4gKyAgICAgICBnaXQgY2xvbmUgJChQUk9U
T0NPTF9HSVRfUkVQTykKPiArICAgICAgIGNkIHNwaWNlLXByb3RvY29sICYmIG1lc29uIC1EcHJl
Zml4PS91c3IvIGJ1aWxkICYmIG5pbmphIC1DIGJ1aWxkIGluc3RhbGwKPiArICAgICAgIHJtIC1y
ZiBzcGljZS1wcm90b2NvbAo+ICsKPiArICAgICAgICMgZ2V0IG90aGVyIGRlcGVuZGVuY2llcyBm
b3IgcHJvamVjdCBleGNsdWRpbmcgc3BpY2UtcHJvdG9jb2wKPiArICAgICAgIGRuZiBpbnN0YWxs
IC15IGBzZWQgJy9eQnVpbGRSZXF1aXJlczovIWQ7IHMvLio6Ly87IHMvXGJzcGljZS1wcm90b2Nv
bFxiLy87IHMvPi4qLy8nICouc3BlYy5pbmAKPiArCj4gKyAgICAgICAjIGRvIG5vdCB1c2UgY29t
bWl0IGlkIGZvciB2ZXJzaW9uCj4gKyAgICAgICBnaXQgZmV0Y2ggLS10YWdzCj4gKyAgICAgICBn
aXQgZGVzY3JpYmUgLS1hYmJyZXY9MCB8IHNlZCAncy92Ly8nID4gLnRhcmJhbGwtdmVyc2lvbgo+
ICsgICAgICAgIyBjcmVhdGUgc291cmNlIHJwbQo+ICsgICAgICAgbWVzb24gLS1idWlsZHR5cGU9
cmVsZWFzZSBidWlsZAo+ICsgICAgICAgIyBNZXNvbiBkb2VzIG5vdCB1cGRhdGUgc3VibW9kdWxl
cyByZWN1cnNpdmVseQo+ICsgICAgICAgZ2l0IHN1Ym1vZHVsZSB1cGRhdGUgLS1pbml0IC0tcmVj
dXJzaXZlCj4gKyAgICAgICAjIHRoaXMgZml4IGFuIGlzc3VlIHdpdGggTWVzb24gZGlzdAo+ICsg
ICAgICAgaWYgISB0ZXN0IC1yIC4uL3NwaWNlLWNvbW1vbi5naXQ7IHRoZW4gRElSPWBiYXNlbmFt
ZSAiJCRQV0QiYDsgbG4gLXMgIiQkRElSLy5naXQvbW9kdWxlcy9zcGljZS1jb21tb24iIC4uL3Nw
aWNlLWNvbW1vbi5naXQ7IGZpCj4gKyAgICAgICBybSAtcmYgbWVzb24tZGlzdAo+ICsgICAgICAg
bmluamEgLUMgYnVpbGQgZGlzdAo+ICsgICAgICAgcnBtYnVpbGQgLWJzIC4vYnVpbGQvKnNwZWMg
LS1kZWZpbmUgIl9zb3VyY2VkaXIgJCRQV0QvYnVpbGQvbWVzb24tZGlzdC8iIC0tZGVmaW5lICJf
c3JjcnBtZGlyICQob3V0ZGlyKSIKClRvbyBtdWNoIGhhY2tzIGZvciBteSB0YXN0ZSBoZXJlLgoK
PiAtLQo+IDIuMjEuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVsCgoKCi0tIApNYXJjLUFuZHLDqSBMdXJlYXUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
