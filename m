Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF1F826BA
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 23:19:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 257286E184;
	Mon,  5 Aug 2019 21:19:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E6F16E184
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 21:19:35 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hukOV-0008LB-5W
 for spice-devel@lists.freedesktop.org; Mon, 05 Aug 2019 16:19:51 -0500
To: spice-devel@lists.freedesktop.org
References: <20190805181956.8406-1-bshanks@codeweavers.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <cf333fe2-4449-29e5-dfd9-2ec9f5c97107@codeweavers.com>
Date: Mon, 5 Aug 2019 16:19:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805181956.8406-1-bshanks@codeweavers.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=52qxXXf9nlJkndU9fk+1n8h8u+3IQTtx4avpxjMRRic=; b=jwzJe6uDxGzmNuTcCjItp7ohHx
 R2iHsihg7T34PY2nQmJbr+tufqyyCuZ2/YUMeJtvZmqTpLQCajju3DEym9/PTDyJgbuVjr6r5Hy9p
 CdB4MFWItrUoHlMvKjM7ryJGfFL77qb9lJjaHsh9wMQheSGExuAfXoDIdF7zRj3yuSEk=;
Subject: Re: [Spice-devel] [PATCH x11spice] Fix running tests on
 Debian/Ubuntu
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

T24gOC81LzE5IDE6MTkgUE0sIEJyZW5kYW4gU2hhbmtzIHdyb3RlOgo+IENoZWNrIHRoZSBEZWJp
YW4vVWJ1bnR1IHBhdGggZm9yIHRoZSBub24td3JhcHBlciBYb3JnIGJpbmFyeQo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEJyZW5kYW4gU2hhbmtzIDxic2hhbmtzQGNvZGV3ZWF2ZXJzLmNvbT4KCkFja2Vk
LWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+Cgo+IC0tLQo+ICAgc3Jj
L3Rlc3RzL3hkdW1teS5jIHwgMiArKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvdGVzdHMveGR1bW15LmMgYi9zcmMvdGVzdHMveGR1bW15
LmMKPiBpbmRleCAwNjUxZGM3Li5jZTU3YjFjIDEwMDY0NAo+IC0tLSBhL3NyYy90ZXN0cy94ZHVt
bXkuYwo+ICsrKyBiL3NyYy90ZXN0cy94ZHVtbXkuYwo+IEBAIC0xNTcsNiArMTU3LDggQEAgc3Rh
dGljIGludCBleGVjX3hvcmcoeGR1bW15X3QgKnNlcnZlciwgZ2NvbnN0cG9pbnRlciB1c2VyX2Rh
dGEgR19HTlVDX1VOVVNFRCkKPiAgICAgICBzdHJjcHkoeG9yZ19iaW5hcnksICJYb3JnIik7Cj4g
ICAgICAgaWYgKGFjY2VzcygiL3Vzci9saWJleGVjL1hvcmciLCBYX09LKSA9PSAwKQo+ICAgICAg
ICAgICBzdHJjcHkoeG9yZ19iaW5hcnksICIvdXNyL2xpYmV4ZWMvWG9yZyIpOwo+ICsgICAgZWxz
ZSBpZiAoYWNjZXNzKCIvdXNyL2xpYi94b3JnL1hvcmciLCBYX09LKSA9PSAwKQo+ICsgICAgICAg
IHN0cmNweSh4b3JnX2JpbmFyeSwgIi91c3IvbGliL3hvcmcvWG9yZyIpOwo+ICAgCj4gICAgICAg
cmV0dXJuIGV4ZWNscCh4b3JnX2JpbmFyeSwgeG9yZ19iaW5hcnksICItYWMiLAo+ICAgICAgICAg
ICAgICAgICAgICAgIi1jb25maWciLCBzZXJ2ZXItPnhvcmdfZm5hbWUsCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
