Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B48367486
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 19:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A36CD6E2FD;
	Fri, 12 Jul 2019 17:45:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA7B96E2FD
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 17:45:26 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=[192.168.2.132])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hlzcD-00087Y-4Y; Fri, 12 Jul 2019 12:45:50 -0500
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Brendan Shanks <bshanks@codeweavers.com>
In-Reply-To: <696843125.27393827.1562917936911.JavaMail.zimbra@redhat.com>
Date: Fri, 12 Jul 2019 10:45:22 -0700
Message-Id: <CA318425-01E4-497A-AC7C-EF9B9576DD61@codeweavers.com>
References: <20190711174317.3095-1-bshanks@codeweavers.com>
 <696843125.27393827.1562917936911.JavaMail.zimbra@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > On Jul 12, 2019, at 12:52 AM,
 Frediano Ziglio <fziglio@redhat.com>
 wrote: > >> >> When launching with no config file or arguments, the "You
 must provide >> some authentication method" dialog appears [...] 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=To:References:Message-Id:
 Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
 Content-Type:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CzTOiPUQLyFNAzEE1Uj/P5d7D6Z3yhOqnOjo5GI6xwc=; b=ZG5jX1oGcMg5NS24GigYIIa34
 EsJsMHRf5Ik9FHV6OJCfM3DoUbJXUHRf2fKOIcC4QVdNGVfq7gLdOXmrKHWPpqilzcqB6WB/L+sTf
 Np3ZRmebT14ReoZSD1MmihL90wa0vMmaNgxwvrRbkLUwkNUNIPhCsu5CRa4XxA4I1t+MY=;
Subject: Re: [Spice-devel] [PATCH x11spice] Fix hang when launching with
 invalid config
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Cj4gT24gSnVsIDEyLCAyMDE5LCBhdCAxMjo1MiBBTSwgRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+PiAKPj4gV2hlbiBsYXVuY2hpbmcgd2l0aCBubyBjb25m
aWcgZmlsZSBvciBhcmd1bWVudHMsIHRoZSAiWW91IG11c3QgcHJvdmlkZQo+PiBzb21lIGF1dGhl
bnRpY2F0aW9uIG1ldGhvZCIgZGlhbG9nIGFwcGVhcnMuIENsaWNraW5nIHRoZSBDbG9zZSBidXR0
b24KPj4gd291bGQgaGFuZyB0aGUgYXBwbGljYXRpb24gYW5kIGl0IHdvdWxkIG5ldmVyIHF1aXQu
Cj4+IAo+PiBzLT5kcmF3X2NvbW1hbmRfaW5fcHJvZ3Jlc3Mgd2FzIHVuaW5pdGlhbGl6ZWQsIGFu
ZCBmbHVzaF9hbmRfbG9jaygpCj4+IHdvdWxkIGdldCBzdHVjayBpbiBhbiBpbmZpbml0ZSBsb29w
IHdhaXRpbmcgZm9yIGl0IHRvIGJlIDAuCj4+IAo+PiBJbml0aWFsaXplIHMtPmRyYXdfY29tbWFu
ZF9pbl9wcm9ncmVzcyB0byAwLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogQnJlbmRhbiBTaGFua3Mg
PGJzaGFua3NAY29kZXdlYXZlcnMuY29tPgo+PiAtLS0KPj4gc3JjL3Nlc3Npb24uYyB8IDEgKwo+
PiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4gCj4+IGRpZmYgLS1naXQgYS9zcmMv
c2Vzc2lvbi5jIGIvc3JjL3Nlc3Npb24uYwo+PiBpbmRleCAxZTU5NDE1Li5jNWE0MzljIDEwMDY0
NAo+PiAtLS0gYS9zcmMvc2Vzc2lvbi5jCj4+ICsrKyBiL3NyYy9zZXNzaW9uLmMKPj4gQEAgLTMw
Niw2ICszMDYsNyBAQCBpbnQgc2Vzc2lvbl9jcmVhdGUoc2Vzc2lvbl90ICpzKQo+PiAgICAgcy0+
Y29ubmVjdGVkID0gRkFMU0U7Cj4+ICAgICBzLT5jb25uZWN0X3BpZCA9IDA7Cj4+ICAgICBzLT5k
aXNjb25uZWN0X3BpZCA9IDA7Cj4+ICsgICAgcy0+ZHJhd19jb21tYW5kX2luX3Byb2dyZXNzID0g
MDsKPiAKPiBXaHkgbm90IHVzaW5nIEZBTFNFIGluc3RlYWQ/Cj4gCj4+IAo+PiAgICAgaWYgKHMt
Pm9wdGlvbnMuYXVkaXQpCj4+ICAgICAgICAgcmMgPSBiZWdpbl9hdWRpdChzKTsKPiAKPiBNYXli
ZSBpdCB3b3VsZCBiZSBhbHNvIHNhZmUgdG8gaW5pdGlhbGl6ZSB0aGUgInNlc3Npb24iIHZhcmlh
YmxlIGluIG1haW4KPiB3aXRoIGEgbWVtc2V0Pwo+IAo+IEZyZWRpYW5vCgpUaGFuayB5b3UsIHRo
b3NlIGFyZSBib3RoIGdvb2QgcG9pbnRzLiBJ4oCZbGwgc2VuZCBhbiB1cGRhdGVkIHBhdGNoIHdo
aWNoIGp1c3QgZG9lcyBhbiBpbml0aWFsIG1lbXNldCBvZiDigJlzZXNzaW9u4oCZLgoKQnJlbmRh
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
