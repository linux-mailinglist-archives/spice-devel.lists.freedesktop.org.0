Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C374F27E61
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:42:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F4589811;
	Thu, 23 May 2019 13:42:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730CB89811
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:42:45 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id m3so6349996wrv.2
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Yw/kUIZq7NMPNOrX5KzQf6VezWxjstFVnacZ97gFAdU=;
 b=gXWJ5BQqd4ewKQHIKlDsusTRedERWqDHB76+5kQhxtVhoRUCqHeApZYe9lAH8TvY6/
 uRCwIEsVRWbpCbFzLhL4HETT98gYLCMbrn7z3UH/1bwQoRxsnlObRZD0poX70hqC0muA
 TcHCURVOJTb45/eeV3LRm0Tj3vtJO2cpNNzfP2udgReLwcwsg9VwM0Kbjd6YJg9cAVYu
 odQ9Kt62mejjmBuTTVmQZ7abKM3XSYaZhYpHV+0fimjL7Hu393GNAJtuPmIQHwWod+z0
 3GyRAMYfY1fSnd3lNwUB+i9JnIg58YPdcJZGFivfW/0ZomevYUxJ40P9LsEIbaGdE2HT
 2jow==
X-Gm-Message-State: APjAAAUMXEAE6/TnRd91yuqr+ajA7aOnWr1c0eZgFOz2YNP0EjxtK3pi
 J0xdq9lEe3rmu3P6uwLYBnrTIZziBZZRV217MiwA1Yqd
X-Google-Smtp-Source: APXvYqxlrlPNTE41uvN2Y9Uk5yEf6hg3WhsWNGCyxuMdPE/JBrQo/98K0mGst4aK5QYt/Gu3K9jaSW0r19MjML/ZnTo=
X-Received: by 2002:adf:9d8a:: with SMTP id p10mr32041840wre.31.1558618964141; 
 Thu, 23 May 2019 06:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-13-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-13-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:42:33 +0200
Message-ID: <CAJ+F1CLqcvv0sc2MzOns9Q5ifRfXChz8ZJAqaQgZqpVgHTLFhg@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Yw/kUIZq7NMPNOrX5KzQf6VezWxjstFVnacZ97gFAdU=;
 b=JvkqcAlAs9kwjYJv7gTNQ4RdrD9/gIkLosfVT79+80+wDKVTwYyebPTth0eXf8+2nq
 soqe3WJeLvcbxnphOOXtxiLZXuvjSBfKGZdAcDEuMgboIGrpZ2trGws47J/Mopxx9cni
 duqk0ObIoPZn3JIpnaiIp+oX0qJR+zeWLPJw5XObVSI/dEZz0EWELxdhZpDFrSDDGSdo
 SuXIiDMSurHlZkfbpJWc8s5sgqpdwtxB7VnOFLHZR3glG6Q/CHzY9i9iT1wAUOBDP/xI
 KgOSC9cfRWd0Dubum8wF5mdx+tTqKCT1MxqvBzKuS5dhJ8hzm2Bj4ijL34MDXJVQgtKl
 HO0Q==
