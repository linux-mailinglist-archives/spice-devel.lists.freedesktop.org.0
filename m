Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7350D9FC48
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 09:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A40D889139;
	Wed, 28 Aug 2019 07:56:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C21C89139
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 07:56:01 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4DF85C028320
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 07:56:00 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id b7so904647wrt.19
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 00:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=VNAJkfaqG3VerJFIFQCGajIEkdfI4/SKVNm5f2QIDoA=;
 b=RXZ30XUCp3K/eYd2tJuPziUzf0NXQQRSXgRdqlJa5QJrE+bD/sAqXwm9iXfH35jIj1
 TTu03gFIO+FL1W5yr3i42Yq5l9wK2oZVvZIkezhB2uaqGS/BJo81VZHwj4RXYGd9ZlN7
 NtLVrAMEeYhsOEsQo14taZUHFO5k5knR4anz2ePCDGYRBRZA7hZLMnczewade5P2Xv5n
 +n+RPLqk6l4r5vbOluqLBiJpLrjVc66QOtoH6QZW4vb4azCCjHBDhsjwCPURgUd1NfzG
 2jE7i29ey0IhWvwLWbB5AAtB+43/glerUhwdRAkuGkF67TTX/dw3FmZ2nM9ga7NTE+or
 LCLQ==
X-Gm-Message-State: APjAAAUOGJzFDyp3HUp7lX4jiR8MdYj8YG53/VYR19ymtaBdeZlO7ZHw
 6GYKL21EURvdSjDf+To79k3o+Vj0jAhTStlYO/th+tBbP+rRFFhvn4ZTZYSBCP/j+CmMpcf3IVm
 r2vIQfeB0c1iok5Sl5dsQWMoYdcEkmN4=
X-Received: by 2002:a7b:c928:: with SMTP id h8mr3161637wml.93.1566978958517;
 Wed, 28 Aug 2019 00:55:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxra5mWvxA2W2lRf9wSojG5Va1NIC+ul81mmKdQKJfBdFEBhpPs+66cWB4eyRZ9uHwyUVSZoQ==
X-Received: by 2002:a7b:c928:: with SMTP id h8mr3161618wml.93.1566978958253;
 Wed, 28 Aug 2019 00:55:58 -0700 (PDT)
