Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27641EA3C9
	for <lists+spice-devel@lfdr.de>; Wed, 30 Oct 2019 20:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BAE6E81C;
	Wed, 30 Oct 2019 19:05:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 171296E81C
 for <spice-devel@lists.freedesktop.org>; Wed, 30 Oct 2019 19:05:04 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1iPtHC-0002mm-I1
 for spice-devel@lists.freedesktop.org; Wed, 30 Oct 2019 14:05:02 -0500
To: spice-devel@lists.freedesktop.org
References: <20190916191333.27139-1-jwhite@codeweavers.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <5bf52aa5-367a-bc99-99bd-6854aadd38c2@codeweavers.com>
Date: Wed, 30 Oct 2019 14:05:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190916191333.27139-1-jwhite@codeweavers.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WyuFjzdNc0axaFegwv1Qftmb4rbEDMbwJT5Rhfk6fh8=; b=pYsEMBDTu7OKyhLpWSyOJsKtjv
 XPyO7nYzuEpu7ThrcrbVjCYN/c9Pg6ArJ079WOdYn43d+VYXvxEM0WqUfxB4x2z13KAHzr70IVY9/
 1z8U73s4ebjaRsDhWizEgEsi+50kwH5OFwu3VjyaL1B4kW922R1QSNVQ8HYuqtYdoifo=;
Subject: Re: [Spice-devel] [PATCH x11spice 00/10] Provide a simulated set of
 outputs and crtcs
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

UGluZz8KCkhlbnJpIGhhcyByZXZpZXdlZCB0aGVzZSwgYW5kIEkgY291bGQgaGF2ZSBoaW0gc2Vu
ZCBhbiBhY2ssIGJ1dCBJIHdhcyAKc2VjcmV0bHkgaG9waW5nIHRvIGdldCBhbiBYIGV4cGVydCB0
byByZXZpZXcgcGF0Y2ggNS4KCkNoZWVycywKCkplcmVteQoKT24gOS8xNi8xOSAyOjEzIFBNLCBK
ZXJlbXkgV2hpdGUgd3JvdGU6Cj4gVGhlIHNwaWNlLXZpZGVvLWR1bW15IGRyaXZlciBoYXMgdHdv
IGZsYXdzLiAgRmlyc3QsIGJ5IG5vdCBwcm92aWRpbmcKPiBhIGNydGMsIHdlIHRha2UgdGhlIFBy
ZXNlbnQgZXh0ZW5zaW9uIGludG8gYSBjb2RlIHBhdGggd2hlcmUgaXQKPiBzaW11bGF0ZXMgYSBy
ZWZyZXNoIHJhdGUsIGFuZCB0aGUgc2ltdWxhdGVkIHJhdGUgaXMgMUh6Lgo+IAo+IEFwcGxpY2F0
aW9ucyB0aGF0IHF1ZXJ5IGFuZCB1c2UgdGhhdCByYXRlIHRoZW4gcGVyZm9ybSBiYWRseS4KPiBZ
b3UgY2FuIHNlZSB0aGF0IG1vc3QgZWFzaWx5IHdpdGggZ2x4Z2VhcnMuCj4gCj4gU2Vjb25kLCB5
b3UgY2Fubm90IGR5bmFtaWNhbGx5IHJlc2l6ZSBvdXIgZHVtbXkgZHJpdmVyLgo+IAo+IEJ5IGFk
ZGluZyBhIHNpbXVsYXRlZCBzZXQgb2Ygb3V0cHV0cyBhbmQgY3J0Y3MsIHdlIGdpdmUgdGhlIGR1
bW15Cj4gZHJpdmVyIHRoZSBhYmlsaXR5IHRvIGNvbnRyb2wgdGhlIHJlZnJlc2ggcmF0ZSBhbmQg
dG8gYWxsb3cKPiBkeW5hbWljIHJlc2l6aW5nLgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4g
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
