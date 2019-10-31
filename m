Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6002EB452
	for <lists+spice-devel@lfdr.de>; Thu, 31 Oct 2019 16:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 630B06EEE7;
	Thu, 31 Oct 2019 15:57:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3C96EEE7
 for <spice-devel@lists.freedesktop.org>; Thu, 31 Oct 2019 15:57:01 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1iQCol-0008E6-1o; Thu, 31 Oct 2019 10:56:59 -0500
To: spice-devel@lists.freedesktop.org, Derek Lesho <dlesho@codeweavers.com>
References: <20191031154627.ase2nwgygawmzxdd@wingsuit>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <415c5634-a6a3-50d3-e6f1-480ebebf31e7@codeweavers.com>
Date: Thu, 31 Oct 2019 10:56:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191031154627.ase2nwgygawmzxdd@wingsuit>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SSPAnoQwO0N/SQ1D4MZJA85p17lH2ZGJepAvFMSQGfo=; b=aY1NKtFU3tgSyAmhXpxBHZWGMJ
 0D+tG4JmifJl4G/FrETUm9Wz2vK8al85Qk0RrDdJPkeqsGA6fuzOCtlUeBDpTXMt0ZqAvPyz8QtnO
 3HI2YzvTlMsxvMs5n2NxnDPT6m8HN1M1SWzEBXUEziWL8Aca/8EYeC1IT/kpqNSpJ5uA=;
Subject: Re: [Spice-devel] Using GitLab
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

SGV5IFZpY3RvciwKCk9uIDEwLzMxLzE5IDEwOjQ2IEFNLCBWaWN0b3IgVG9zbyB3cm90ZToKPiBI
aSBsaXN0LAo+IAo+IFlvdSBtaWdodCBub3RlIHRoYXQgdGhlIEdpdGxhYiBhY3Rpdml0eSB3aWxs
IGluY3JlYXNlIGEgYml0IGZyb20KPiBub3cgb24sIGhvcGVmdWxseS4gSXQgd2FzIGFncmVlZCB3
aXRoaW4gc29tZSBTUElDRSBjb2xsYWJvcmF0b3JzCj4gdG8gZ2l2ZSBhIHNlcmlvdXMgdHJ5IG9u
IHVzaW5nIHRoaXMgaW5mcmFzdHJ1Y3R1cmUgdGhhdCBpcwo+IGF2YWlsYWJsZSB0byB1cy4KPiAK
PiBPbmUgcG90ZW50aWFsIGdyZWF0IGNoYW5nZSBhbmQgY2hhbGxlbmdlIGlzIHRoZSB1c2FnZSBv
ZiBtZXJnZQo+IHJlcXVlc3RzIGluIG9wcG9zZSB0byBwYXRjaCBzZXJpZXMgb3ZlciBtYWlsaW5n
IGxpc3QuIEkgaG9wZSB0aGUKPiBiZW5lZml0cyBvdXR3ZWlnaCB0aGUgZG93bnNpZGVzIGluIHRo
ZSBsb25nIHJ1bi4KCkRlcmVrIGhhcyBiZWVuIHdvcmtpbmcgb24gYSB1dGlsaXR5IHRvIGludGVn
cmF0ZSBHaXRMYWIgYW5kIGEgbWFpbGluZyAKbGlzdCwgZm9yIGV4cGVyaW1lbnRhdGlvbiBieSBX
aW5lLgoKSGUncyBqdXN0IGdvdHRlbiB0byB0aGUgcG9pbnQgb2YgYmVpbmcgcmVhZHkgdG8gdHJ5
IGEgcHJvb2Ygb2YgY29uY2VwdC4gCldvdWxkIHlvdSBndXlzIGJlIGludGVyZXN0ZWQgaW4gdGhp
cz8KCkNoZWVycywKCkplcmVteQoKPiAKPiBJIGludml0ZSB5b3UgdG8gc3Vic2NyaWJlIHRvIG5v
dGlmaWNhdGlvbnMgb2YgdGhlIGNvbXBvbmVudHMgeW91Cj4gbWlnaHQgYmUgaW50ZXJlc3RlZCwg
dG8gZGlzY3VzcyBhbmQgcmV2aWV3IGlzc3VlcyBhbmQgbWVyZ2UKPiByZXF1ZXN0cyBhbmQgaW1w
cm92ZSBkaWZmZXJlbnQgYXJlYXMgY29kZSBpbnRlZ3JhdGlvbiwgdGVzdGluZwo+IGFuZCByZWxl
YXNlLgo+IAo+ICAgICAgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3NwaWNlCj4gCj4g
Q2hlZXJzLAo+IFZpY3Rvcgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
