Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4201BA5AD
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 16:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F276E2DF;
	Mon, 27 Apr 2020 14:05:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 309 seconds by postgrey-1.36 at gabe;
 Mon, 27 Apr 2020 14:02:20 UTC
Received: from forward501o.mail.yandex.net (forward501o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::611])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD5189E98
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 14:02:20 +0000 (UTC)
Received: from mxback4o.mail.yandex.net (mxback4o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::1e])
 by forward501o.mail.yandex.net (Yandex) with ESMTP id C8B921E8041D;
 Mon, 27 Apr 2020 16:57:08 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback4o.mail.yandex.net (mxback/Yandex) with ESMTP id QRX0PWeIZo-v834aVn2; 
 Mon, 27 Apr 2020 16:57:08 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1587995828; bh=3so3Wx5ItdE664EODIlGAjCX3PxWnQqfEpNdjAWPVck=;
 h=References:Date:Message-Id:Subject:In-Reply-To:To:From;
 b=DiSmk/xQ100uRKHcwgrzd20I6PTTiN3LjLreg3VGwsaaUauiS/YZVPaX69F2G3hLG
 sGrigD2Q5JnzUQCi8gBitFfHaT0pXHT7Noiebi6GheRO1IwxgPZF8hMLW/nvw2JiyP
 9m1kMVrr6woH5h6EJDXT+fEUv1Y7kZdXUXRB1ZQ8=
Authentication-Results: mxback4o.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by iva3-64eac1bc5e68.qloud-c.yandex.net with HTTP;
 Mon, 27 Apr 2020 16:57:08 +0300
From: ole-krutov@yandex.ru
To: "uril@redhat.com" <uril@redhat.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
In-Reply-To: <1dca33a8-bf5b-6476-756a-25114371e80b@redhat.com>
References: <5137131587976277@sas1-68ac888a1313.qloud-c.yandex.net>
 <fc22402d-a59e-7784-bf27-967544a92e02@redhat.com>
 <895531587990060@mail.yandex.ru>
 <1dca33a8-bf5b-6476-756a-25114371e80b@redhat.com>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 27 Apr 2020 16:57:08 +0300
Message-Id: <2804101587994734@mail.yandex.ru>
X-Mailman-Approved-At: Mon, 27 Apr 2020 14:05:28 +0000
Subject: Re: [Spice-devel] Spice-streaming-agent: is it possible to replace
 main display channel with agent's video stream?
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1213139247=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1213139247==
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

