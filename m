Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 529D7DC6B8
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 16:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3CB86EB5A;
	Fri, 18 Oct 2019 14:01:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E3F46EB5A
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 14:01:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EE16E970DF;
 Fri, 18 Oct 2019 14:01:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DFB745DA8C;
 Fri, 18 Oct 2019 14:01:11 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id CB7371808878;
 Fri, 18 Oct 2019 14:01:11 +0000 (UTC)
Date: Fri, 18 Oct 2019 10:01:11 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <2045691472.7308673.1571407271446.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191018133522.30080-1-yuri.benditovich@daynix.com>
References: <20191018133522.30080-1-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.22, 10.4.195.4]
Thread-Topic: Make WIX script to be useful in Windows build
Thread-Index: KE7Ai0F0mKfv0hbl9BfweHBp448QYQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 18 Oct 2019 14:01:12 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH 0/3] Make WIX script to be useful in
 Windows build
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBUaGlzIHNlcmllcyBjb250YWlucyB1cGRhdGVzIG9mIFdJWChMKSBzY3JpcHQgYW5kIHJl
bGF0ZWQgY2hhbmdlczoKPiBNYWtlIGl0IGNvbXBhdGlibGUgd2l0aCBXSVggKGN1cnJlbnRseSBX
SVggcmFpc2VzIGVycm9yIG9uIHg2NCBidWlsZCkKPiBDdXN0b21pemUgc2V2ZXJhbCBwcm9wZXJ0
aWVzIGR1cmluZyBidWlsZCBvZiBNU0kKPiBFbmFibGUgcHJldmVudGlvbiBvZiB4ODYgaW5zdGFs
bCBvbiB4NjQgc3lzdGVtCj4gCj4gQXZhaWxhYmxlIGF0Cj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL3l1cmlfYmVuZGl0b3ZpY2gvdmRfYWdlbnQvdHJlZS93aXhfYWxpZ24KPiAKPiBZ
dXJpIEJlbmRpdG92aWNoICgzKToKPiAgIHdpbjMyL3ZkX2FnZW50OiBGaXggV0lYIGVycm9yIG9u
IC53eHMgc2NyaXB0Cj4gICB3aW4zMi92ZF9hZ2VudDogQ3VzdG9taXplIE1TSSBwcm9kdWN0IG5h
bWUgYW5kIGluc3RhbGwgbG9jYXRpb24KPiAgIHdpbjMyL3ZkX2FnZW50OiBPcHRpb25hbGx5IGRp
c2FibGUgaW5zdGFsbGF0aW9uIG9mIHg4NiBNU0kgb24geDY0Cj4gICAgIHN5c3RlbQo+IAo+ICBN
YWtlZmlsZS5hbSAgICAgICAgICB8ICA1ICsrKystCj4gIHNwaWNlLXZkYWdlbnQud3hzLmluIHwg
MTcgKysrKysrKysrKystLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCsp
LCA3IGRlbGV0aW9ucygtKQo+IAoKV29ya3MgZm9yIG1lLCBhY2tlZC4KCklmIG5vYm9keSBjb21w
bGFpbnMgSSB3b3VsZCBtZXJnZSBpbiBhIGNvdXBsZSBvZiBkYXlzLgoKRnJlZGlhbm8KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
