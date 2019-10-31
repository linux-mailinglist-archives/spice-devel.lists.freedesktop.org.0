Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A90CEB5C1
	for <lists+spice-devel@lfdr.de>; Thu, 31 Oct 2019 18:03:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B63F6EBBF;
	Thu, 31 Oct 2019 17:03:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 996 seconds by postgrey-1.36 at gabe;
 Thu, 31 Oct 2019 17:03:23 UTC
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EDD56EBBF
 for <spice-devel@lists.freedesktop.org>; Thu, 31 Oct 2019 17:03:22 +0000 (UTC)
Received: from dhcp250.mn.codeweavers.com ([10.69.137.250])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <dlesho@codeweavers.com>)
 id 1iQDav-0001ET-Qd; Thu, 31 Oct 2019 11:46:46 -0500
To: Victor Toso <victortoso@redhat.com>, Jeremy White <jwhite@codeweavers.com>
References: <20191031154627.ase2nwgygawmzxdd@wingsuit>
 <415c5634-a6a3-50d3-e6f1-480ebebf31e7@codeweavers.com>
 <20191031160408.acmodlrqzg6o4gsm@wingsuit>
From: Derek Lesho <dlesho@codeweavers.com>
Message-ID: <cea4773c-62f7-35c6-3a52-5947682adce5@codeweavers.com>
Date: Thu, 31 Oct 2019 11:47:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191031160408.acmodlrqzg6o4gsm@wingsuit>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vZovPJS7hfTvKbWLQIV3O3Q+3isemfGTAMo1YxsfMis=; b=SZBk3ZPUwUX2HYCzpgQkdJapGo
 tBMEQaDmxywP+VY8G6U4tEPFB5Od5DtuI8Rc04APB3cAx7YsHXl7GHNIpgk5Wmexm4zYClt8Gyu4H
 cnHbD/MqdXfIstWEkONXqRcBPv4+PxJ3IxIn7A0w0u8lFsTAZEsrd7hTmZ3y/qfaZU94=;
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMTAvMzEvMTkgMTE6MDQgQU0sIFZpY3RvciBUb3NvIHdyb3RlOgoKPiBIaSwKPgo+IE9uIFRo
dSwgT2N0IDMxLCAyMDE5IGF0IDEwOjU2OjU5QU0gLTA1MDAsIEplcmVteSBXaGl0ZSB3cm90ZToK
Pj4gSGV5IFZpY3RvciwKPj4KPj4gT24gMTAvMzEvMTkgMTA6NDYgQU0sIFZpY3RvciBUb3NvIHdy
b3RlOgo+Pj4gSGkgbGlzdCwKPj4+Cj4+PiBZb3UgbWlnaHQgbm90ZSB0aGF0IHRoZSBHaXRsYWIg
YWN0aXZpdHkgd2lsbCBpbmNyZWFzZSBhIGJpdAo+Pj4gZnJvbSBub3cgb24sIGhvcGVmdWxseS4g
SXQgd2FzIGFncmVlZCB3aXRoaW4gc29tZSBTUElDRQo+Pj4gY29sbGFib3JhdG9ycyB0byBnaXZl
IGEgc2VyaW91cyB0cnkgb24gdXNpbmcgdGhpcwo+Pj4gaW5mcmFzdHJ1Y3R1cmUgdGhhdCBpcyBh
dmFpbGFibGUgdG8gdXMuCj4+Pgo+Pj4gT25lIHBvdGVudGlhbCBncmVhdCBjaGFuZ2UgYW5kIGNo
YWxsZW5nZSBpcyB0aGUgdXNhZ2Ugb2YKPj4+IG1lcmdlIHJlcXVlc3RzIGluIG9wcG9zZSB0byBw
YXRjaCBzZXJpZXMgb3ZlciBtYWlsaW5nIGxpc3QuIEkKPj4+IGhvcGUgdGhlIGJlbmVmaXRzIG91
dHdlaWdoIHRoZSBkb3duc2lkZXMgaW4gdGhlIGxvbmcgcnVuLgo+PiBEZXJlayBoYXMgYmVlbiB3
b3JraW5nIG9uIGEgdXRpbGl0eSB0byBpbnRlZ3JhdGUgR2l0TGFiIGFuZCBhCj4+IG1haWxpbmcg
bGlzdCwgZm9yIGV4cGVyaW1lbnRhdGlvbiBieSBXaW5lLgo+Pgo+PiBIZSdzIGp1c3QgZ290dGVu
IHRvIHRoZSBwb2ludCBvZiBiZWluZyByZWFkeSB0byB0cnkgYSBwcm9vZiBvZgo+PiBjb25jZXB0
Lgo+PiBXb3VsZCB5b3UgZ3V5cyBiZSBpbnRlcmVzdGVkIGluIHRoaXM/Cj4gV2hhdCBkb2VzIGl0
IGRvIGV4YWN0bHk/Cj4KPiBDaGVlcnMsCj4gVmljdG9yCgpIaSBWaWN0b3IsCgpUaGUgYnJpZGdl
IHNlbmRzIGFsbCB0aGUgY29tbWl0cyBmcm9tIG1lcmdlLXJlcXVlc3RzIGluIHBhdGNoIGZvcm0g
dG8gCnRoZSBtYWlsaW5nIGxpc3QsIGFzIHdlbGwgYXMgYW55IGNvbW1lbnRzIHRoZSBNUiByZWNl
aXZlcy7CoCBJdCBhbHNvIApjcmVhdGVzIE1ScyBmcm9tIFBBVENIIHN1Ym1pc3Npb25zIHRvIHRo
ZSBtYWlsaW5nIGxpc3QuwqAgVGhlIGdvYWwgd2l0aCAKdGhpcyBpcyB0byBlbnN1cmUgdGhlIGRl
dmVsb3BlcnMgd2hvIGFyZSBhY2N1c3RvbWVkIHRvIHVzaW5nIGVpdGhlciAKc3lzdGVtIGFyZW4n
dCBpc29sYXRlZCBmcm9tIGRldmVsb3BlcnMgdXNpbmcgdGhlIG90aGVyLsKgIE9wdGlvbmFsbHks
IHRoZSAKYnJpZGdlIGNhbiBiZSBjb25maWd1cmVkIHRvIGFsbG93IHBlb3BsZSB0byByZXNwb25k
IHRvIHRoZSBnZW5lcmF0ZWQgTVJzIAphbmQgcGF0Y2gtc2V0cywgaG93ZXZlciB0aGlzIGlzIGRp
c2FibGVkIGJ5IGRlZmF1bHQgc2luY2UgaXQgY2FuIGJlIApjb25mdXNpbmcgYmFzZWQgb24gdGhl
IGRpZmZlcmVuY2VzIGJldHdlZW4gZW1haWwgdGhyZWFkcyBhbmQgR2l0TGFiIApkaXNjdXNzaW9u
cy4KCi1EZXJlawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
