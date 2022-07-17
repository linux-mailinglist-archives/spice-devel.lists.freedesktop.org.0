Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5D9577CE9
	for <lists+spice-devel@lfdr.de>; Mon, 18 Jul 2022 09:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D4410F20E;
	Mon, 18 Jul 2022 07:56:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 326 seconds by postgrey-1.36 at gabe;
 Sun, 17 Jul 2022 18:21:07 UTC
Received: from chwww1.confidesk.com (chwww1.confidesk.com [5.148.173.215])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341FA91AAC
 for <spice-devel@lists.freedesktop.org>; Sun, 17 Jul 2022 18:21:07 +0000 (UTC)
Received: by chwww1.confidesk.com (Postfix, from userid 33)
 id BBFC030B86B74; Sun, 17 Jul 2022 20:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=confidesk.com;
 s=confidesk; t=1658081738;
 bh=2mJsWNn5gcjJCcokKeZcmA2ji68FCsB40BQ6zS4iQjQ=;
 h=To:Subject:From:Reply-To:Date:From;
 b=Tavq2M1DVN6FKRnvJSSBuCEJ5VPdQgo+9T3XSFNmc6P4y09OO4BETznFtZv1yYe1C
 z6RtqsE+lFyTjvWtBzvazROBypBxyXIRPScZmadDh73R9N3BARLfBZblxwtI7GqHje
 z/wBrPjO1RTiOUgrzf9Hut9zcHBH+IZHwFNihCSxEsseX+LCVVhJFNrk01C+AawY+3
 tfEbsAy5ca5Vs+FV2YodWMdcqWLBu2txMdHuUWaTsfu+3wv6mwfI6BqpA78Rtf9beL
 85Wdrz1eC1dX6dC5kwgFzjn2l8KzW0Pbesamja4/yVLlwKqPC8ExjlbWejznv+xaQ/
 nl1VQ9jzyCKgQ==
To: spice-devel@lists.freedesktop.org
X-PHP-Originating-Script: 33:Sendmail.php
From: bob cantor <bobc@confidesk.com>
Date: Sun, 17 Jul 2022 18:15:38 +0000
Content-Type: multipart/alternative;
 boundary="=_547162743074b226b1e4f743e261add1"
MIME-Version: 1.0
Message-Id: <20220717181538.BBFC030B86B74@chwww1.confidesk.com>
X-Mailman-Approved-At: Mon, 18 Jul 2022 07:56:01 +0000
Subject: [Spice-devel] connect to xspice via a unix-socket
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
Reply-To: bobc@confidesk.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--=_547162743074b226b1e4f743e261add1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

ICAgICAgICBJcyBpdCBwb3NzaWJsZSB0byBjb25uZWN0IHRvIHhzcGljZSB2aWEgYSB1bml4
LXNvY2tldCByYXRoZXIgdGhhbiBhIHRjcC1wb3J0P8KgIChJIHdvdWxkIGxpa2UgdG8gY29u
bmVjdCB0byB4c3BpY2UgcnVubmluZyBpbiBhIExYQyBjb210YWluZXIuwqAgVGhlIGNvbnRh
aW5lciBhbmQgaG9zdCBhcmUgb24gdGhlIHNhbWUgICAgIG1hY2hpbmUsIGJ1dCB0aGVyZSBp
cyBubyBuZXR3b3JrIGNvbm5lY3Rpb24gYmV0d2VlbiB0aGVtKS4gICAgCgotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KVGhpcyBtYWlsIHdhcyBzZW50IGJ5
IENvbmZpZGVzayBzZWN1cmUgbWFpbCBzZXJ2aWNlLiBDaGVjayBpdCBvbiBodHRwczovL3d3
dy5jb25maWRlc2suY29t

--=_547162743074b226b1e4f743e261add1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

CiAgPHA+CiAgICBJcyBpdCBwb3NzaWJsZSB0byBjb25uZWN0IHRvIHhzcGljZSB2aWEgYSB1
bml4LXNvY2tldCByYXRoZXIgdGhhbiBhIHRjcC1wb3J0P8KgIChJIHdvdWxkIGxpa2UgdG8g
Y29ubmVjdCB0byB4c3BpY2UgcnVubmluZyBpbiBhIExYQyBjb210YWluZXIuwqAgVGhlIGNv
bnRhaW5lciBhbmQgaG9zdCBhcmUgb24gdGhlIHNhbWUKICAgIG1hY2hpbmUsIGJ1dCB0aGVy
ZSBpcyBubyBuZXR3b3JrIGNvbm5lY3Rpb24gYmV0d2VlbiB0aGVtKS4KICA8L3A+Cjxicj48
YnI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPlRoaXMg
bWFpbCB3YXMgc2VudCBieSBDb25maWRlc2sgc2VjdXJlIG1haWwgc2VydmljZS4gQ2hlY2sg
aXQgb24gPGEgaHJlZj0naHR0cHM6Ly93d3cuY29uZmlkZXNrLmNvbSc+aHR0cHM6Ly93d3cu
Y29uZmlkZXNrLmNvbTwvYT4=

--=_547162743074b226b1e4f743e261add1--