Received: from localhost.localdomain (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id c201sm2455559wmd.33.2019.08.28.00.55.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 00:55:57 -0700 (PDT)
To: =?UTF-8?Q?Marc-Andr=c3=a9_Lureau?= <marcandre.lureau@gmail.com>
References: <20190827142733.3130-1-ssheribe@redhat.com>
 <20190827142733.3130-2-ssheribe@redhat.com>
 <CAJ+F1C+-WNj7FGW_=ic0ZGS+8kFcDNqByNv7J35-6MxuRxJCVg@mail.gmail.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <4618380a-c993-acb9-e20b-dbaa50bf3a7e@redhat.com>
Date: Wed, 28 Aug 2019 10:55:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ+F1C+-WNj7FGW_=ic0ZGS+8kFcDNqByNv7J35-6MxuRxJCVg@mail.gmail.com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpPbiA4LzI3LzE5IDEwOjQ5IFBNLCBNYXJjLUFuZHLDqSBMdXJlYXUgd3JvdGU6Cj4gSGkK
Pgo+IE9uIFR1ZSwgQXVnIDI3LCAyMDE5IGF0IDY6MjcgUE0gU25pciBTaGVyaWJlciA8c3NoZXJp
YmVAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IFRoaXMgd2lsbCBsZXQgY29wciB0byBnZW5lcmF0ZSBz
cnBtIHVzaW5nIHRoZSAuY29wci9NYWtlZmlsZSBzY3JpcHQKPiBEbyB3ZSByZWFsbHkgd2FudCB0
byBtYWludGFpbiB0aGF0IGtpbmQgb2YgZGlzdHJvIHRoaW5ncyB1cHN0cmVhbT8gRG8KPiB3ZSBu
ZWVkIGl0Pwo+Cj4gV2hhdCBkb2VzIGl0IGJyaW5nIHRoYXQgZ2l0bGFiIENJIGRvZXNuJ3QgaGF2
ZT8KCgpUaGlzIHNycG0gaXMgZ2VuZXJhdGVkIHdpdGggZXZlcnkgY29tbWl0IGFuZCB0aGVuIGEg
YnVpbGQgaXMgdHJpZ2dlcmVkCmluIGNvcHIgc28gdGhhdCB3ZSdsbCBoYXZlIGEgcmVwb3NpdG9y
eSBvZiBsYXRlc3QgdXBzdHJlYW0gcGFja2FnZXMgd2hpY2gKY2FuIGJlIGVhc2lseSBlbmFibGVk
IGJ5IHNpbXBsZSAiZG5mIGNvcHIgZW5hYmxlIFgiIGNvbW1hbmQuClRoaXMgc2hvdWxkIGV2ZW50
dWFsbHkgcmVwbGFjZSB0aGUgbmlnaHRseSBidWlsZHMgcmVwbyB3aGljaCBpcyBjdXJyZW50bHkK
Y3JlYXRlZCBieSBhbiB1bm1haW50YWluZWQgdm0gdGhhdCBydW5zIGNyb24gam9iIHRoYXQgY3Jl
YXRlcyB0aGUgc3JwbXMKYW5kIHB1c2ggdG8gY29wciAodGhlcmUgaXMgYWxzbyBhIGdpdCByZXBv
IGZvciB0aGUgc3BlYyBmaWxlIHRlbXBsYXRlcyB1c2VkCmJ5IGl0KS4KCkhlbmNlIHRoZSBpbnRl
bnRpb24gd2FzIG5vdCB0byB1c2UgaXQgYXMgY2ksIGp1c3QgZm9yIGNyZWF0aW5nIHRoaXMgcmVw
bywgaWYKaSBjb3VsZCBoYXZlIGVhc2lseSBwdXNoIHRoZSBzcnBtIGNyZWF0ZWQgYnkgZ2l0bGFi
IGNpIHRvIGNvcHIgaSB3b3VsZCBoYXZlCmRvbmUgaXQuIChjYW4gYmUgZG9uZSBidXQgd291bGQg
cmVxdWlyZSB0byBtYWludGFpbiBvdXIgb3duIHJ1bm5lcnMpCgo+Cj4+IFNpZ25lZC1vZmYtYnk6
IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+Cj4+IC0tLQo+PiAgIC5jb3ByL01h
a2VmaWxlIHwgMjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hh
bmdlZCwgMjkgaW5zZXJ0aW9ucygrKQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCAuY29wci9NYWtl
ZmlsZQo+Pgo+PiBkaWZmIC0tZ2l0IGEvLmNvcHIvTWFrZWZpbGUgYi8uY29wci9NYWtlZmlsZQo+
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwLi5kYjI5N2ZiCj4+IC0tLSAv
ZGV2L251bGwKPj4gKysrIGIvLmNvcHIvTWFrZWZpbGUKPj4gQEAgLTAsMCArMSwyOSBAQAo+PiAr
IyBUaGlzIE1ha2VmaWxlIHNjcmlwdCBpcyBpbnZva2VkIGJ5IGNvcHIgdG8gYnVpbGQgc291cmNl
IHJwbQo+PiArIyBTZWU6IGh0dHBzOi8vZG9jcy5wYWd1cmUub3JnL2NvcHIuY29wci91c2VyX2Rv
Y3VtZW50YXRpb24uaHRtbCNtYWtlLXNycG0KPiBXaGVuIGlzIHRoZSBidWlsZCBhY3R1YWxseSB0
cmlnZ2VyZWQ/IElzIGNvcHIgbW9uaXRvcmluZyB0aGUgZ2l0Cj4gcmVwb3NpdG9yeT8gSXMgdGhl
cmUgYSBob29rIHNvbWV3aGVyZSBpbiBnaXRsYWIgdG8gdHJpZ2dlciB0aGUgYnVpbGQ/CgoKWWVz
LCB0aGVyZSBpcyBhIGdpdGxhYiBob29rIHRoYXQgc2hvdWxkIGJlIGVuYWJsZWQgKGp1c3QgYnkg
YWRkaW5nCnRoZSBjb3ByIHdlYmhvb2sgdXJsIGFzIGdpdGxhYiBob29rKQoKCj4KPj4gKwo+PiAr
UFJPVE9DT0xfR0lUX1JFUE8gPSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uv
c3BpY2UtcHJvdG9jb2wKPj4gK0JVSUxEID0gbWVzb24gZ2NjIHh6IGdpdCBycG0tYnVpbGQKPj4g
Kwo+PiArc3JwbToKPj4gKyAgICAgICBkbmYgaW5zdGFsbCAteSAkKEJVSUxEKQo+PiArCj4+ICsg
ICAgICAgIyBnZXQgdXBzdHJlYW0gc3BpY2UgcHJvdG9jb2wKPj4gKyAgICAgICBnaXQgY2xvbmUg
JChQUk9UT0NPTF9HSVRfUkVQTykKPj4gKyAgICAgICBjZCBzcGljZS1wcm90b2NvbCAmJiBtZXNv
biAtRHByZWZpeD0vdXNyLyBidWlsZCAmJiBuaW5qYSAtQyBidWlsZCBpbnN0YWxsCj4+ICsgICAg
ICAgcm0gLXJmIHNwaWNlLXByb3RvY29sCj4+ICsKPj4gKyAgICAgICAjIGdldCBvdGhlciBkZXBl
bmRlbmNpZXMgZm9yIHByb2plY3QgZXhjbHVkaW5nIHNwaWNlLXByb3RvY29sCj4+ICsgICAgICAg
ZG5mIGluc3RhbGwgLXkgYHNlZCAnL15CdWlsZFJlcXVpcmVzOi8hZDsgcy8uKjovLzsgcy9cYnNw
aWNlLXByb3RvY29sXGIvLzsgcy8+LiovLycgKi5zcGVjLmluYAo+PiArCj4+ICsgICAgICAgIyBk
byBub3QgdXNlIGNvbW1pdCBpZCBmb3IgdmVyc2lvbgo+PiArICAgICAgIGdpdCBmZXRjaCAtLXRh
Z3MKPj4gKyAgICAgICBnaXQgZGVzY3JpYmUgLS1hYmJyZXY9MCB8IHNlZCAncy92Ly8nID4gLnRh
cmJhbGwtdmVyc2lvbgo+PiArICAgICAgICMgY3JlYXRlIHNvdXJjZSBycG0KPj4gKyAgICAgICBt
ZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIGJ1aWxkCj4+ICsgICAgICAgIyBNZXNvbiBkb2VzIG5v
dCB1cGRhdGUgc3VibW9kdWxlcyByZWN1cnNpdmVseQo+PiArICAgICAgIGdpdCBzdWJtb2R1bGUg
dXBkYXRlIC0taW5pdCAtLXJlY3Vyc2l2ZQo+PiArICAgICAgICMgdGhpcyBmaXggYW4gaXNzdWUg
d2l0aCBNZXNvbiBkaXN0Cj4+ICsgICAgICAgaWYgISB0ZXN0IC1yIC4uL3NwaWNlLWNvbW1vbi5n
aXQ7IHRoZW4gRElSPWBiYXNlbmFtZSAiJCRQV0QiYDsgbG4gLXMgIiQkRElSLy5naXQvbW9kdWxl
cy9zcGljZS1jb21tb24iIC4uL3NwaWNlLWNvbW1vbi5naXQ7IGZpCj4+ICsgICAgICAgcm0gLXJm
IG1lc29uLWRpc3QKPj4gKyAgICAgICBuaW5qYSAtQyBidWlsZCBkaXN0Cj4+ICsgICAgICAgcnBt
YnVpbGQgLWJzIC4vYnVpbGQvKnNwZWMgLS1kZWZpbmUgIl9zb3VyY2VkaXIgJCRQV0QvYnVpbGQv
bWVzb24tZGlzdC8iIC0tZGVmaW5lICJfc3JjcnBtZGlyICQob3V0ZGlyKSIKPiBUb28gbXVjaCBo
YWNrcyBmb3IgbXkgdGFzdGUgaGVyZS4KCgpJIGFncmVlIGJ1dCBpdCdzIHN0aWxsIGxlc3MgaGFj
a3MgdGhhbiB3aGF0IHdlIGhhdmUgbm93IGluIG9yZGVyIHRvIApjcmVhdGUgdGhlCm5pZ2h0bHkg
cmVwbywgaG9wZWZ1bGx5IHRoaXMgd2lsbCBiZWNvbWUgc2ltcGxlciBvbmNlIHNvbWUgY29wciAm
IG1lc29uCmlzc3VlcyB3aWxsIGJlIHNvbHZlZCAob3Igd2UnbGwgYmUgYWJsZSB0byB1c2UgcnBr
ZyB3aGVuIGl0IHdpbGwgc3VwcG9ydApzdWJtb2R1bGVzKQoKU25pci4KCgo+Cj4+IC0tCj4+IDIu
MjEuMAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWwKPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
