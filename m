Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4BB1EA76F
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jun 2020 17:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8F889FE6;
	Mon,  1 Jun 2020 15:59:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward501j.mail.yandex.net (forward501j.mail.yandex.net
 [IPv6:2a02:6b8:0:801:2::111])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D4089FE6
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jun 2020 15:59:25 +0000 (UTC)
Received: from mxback17g.mail.yandex.net (mxback17g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:317])
 by forward501j.mail.yandex.net (Yandex) with ESMTP id 6540B3380293;
 Mon,  1 Jun 2020 18:59:20 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback17g.mail.yandex.net (mxback/Yandex) with ESMTP id DSCdBBnk8i-xJs8frB0;
 Mon, 01 Jun 2020 18:59:19 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1591027159; bh=jShp/igdycko8Zv9BAV41WoIZrHu+0VaKd1KxbcKQSQ=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=p9bktrmifsTsHkFPlgqSE/b78qS1C0Niy0q9Lq0NExxatyVPu+IpeGWAuWQV9qpss
 BdQE72TJkz0ci5W0HTbo4tOhgYj0S/p4OnEtcTiC+xhiE47YgZK2wO1f11vet4AxTe
 KofcRUl76h9Y9OqFMCYw74fuDUnLjag3f9OB13FM=
Authentication-Results: mxback17g.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by myt5-8444b3b8f5de.qloud-c.yandex.net with HTTP;
 Mon, 01 Jun 2020 18:59:19 +0300
From: ole-krutov@yandex.ru
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <191822355.28679337.1591021618597.JavaMail.zimbra@redhat.com>
References: <2062121591020278@mail.yandex.ru>
 <191822355.28679337.1591021618597.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 01 Jun 2020 18:59:19 +0300
Message-Id: <1516151591025233@mail.yandex.ru>
Subject: Re: [Spice-devel] No mouse under Win 10 when Nvidia drivers are
 active
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0801968016=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0801968016==
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

PGRpdj5Ob3cgSSBoYXZlIHRyaWVkIGRpZmZlcmVudCBjb21iaW5hdGlvbnMgb2YgdmQtYWdlbnQg
c3RhdGUgYW5kIG1vdXNlIGN1cnNvciB0eXBlLiBJbiBubyBjYXNlIG1vdXNlIGN1cnNvciB3YXMg
dmlzaWJsZSBvbiBudmlkaWEgZGlzcGxheSB3aW5kb3cuIFdpdGggZHVhbCBkaXNwbGF5LCBxeGwr
bnZpZGlhLCBzdG9wcGluZyB2ZC1hZ2VudCBtYWRlIGN1cnNvciB2aXNpYmxlIG9uIHF4bCB3aW5k
b3cuIFJlYWN0aW9uIHRvIG1vdXNlIGV2ZW50cyB3YXMgc2VlbiBvbiBudmlkaWEgd2luZG93IHRv
bywgYnV0IHdpdGggaW52aXNpYmxlIG1vdXNlIGN1cnNvci48YnIgLz7CoDwvZGl2PjxkaXY+MDEu
MDYuMjAyMCwgMTc6MjcsICJGcmVkaWFubyBaaWdsaW8iICZsdDtmemlnbGlvQHJlZGhhdC5jb20m
Z3Q7OjwvZGl2PjxibG9ja3F1b3RlPjxibG9ja3F1b3RlPsKgSGkgYWxsLDxiciAvPsKgd2hlbiBq
dXN0IHF4bCBhZGFwdGVyIGlzIGF0dGFjaGVkIHRvIFZNIGFsbCB3b3JrcyB3ZWxsLiBCdXQgd2hl
biBOdmlkaWEgR1JJRDxiciAvPsKgaW5zdGFuY2UgaXMgYXR0YWNoZWQgYW5kIGl0cyBkcml2ZXJz
IGFyZSBydW5uaW5nLCBtb3VzZSBjdXJzb3IgaXMgbmV2ZXI8YnIgLz7CoHNob3duIG9uIGl0cyBk
aXNwbGF5IHdpbmRvdy4gU29tZXRpbWVzIGl0J3MganVzdCBpbnZpc2libGUgYnV0IGFjdGl2ZSBh
bmQ8YnIgLz7CoHJlYWN0aW5nIHRvIG1vdXNlIG1vdmVtZW50cywgY2xpY2tzIGFuZCB3aGVlbCBz
Y3JvbGxpbmcsIHNvbWV0aW1lcyBpdCdzPGJyIC8+wqB0b3RhbGx5IG1pc3NpbmcuIFRoaXMgYmVo
YXZpb3VyIGlzIGEgYml0IGRlcGVuZGVudCBvZiBpcyBOdmlkaWEgYWRhcHRlcjxiciAvPsKgYWxv
bmUgb3IgdG9nZXRoZXIgd2l0aCBxeGwuIEp1c3Qgc29tZXRpbWVzIG1vdXNlIGN1cnNvciBpcyB2
aXNpYmxlIG9uIHF4bDxiciAvPsKgZGlzcGxheSBidXQgaXQncyB2ZXJ5IHVuc3RhYmxlIGFuZCB0
b3RhbGx5IHVudXNhYmxlLiBTaW1pbGFyIGJlaGF2aW91ciBpczxiciAvPsKgdW5kZXIgbGludXgg
Vk0gdG9vLiBJcyBpdCBub3JtYWwgIndvbid0IGZpeCIgc3RhdGUsIG9yIGNhbiBJIHByb3ZpZGUg
c29tZTxiciAvPsKgYWRkaXRpb25hbCBpbmZvPyBXaW5kb3dzIGhhcyBsYXRlc3QgdmQtYWdlbnQg
YW5kIHNwaWNlLWFnZW50IGluc3RhbGxlZC48L2Jsb2NrcXVvdGU+PHA+PGJyIC8+SGksPGJyIC8+
wqDCoHJlY2VudGx5IHdlIGdvdCBzaW1pbGFyIHJlcG9ydHMuIENhbiB5b3UgdHJ5IHRvIHNlZSB3
aGF0J3MgaGFwcGVuIGlmPGJyIC8+eW91IGRpc2FibGUgdGhlIGFnZW50PzxiciAvPjxiciAvPkl0
IHNlZW1zIHRoYXQgaW4gdGhlc2UgY29uZGl0aW9ucyB0aGUgYWdlbnQgaXMgbm90IGFibGUgdG8g
aGFuZGxlIHRoZSBtb3VzZTxiciAvPnNvIG1vdXNlIGV2ZW50cyBhcmUgImxvc3QiLjxiciAvPjxi
ciAvPkFub3RoZXIgdGVzdCB3b3VsZCB5b3UgY291bGQgZG8gaXMgdG8gdXNlIHRoZSAic3BpY3ki
IHV0aWxpdHkuIFRoaXMgdXRpbGl0eTxiciAvPmhhcyBhbiBvcHRpb24gdG8gc3dpdGNoIG1hbnVh
bGx5IHRoZSBtb3VzZSBtb2RlIChzZXJ2ZXIvY2xpZW50KS4gSXQgd291bGQgYmU8YnIgLz5oZWxw
ZnVsIHRvIHVuZGVyc3RhbmQgZGlmZmVyZW50IGJlaGF2aW91ciB1c2luZyB0aGUgMiBtb2Rlcy48
YnIgLz48YnIgLz5GcmVkaWFubzxiciAvPsKgPC9wPjwvYmxvY2txdW90ZT4=

--===============0801968016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0801968016==--