Subject: Re: [Spice-devel] [PATCH phodav 12/13] rename README to README.md
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

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTA6MzcgQU0gSmFrdWIgSmFua8WvIDxqamFua3VAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBUaGUgZmlsZW5hbWUgbmVlZHMgdGhlIHByb3BlciBleHRlbnNp
b24gZm9yIEdpdExhYiB0byBoYW5kbGUKPiB0aGUgZmlsZSBhcyBhIE1hcmtkb3duIGZpbGUuCj4K
PiBGaXggc29tZSBzdHlsZSBpc3N1ZXMgc28gdGhhdCB0aGUgZmlsZSByZW5kZXJzIGNvcnJlY3Rs
eS4KPgo+IFNpZ25lZC1vZmYtYnk6IEpha3ViIEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+Cgp3
aHkgbm90LCBhY2sKCj4gLS0tCj4gIFJFQURNRSA9PiBSRUFETUUubWQgfCAyMSArKysrKysrKysr
LS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDExIGRlbGV0
aW9ucygtKQo+ICByZW5hbWUgUkVBRE1FID0+IFJFQURNRS5tZCAoNTYlKQo+Cj4gZGlmZiAtLWdp
dCBhL1JFQURNRSBiL1JFQURNRS5tZAo+IHNpbWlsYXJpdHkgaW5kZXggNTYlCj4gcmVuYW1lIGZy
b20gUkVBRE1FCj4gcmVuYW1lIHRvIFJFQURNRS5tZAo+IGluZGV4IGZhODJhY2QuLjI5Nzc1NmYg
MTAwNjQ0Cj4gLS0tIGEvUkVBRE1FCj4gKysrIGIvUkVBRE1FLm1kCj4gQEAgLTEsMzEgKzEsMzAg
QEAKPiAtcGjhu59kYXYKPiAtPT09PT09Cj4gKyMgcGjhu59kYXYKPgo+IC09IEFib3V0Cj4gKyMj
IEFib3V0Cj4KPiAgcGjhu59kYXYgaXMgYSBXZWJEYXYgc2VydmVyIGltcGxlbWVudGF0aW9uIHVz
aW5nIGxpYnNvdXAgKFJGQyA0OTE4KS4KPgo+IC0gICAgUmVsZWFzZXM6IGh0dHA6Ly9mdHAuZ25v
bWUub3JnL3B1Yi9HTk9NRS9zb3VyY2VzL3Bob2Rhdi8KPiArUmVsZWFzZXM6IGh0dHA6Ly9mdHAu
Z25vbWUub3JnL3B1Yi9HTk9NRS9zb3VyY2VzL3Bob2Rhdi8KPgo+IC09IFRvb2xzCj4gKyMjIFRv
b2xzCj4KPiAtICAgIGNoZXpkYXYsIGFsbG93cyB0byBzaGFyZSBhIHBhcnRpY3VhbCBkaXJlY3Rv
cnkgKHdpdGggb3B0aW9uYWwKPiAtICAgIGRpZ2VzdCBhdXRoZW50aWNhdGlvbikKPiArKiBjaGV6
ZGF2LCBhbGxvd3MgdG8gc2hhcmUgYSBwYXJ0aWN1YWwgZGlyZWN0b3J5ICh3aXRoIG9wdGlvbmFs
Cj4gKyAgZGlnZXN0IGF1dGhlbnRpY2F0aW9uKQo+Cj4gLT0gTm90ZXMKPiArIyMgTm90ZXMKPgo+
ICBwaOG7n2RhdiB3YXMgaW5pdGlhbGx5IGRldmVsb3BwZWQgYXMgYSBmaWxlc2hhcmluZyBtZWNo
YW5pc20gZm9yIFNwaWNlLAo+ICBidXQgaXQgaXMgZ2VuZXJpYyBlbm91Z2ggdG8gYmUgcmV1c2Vk
IGluIG90aGVyIHByb2plY3RzLCBpbiBwYXJ0aWN1bGFyCj4gIGluIHRoZSBHTk9NRSBkZXNrdG9w
LiBGdXJ0aGVyIGludGVncmF0aW9uIHdvcmsgd291bGQgYmUgYSB3ZWxjb21lCj4gIGNvbnRyaWJ1
dGlvbiEKPgo+IC09IENvbnRyaWJ1dGluZwo+ICsjIyBDb250cmlidXRpbmcKPgo+ICAgICAgZ2l0
IGNsb25lIGdpdDovL2dpdC5nbm9tZS5vcmcvcGhvZGF2Cj4KPiAtICAgIGh0dHA6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+ICtodHRwOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKPgo+ICBQbGVh
c2UgcmVwb3J0IGJ1ZyB0aGVyZToKPiAgaHR0cHM6Ly9idWd6aWxsYS5nbm9tZS5vcmcvZW50ZXJf
YnVnLmNnaT9wcm9kdWN0PXBob2Rhdgo+Cj4gLUZvcmtpbmcgYW5kIHNlbmRpbmcgZ2l0aHViIHB1
bGwgcmVxdWVzdHMgaXMgYWxzbyB3ZWxjb21lLgo+IFwgTm8gbmV3bGluZSBhdCBlbmQgb2YgZmls
ZQo+ICtGb3JraW5nIGFuZCBzZW5kaW5nIHB1bGwgcmVxdWVzdHMgaXMgYWxzbyB3ZWxjb21lLgo+
IFwgTm8gbmV3bGluZSBhdCBlbmQgb2YgZmlsZQo+IC0tCj4gMi4yMS4wCj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKCgoKLS0gCk1h
cmMtQW5kcsOpIEx1cmVhdQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