PGRpdj5UaGUga2V5IGZlYXR1cmUgaXMgYSBwaXBlbGluZSAiWCBmcmFtZWJ1ZmZlciAtJmd0OyBG
QkMgLSZndDsgVlJBTSAtJmd0OyBOVkVOQyIuIFRoaXMgaXMgZG9uZSB2aWEgaGFyZHdhcmUrbnZp
ZGlhIGRyaXZlci4gTlZFTkMgY2FuIGdldCBpdHMgZGF0YSB2aWEgQ1VEQSwgT3BlbkdMIG9yIERp
cmVjdFguIENVREEgaXMgbm90IGFuIG9wdGlvbiBieSBzb21lIHJlYXNvbnMgKHJlcXVpcmVzIFF1
YWRybyBjb25maWd1cmF0aW9ucyBvZiB2R1BVIG9ubHkgdGhhdCByZXF1aXJlcyBtb3JlIGV4cGVu
c2l2ZSBsaWNlbnNlcywgYW5kIHNvbWUgaGFyZHdhcmUgY29uc3RyYWludHMpLCBEaXJlY3RYIGlz
IFdpbiBvbmx5LiBPcGVuR0wgbGVmdCBhcyB0aGUgb25seSBvcHRpb24uIFRoZXJlIGlzIGFuIG9w
dGlvbiB0byBncmFiIGZyYW1lYnVmZmVyIHRvIHN5c3RlbSBtZW1vcnkgaW5zdGVhZCBvZiBWUkFN
IGFuZCB0aGVuIHNvbWVob3cgY29weSB0aGF0IG1lbW9yeSBhcmVhIHRvIE5WRU5DIGJ1dCBJIGRp
ZG4ndCBsZWFybiBpdCBiZWNhdXNlIHRoYXQgbGVhZHMgdG8gY29weWluZyBvdmVyaGVhZCA6KCBJ
IGRvbid0IGtub3cgbW9yZSBjb250cm9scyBmb3IgRkJDIHRoYXQgY291bGQgcnVuIHdpdGggZGlz
cGxheT1vZmYuPC9kaXY+PGRpdj7CoDwvZGl2PjxkaXY+MjcuMDQuMjAyMCwgMTY6MjgsICJVcmkg
THVibGluIiAmbHQ7dXJpbEByZWRoYXQuY29tJmd0Ozo8L2Rpdj48YmxvY2txdW90ZT48cD5PbiA0
LzI3LzIwIDM6MjQgUE0sIDxhIGhyZWY9Im1haWx0bzpvbGUta3J1dG92QHlhbmRleC5ydSI+b2xl
LWtydXRvdkB5YW5kZXgucnU8L2E+IHdyb3RlOjwvcD48YmxvY2txdW90ZT7CoEhpLDxiciAvPsKg
SSBjYW4gc2V0IGRpc3BsYXk9b2ZmIG9mIGNvdXJzZS4gQnV0IGluIHRoYXQgY2FzZSBOdmlkaWEg
RkJDPGJyIC8+wqAoRnJhbWVCdWZmZXIgQ2FwdHVyaW5nKSBpcyB1bnVzYWJsZS4gQnV0IHdlIHRy
eSB0byBtYWtlIGFuZCB1c2UgYSBwbHVnaW48YnIgLz7CoHRoYXQgdXNlcyB0aGF0IGZlYXR1cmUu
IEkgdXNlIEdSSUQgdkdQVXMuIHhvcmcuY29uZiBpcyBzZXQgdG8gdXNlIG52aWRpYTxiciAvPsKg
Y2FyZCAtLSBpdCdzIHRoZSBzYW1lIGNvbmZpZyB0aGF0IHdvcmtzIHdpdGggZ3N0LXBsdWdpbi48
L2Jsb2NrcXVvdGU+PHA+PGJyIC8+SGksPGJyIC8+PGJyIC8+TWF5YmUgdHJ5IHRvIG1vZGlmeSBz
b21lIHNldHRpbmdzIGluIEZCQywgc3VjaCB0aGF0IGl0IHdvcmtzIHdpdGg8YnIgLz5kaXNwbGF5
PW9mZi48YnIgLz48YnIgLz5VcmkuPGJyIC8+PGJyIC8+wqA8L3A+PGJsb2NrcXVvdGU+wqAyNy4w
NC4yMDIwLCAxNToyMCwgIlVyaSBMdWJsaW4iICZsdDs8YSBocmVmPSJtYWlsdG86dXJpbEByZWRo
YXQuY29tIj51cmlsQHJlZGhhdC5jb208L2E+Jmd0Ozo8YnIgLz48YnIgLz7CoMKgwqDCoMKgT24g
NC8yNy8yMCAxMTozMSBBTSwgT2xlZyBLcnV0b3Ygd3JvdGU6PGJyIC8+PGJyIC8+wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoFdlIGFyZSB0cnlpbmcgdG8gbWFrZSBwbHVnaW4gd2hpY2ggdXNlcyBudmlk
aWEgRkJDICsgTlZFTkM8YnIgLz7CoMKgwqDCoMKgwqDCoMKgwqBpbnN0ZWFkIG9mPGJyIC8+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGdzdC1wbHVnaW4uIFdoZW4gdXNpbmcgRkJDLCBJIG11c3Qgc2V0
ICJkaXNwbGF5IiB0byAib24iLCBlbHNlPGJyIC8+wqDCoMKgwqDCoMKgwqDCoMKgRkJDIGlzPGJy
IC8+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlcG9ydGluZyBhcyBub3Qgc3VwcG9ydGVkLiBJIGNh
bid0IGRvIHRoZSB0cmljayB3aXRoPGJyIC8+wqDCoMKgwqDCoMKgwqDCoMKgcXhsK252aWRpYSB3
aXRoPGJyIC8+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRpc3BsYXkgb2ZmIGFzIHdpdGggZ3N0LXBs
dWdpbi4gVGh1cywgdHdvIHNwaWNlIHdpbmRvd3M8YnIgLz7CoMKgwqDCoMKgwqDCoMKgwqBhcHBl
YXIsIG9uZSB3aXRoPGJyIC8+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1haW4gZGlzcGxheSBjaGFu
bmVsIHdpdGggY2hvcHB5IHZpZGVvLCBhbmQgc2Vjb25kIC0tIHdpdGggaDI2NDxiciAvPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBjb21wcmVzc2VkIGNhcHR1cmVkIHZpZGVvLiBUaGVyZSBpcyBubyBt
b3VzZSBjb250cm9scyBpbjxiciAvPsKgwqDCoMKgwqDCoMKgwqDCoHNlY29uZCB3aW5kb3csPGJy
IC8+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFuZCBmaXJzdCB3aW5kb3cgY29uc3VtZXMgbXVjaCBj
cHUgYW5kIG5ldHdvcmsgYmFuZHdpZHRoIHdoZW48YnIgLz7CoMKgwqDCoMKgwqDCoMKgwqB2aWRl
byBvcjxiciAvPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkeW5hbWljIGdyYXBoaWNzIGlzIGRpc3Bs
YXllZC4gU28gaXQgd291bGQgYmUgZ3JlYXQgdG8gc3RvcCBvdXRwdXQ8YnIgLz7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcHJpbWFyeSBkaXNwbGF5IGFuZCByZWRpcmVjdCBhZ2VudCdzIHZpZGVvIHN0
cmVhbSBpbnRvIGl0LiBJczxiciAvPsKgwqDCoMKgwqDCoMKgwqDCoGl0IHNvbWVob3c8YnIgLz7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcG9zc2libGU/IFRoYW5rIHlvdS48YnIgLz48YnIgLz7CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgLS08YnIgLz7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg0J7RgtC/0YDQ
sNCy0LvQtdC90L4g0LjQtyDQvNC+0LHQuNC70YzQvdC+0LPQviDQv9GA0LjQu9C+0LbQtdC90LjR
jyDQr9C90LTQtdC60YEu0J/QvtGH0YLRizxiciAvPjxiciAvPjxiciAvPsKgwqDCoMKgwqBIaSw8
YnIgLz48YnIgLz7CoMKgwqDCoMKgV2h5IGNhbiB5b3Ugbm90IHNldCBkaXNwbGF5PW9mZiA/PGJy
IC8+PGJyIC8+wqDCoMKgwqDCoERpZCB5b3UgY29uZmlndXJlIHlvdXIgWCBzZXJ2ZXIgdG8gdXNl
IHRoZSBOVklESUEgR1BVIG9yIHRoZSBRWEwgPzxiciAvPjxiciAvPsKgwqDCoMKgwqBXaGF0IE5W
SURJQSBjYXJkIGFuZCBkcml2ZXIgYXJlIHlvdSB1c2luZyA/PGJyIC8+PGJyIC8+wqDCoMKgwqDC
oFVyaS48YnIgLz7CoDwvYmxvY2txdW90ZT48cD7CoDwvcD48L2Jsb2NrcXVvdGU+

--===============1213139247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1213139247==--
