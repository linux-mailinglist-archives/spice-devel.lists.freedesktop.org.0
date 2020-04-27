Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7DF1BA3A9
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 14:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E03189AE6;
	Mon, 27 Apr 2020 12:36:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 418 seconds by postgrey-1.36 at gabe;
 Mon, 27 Apr 2020 12:32:02 UTC
Received: from forward501p.mail.yandex.net (forward501p.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400BD6E286
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 12:32:02 +0000 (UTC)
Received: from mxback23g.mail.yandex.net (mxback23g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:323])
 by forward501p.mail.yandex.net (Yandex) with ESMTP id 3C3DD350021A;
 Mon, 27 Apr 2020 15:24:59 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback23g.mail.yandex.net (mxback/Yandex) with ESMTP id SUp6TdZEX9-OwGu3EjM;
 Mon, 27 Apr 2020 15:24:58 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1587990298; bh=XGuCpRtSNdLIvbFJL1NAm1h3y6CUyKygzRHhkOww6Lg=;
 h=References:Date:Message-Id:Subject:In-Reply-To:To:From;
 b=m2P/iUugiEpudkRVYrHMub5swAUdCe8vx5FQOAEdPy0w6Qp0gD3tGMmpOnhBbPWmu
 xIca56xLZzzM1zcYWUDsCXlLKWim0SXL9NipHJrJJn/b69f9HhF+o4pss6oaAG9Cp5
 btja48oD8FOj/3iIFwoq7ZPMekgrgAKMutBqDm2o=
Authentication-Results: mxback23g.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by sas1-ffdbcd5f1d77.qloud-c.yandex.net with HTTP;
 Mon, 27 Apr 2020 15:24:58 +0300
From: ole-krutov@yandex.ru
To: "uril@redhat.com" <uril@redhat.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
In-Reply-To: <fc22402d-a59e-7784-bf27-967544a92e02@redhat.com>
References: <5137131587976277@sas1-68ac888a1313.qloud-c.yandex.net>
 <fc22402d-a59e-7784-bf27-967544a92e02@redhat.com>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 27 Apr 2020 15:24:58 +0300
Message-Id: <895531587990060@mail.yandex.ru>
X-Mailman-Approved-At: Mon, 27 Apr 2020 12:36:28 +0000
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
Content-Type: multipart/mixed; boundary="===============1058196240=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1058196240==
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

PGRpdj5IaSw8L2Rpdj48ZGl2PkkgY2FuIHNldCBkaXNwbGF5PW9mZiBvZiBjb3Vyc2UuIEJ1dCBp
biB0aGF0IGNhc2UgTnZpZGlhIEZCQyAoRnJhbWVCdWZmZXIgQ2FwdHVyaW5nKSBpcyB1bnVzYWJs
ZS4gQnV0IHdlIHRyeSB0byBtYWtlIGFuZCB1c2UgYSBwbHVnaW4gdGhhdCB1c2VzIHRoYXQgZmVh
dHVyZS4gSSB1c2UgR1JJRCB2R1BVcy4geG9yZy5jb25mIGlzIHNldCB0byB1c2UgbnZpZGlhIGNh
cmQgLS0gaXQncyB0aGUgc2FtZSBjb25maWcgdGhhdCB3b3JrcyB3aXRoIGdzdC1wbHVnaW4uPC9k
aXY+PGRpdj7CoDwvZGl2PjxkaXY+MjcuMDQuMjAyMCwgMTU6MjAsICJVcmkgTHVibGluIiAmbHQ7
dXJpbEByZWRoYXQuY29tJmd0Ozo8L2Rpdj48YmxvY2txdW90ZT48cD5PbiA0LzI3LzIwIDExOjMx
IEFNLCBPbGVnIEtydXRvdiB3cm90ZTo8L3A+PGJsb2NrcXVvdGU+wqBXZSBhcmUgdHJ5aW5nIHRv
IG1ha2UgcGx1Z2luIHdoaWNoIHVzZXMgbnZpZGlhIEZCQyArIE5WRU5DIGluc3RlYWQgb2Y8YnIg
Lz7CoGdzdC1wbHVnaW4uIFdoZW4gdXNpbmcgRkJDLCBJIG11c3Qgc2V0ICJkaXNwbGF5IiB0byAi
b24iLCBlbHNlIEZCQyBpczxiciAvPsKgcmVwb3J0aW5nIGFzIG5vdCBzdXBwb3J0ZWQuIEkgY2Fu
J3QgZG8gdGhlIHRyaWNrIHdpdGggcXhsK252aWRpYSB3aXRoPGJyIC8+wqBkaXNwbGF5IG9mZiBh
cyB3aXRoIGdzdC1wbHVnaW4uIFRodXMsIHR3byBzcGljZSB3aW5kb3dzIGFwcGVhciwgb25lIHdp
dGg8YnIgLz7CoG1haW4gZGlzcGxheSBjaGFubmVsIHdpdGggY2hvcHB5IHZpZGVvLCBhbmQgc2Vj
b25kIC0tIHdpdGggaDI2NDxiciAvPsKgY29tcHJlc3NlZCBjYXB0dXJlZCB2aWRlby4gVGhlcmUg
aXMgbm8gbW91c2UgY29udHJvbHMgaW4gc2Vjb25kIHdpbmRvdyw8YnIgLz7CoGFuZCBmaXJzdCB3
aW5kb3cgY29uc3VtZXMgbXVjaCBjcHUgYW5kIG5ldHdvcmsgYmFuZHdpZHRoIHdoZW4gdmlkZW8g
b3I8YnIgLz7CoGR5bmFtaWMgZ3JhcGhpY3MgaXMgZGlzcGxheWVkLiBTbyBpdCB3b3VsZCBiZSBn
cmVhdCB0byBzdG9wIG91dHB1dDxiciAvPsKgcHJpbWFyeSBkaXNwbGF5IGFuZCByZWRpcmVjdCBh
Z2VudCdzIHZpZGVvIHN0cmVhbSBpbnRvIGl0LiBJcyBpdCBzb21laG93PGJyIC8+wqBwb3NzaWJs
ZT8gVGhhbmsgeW91LjxiciAvPjxiciAvPsKgLS08YnIgLz7CoNCe0YLQv9GA0LDQstC70LXQvdC+
INC40Lcg0LzQvtCx0LjQu9GM0L3QvtCz0L4g0L/RgNC40LvQvtC20LXQvdC40Y8g0K/QvdC00LXQ
utGBLtCf0L7Rh9GC0Ys8L2Jsb2NrcXVvdGU+PHA+PGJyIC8+SGksPGJyIC8+PGJyIC8+V2h5IGNh
biB5b3Ugbm90IHNldCBkaXNwbGF5PW9mZiA/PGJyIC8+PGJyIC8+RGlkIHlvdSBjb25maWd1cmUg
eW91ciBYIHNlcnZlciB0byB1c2UgdGhlIE5WSURJQSBHUFUgb3IgdGhlIFFYTCA/PGJyIC8+PGJy
IC8+V2hhdCBOVklESUEgY2FyZCBhbmQgZHJpdmVyIGFyZSB5b3UgdXNpbmcgPzxiciAvPjxiciAv
PlVyaS48YnIgLz7CoDwvcD48L2Jsb2NrcXVvdGU+

--===============1058196240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1058196240==--
