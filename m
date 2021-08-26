Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 140FD3F8C92
	for <lists+spice-devel@lfdr.de>; Thu, 26 Aug 2021 18:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC48F6E02E;
	Thu, 26 Aug 2021 16:58:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward500o.mail.yandex.net (forward500o.mail.yandex.net
 [37.140.190.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E366E02E
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Aug 2021 16:58:37 +0000 (UTC)
Received: from myt6-2da614b3f5d3.qloud-c.yandex.net
 (myt6-2da614b3f5d3.qloud-c.yandex.net
 [IPv6:2a02:6b8:c12:5f2e:0:640:2da6:14b3])
 by forward500o.mail.yandex.net (Yandex) with ESMTP id 9D2AE941D78
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Aug 2021 19:58:32 +0300 (MSK)
Received: from mail.yandex.ru (mail.yandex.ru [89.179.125.64])
 by myt6-2da614b3f5d3.qloud-c.yandex.net (mxback/Yandex) with HTTP id
 Vwjj713H58c1-wVHO4kOw; Thu, 26 Aug 2021 19:58:32 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1629997112; bh=0rmzoWd0/ED/TVCUzuT/aqb9puQgMkkfIOSdERjPzlE=;
 h=References:Date:Message-Id:Subject:In-Reply-To:To:From;
 b=FZMeVg8KA8o8lZWHh7nLnuqw8u7SL1aopBaHyTZlnZ4i5MXTlTbtbA8pbOeOFR+NX
 YkDTZxCH7Pf2N2XDCQTJVPucYsZFdkDfCF/mbiX26qJEvZtt8hpIfNijIdD8mvwYoY
 szH362ffzbMZL4VZcENdsl1l4Ickyf/OpQQou7eM=
Authentication-Results: myt6-2da614b3f5d3.qloud-c.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by myt4-52e7f804d1cd.qloud-c.yandex.net with HTTP;
 Thu, 26 Aug 2021 19:58:31 +0300
From: ole-krutov@yandex.ru
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
In-Reply-To: <205841629995244@mail.yandex.ru>
References: <205841629995244@mail.yandex.ru>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 26 Aug 2021 19:58:31 +0300
Message-Id: <204851629996705@mail.yandex.ru>
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8
Subject: Re: [Spice-devel] How to run spice-vdagentd 0.21 properly?
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PGRpdj48ZGl2PkZvdW5kIHJlY29yZHMgd2l0aCBlcnJvcnMgaW4gc3lzbG9nOiBtYW55IHNpbWls
YXIgbWVzc2FnZXM6PC9kaXY+PGRpdj7CoDwvZGl2PjxkaXY+c3BpY2UtdmRhZ2VudGRbMjEyNF06
IEZhdGFsIGNvdWxkIG5vdCBjcmVhdGUgdGhlIHNlcnZlciBzb2NrZXQgL3J1bi9zcGljZS12ZGFn
ZW50ZC9zcGljZS12ZGFnZW50LXNvY2s6IEVycm9yIGJpbmRpbmcgdG8gYWRkcmVzczogQWRkcmVz
cyBhbHJlYWR5IGluIHVzZTwvZGl2PjxkaXY+wqA8L2Rpdj48ZGl2PlN5c3RlbWQgdW5pdCBmaWxl
OiAoSSd2ZSBhZGRlZCBFeGVjU3RhcnRQcmUgYmVjYXVzZSByZW1vdmFsIG9mIC9ydW4vc3BpY2Ut
dmRhZ2VudGQvc3BpY2UtdmRhZ2VudGQtc29jayBoZWxwZWQgbWUgb25lIHRpbWUgdG8gcnVuIHZk
YWdlbnRkIG1hbnVhbGx5IC0tIHNhbWUgcmVzdWx0ICJhZGRyZXNzIGFscmVhZHkgaW4gdXNlIiDC
oHdpdGggb3Igd2l0aG91dCB0aGlzIGxpbmUpPC9kaXY+PGRpdj7CoDwvZGl2PjwvZGl2PjxkaXY+
PGRpdj48ZGl2PiMgL2V0Yy9zeXN0ZW1kL3N5c3RlbS9zcGljZS12ZGFnZW50ZC5zZXJ2aWNlPC9k
aXY+PGRpdj5bVW5pdF08L2Rpdj48ZGl2PkRlc2NyaXB0aW9uPUFnZW50IGRhZW1vbiBmb3IgU3Bp
Y2UgZ3Vlc3RzPC9kaXY+PGRpdj5BZnRlcj1kYnVzLnRhcmdldDwvZGl2PjxkaXY+UmVxdWlyZXM9
c3BpY2UtdmRhZ2VudGQuc29ja2V0PC9kaXY+PGRpdj7CoDwvZGl2PjxkaXY+W1NlcnZpY2VdPC9k
aXY+PGRpdj5UeXBlPWZvcmtpbmc8L2Rpdj48ZGl2PkV4ZWNTdGFydFByZT1ybSAtZiAvcnVuL3Nw
aWNlLXZkYWdlbnRkL3NwaWNlLXZkYWdlbnRkLXNvY2s8L2Rpdj48ZGl2PkVudmlyb25tZW50Rmls
ZT0tL2V0Yy9zeXNjb25maWcvc3BpY2UtdmRhZ2VudGQ8L2Rpdj48ZGl2PkV4ZWNTdGFydD0vdXNy
L3NiaW4vc3BpY2UtdmRhZ2VudGQgJFNQSUNFX1ZEQUdFTlREX0VYVFJBX0FSR1M8L2Rpdj48ZGl2
PlBJREZpbGU9L3J1bi9zcGljZS12ZGFnZW50ZC9zcGljZS12ZGFnZW50ZC5waWQ8L2Rpdj48ZGl2
PlByaXZhdGVUbXA9dHJ1ZTwvZGl2PjxkaXY+UmVzdGFydD1vbi1mYWlsdXJlPC9kaXY+PGRpdj7C
oDwvZGl2PjxkaXY+W0luc3RhbGxdPC9kaXY+PGRpdj5BbHNvPXNwaWNlLXZkYWdlbnRkLnNvY2tl
dDwvZGl2PjxkaXY+wqA8L2Rpdj48ZGl2PsKgPC9kaXY+PC9kaXY+PC9kaXY+PGRpdj4yNi4wOC4y
MDIxLCAxOTo0MCwgIm9sZS1rcnV0b3ZAeWFuZGV4LnJ1IiAmbHQ7b2xlLWtydXRvdkB5YW5kZXgu
cnUmZ3Q7OjwvZGl2PjxibG9ja3F1b3RlPjxkaXY+SSd2ZSBidWlsdCBzcGljZS12ZGFnZW50IDAu
MjEgYW5kIGhhZCBqdXN0IHJlcGxhY2VkIGV4ZWN1dGFibGVzIG9mIHZkYWdlbnQgMC4yMC4gQnV0
IGFmdGVyIHJlYm9vdCBzcGljZS12ZGFnZW50ZC4qIGRvIG5vdCBzdGFydC4gSGFzIHNvbWV0aGlu
ZyBjaGFuZ2VkIGluIHN0YXJ0dXAgbG9naWMgc2luY2UgMC4yMD8gSSd2ZSBjb21wYXJlZCBjb25m
aWdzIGJ1dCBoYWQgbm90IGZpbmQgYW55IGRpZmZlcmVuY2VzLi4uPC9kaXY+PC9ibG9ja3F1b3Rl
Pg==
