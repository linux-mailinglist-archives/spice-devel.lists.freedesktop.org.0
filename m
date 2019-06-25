Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A5D52651
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 10:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68FFC89DB0;
	Tue, 25 Jun 2019 08:18:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F01B89DA5
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 08:18:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E4C69C18B2E2;
 Tue, 25 Jun 2019 08:18:52 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 215D85C231;
 Tue, 25 Jun 2019 08:18:51 +0000 (UTC)
To: Francois Gouget <fgouget@codeweavers.com>
References: <E1hbwUR-0004mE-Po@amboise>
 <568413630.22912285.1560599988559.JavaMail.zimbra@redhat.com>
 <169acd6d-7975-ed5b-8a21-92e65327eeac@redhat.com>
 <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <00e06672-7d6e-81af-f17a-5db96d2ca296@redhat.com>
Date: Tue, 25 Jun 2019 11:18:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 25 Jun 2019 08:18:52 +0000 (UTC)
Subject: Re: [Spice-devel] [spice v3] utils: Remove the LL suffix from
 NSEC_PER_SEC
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
Reply-To: uril@redhat.com
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNi8yNS8xOSA3OjM4IEFNLCBGcmFuY29pcyBHb3VnZXQgd3JvdGU6Cj4gT24gTW9uLCAxNyBK
dW4gMjAxOSwgVXJpIEx1YmxpbiB3cm90ZToKPiAKPj4gT24gNi8xNS8xOSAyOjU5IFBNLCBGcmVk
aWFubyBaaWdsaW8gd3JvdGU6Cj4+Pj4KPj4+PiBUaGlzIGNvbnN0YW50IGZpdHMgaW4gYSAzMiBi
aXQgc2lnbmVkIGludGVnZXIgc28gaXQgZG9lcyBub3QgbmVlZCB0aGUKPj4+PiBzdWZmaXguIEhv
d2V2ZXIgc29tZSBvZiB0aGUgZGVyaXZlZCBjb25zdGFudHMgZG9uJ3Qgc28gdXNlIGFuIHVpbnQ2
NF90Cj4+Pj4gY2FzdCB0byBhdm9pZCB0aGUgbG9uZyB2cyBsb25nIGxvbmcgY29uZnVzaW9uIChz
dWNoIGFzIGluIHByaW50Cj4+Pj4gc3RhdGVtZW50cykuCj4+Pj4gQWxzbyBzb21lIG9mIHRoZSBl
eHByZXNzaW9ucyB0aGVzZSBjb25zdGFudHMgYXJlIHVzZWQgaW4gbWF5IG92ZXJmbG93IHNvCj4+
Pj4gcGVyZm9ybSB0aGUgYXBwcm9wcmlhdGUgY2FzdHMgaW4gdGhvc2UgbG9jYXRpb25zLiBUaGlz
IG1ha2VzIGl0IGNsZWFyZXIKPj4+PiB0aGF0IHRoZXNlIG9wZXJhdGlvbnMgYXJlIDY0IGJpdC4K
Pj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2Vh
dmVycy5jb20+Cj4+Pgo+Pj4gYWNrIGZvciBtZSwgd2FpdGluZyBVcmkgdG8gY29uZmlybQo+Pgo+
PiBIb25lc3RseSwgSSBkbyBub3Qgc2VlIHRoZSB2YWx1ZSBvZiBtYWtpbmcgTlNFQ19QRVJfU0VD
IGEgMzJiaXQgaW50ZWdlci4KPj4gTW9zdCBvZiBpdHMgdXNhZ2UgaXMgaW4gNjRiaXQgZXhwcmVz
c2lvbnMuCj4gCj4gSXQncyBub3QgYSAzMiBiaXQgdnMuIDY0IGJpdCBpc3N1ZS4gSXQncyBhIGxv
bmcgdnMuIGxvbmcgbG9uZyBvbmUuCj4gCj4gV2hlbmV2ZXIgTlNFQ19QRVJfTUlMTElTRUMgb3Ig
TlNFQ19QRVJfU0VDIGFyZSB1c2VkIGluIGEgc3BpY2VfZGVidWcoKQo+IHBhcmFtZXRlciBvbmUg
Y2Fubm90IHVzZSAldSBvciAlbHUgYXMgdGhlIGZvcm1hdC4gQnV0IG5vdCBzbyBmb3IKPiBOU0VD
X1BFUl9NSUNST1NFQyBvciBNU0VDX1BFUl9TRUMuIFRoaXMgaXMgaW5jb25zaXN0ZW50IHNvIHRo
YXQgdGltaW5nCj4gdHJhY2VzIHJlcXVpcmUgbG90cyBvZiBndWVzc2luZyBhbmQgcmVjb21waWxh
dGlvbnMuCgpXaGVuIHRoZSB2YXJpYWJsZSBpcyA2NCBiaXQsIHlvdSBjYW4gdXNlIGEgNjRiaXQg
bWFjcm8gZm9yIHByaW50aW5nLApsaWtlIFBSSWQ2NC4KClVyaS4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
