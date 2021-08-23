Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3283F4F76
	for <lists+spice-devel@lfdr.de>; Mon, 23 Aug 2021 19:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E888689E9B;
	Mon, 23 Aug 2021 17:25:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward500o.mail.yandex.net (forward500o.mail.yandex.net
 [37.140.190.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619E889E9B
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Aug 2021 17:25:34 +0000 (UTC)
Received: from sas1-43b74f7725b7.qloud-c.yandex.net
 (sas1-43b74f7725b7.qloud-c.yandex.net
 [IPv6:2a02:6b8:c14:391a:0:640:43b7:4f77])
 by forward500o.mail.yandex.net (Yandex) with ESMTP id 66D47601DA;
 Mon, 23 Aug 2021 20:25:31 +0300 (MSK)
Received: from mail.yandex.ru (mail.yandex.ru [188.170.74.191])
 by sas1-43b74f7725b7.qloud-c.yandex.net (mxback/Yandex) with HTTP id
 QPhuFs0IfiE1-PUIieP7f; Mon, 23 Aug 2021 20:25:31 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1629739531; bh=ToNtK1ovwMRTVYkEXyFQ9ozMJYnPjRWxLvMp5UsVtsY=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=sdbHOkn+mXChnqVV0dM68oQIMB1+cUvSkuw0oGJj2Y1dhzjAHviFpSCSld35xKmhC
 ueTlpIaDazr3KXYzPZMTw8OqhDiHnUvZoFgB4R14KXOYVSQocZCsC1jIWtLeMBujsw
 YTGhDba7HJvJ8u70EnnfYbLfhbNVEsCeZqCD24ZQ=
Authentication-Results: sas1-43b74f7725b7.qloud-c.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by sas1-55829ddbd171.qloud-c.yandex.net with HTTP;
 Mon, 23 Aug 2021 20:25:30 +0300
From: "ole-krutov@yandex.ru" <ole-krutov@yandex.ru>
To: Victor Toso <victortoso@redhat.com>
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
In-Reply-To: <20210823153432.3nuxkasg7tr5zz23@tapioca>
References: <260041629725350@mail.yandex.ru>
 <20210823153432.3nuxkasg7tr5zz23@tapioca>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 23 Aug 2021 20:25:30 +0300
Message-Id: <10389951629739530@sas1-55829ddbd171.qloud-c.yandex.net>
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8
Subject: Re: [Spice-devel] No mouse with nvidia driver (spice-vdagent not
 working)
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

T2gsIHRoYW5rcyBhIGxvdCEgSSBzZWUgY3Vyc29yIG5vdyEgKHN3Y3Vyc29yIG9uLCBod2N1cnNv
ciBvZmYpPGRpdj48YnIgLz48L2Rpdj48ZGl2PkJ1dCBob3cgY2FuIGl0IGJlIGRyYXduIG9uIGNs
aWVudCBzaWRlPyBOb3cgaXQgaXMgZHJhd24gb24gdG9wIG9mIHNvbWUga2luZCBvZiBzcXVhcmUg
d2hpY2ggaGFzIHRvIGJlIHBhcnQgb2YgYW4gaW1hZ2UgYnV0IGlzICJsYXRlIiBpbiByZWxhdGlv
biBvZiBpbWFnZSBzdGF0ZS4gSXQgc2VlbXMgdGhhdCBpdCBhbGwgaXMgb24gc2VydmVyIHNpZGUu
IEJ1dCB0aGVyZSBpcyAiY2xpZW50IGN1cnNvciJvcHRpb24gc2V0Li4uPGJyIC8+PGJyIC8+PC9k
aXY+MTg6MzQsIDIzINCw0LLQs9GD0YHRgtCwIDIwMjEg0LMuLCBWaWN0b3IgVG9zbyAmbHQ7dmlj
dG9ydG9zb0ByZWRoYXQuY29tJmd0Ozo8YnIgLz48YmxvY2txdW90ZSBjbGFzcz0iMjEwZTdhODQ4
ZThmY2I0NXdtaS1xdW90ZSI+PHA+SGksPGJyIC8+PGJyIC8+T24gTW9uLCBBdWcgMjMsIDIwMjEg
YXQgMDU6MTQ6MDBQTSArMDMwMCwgPGEgaHJlZj0ibWFpbHRvOm9sZS1rcnV0b3ZAeWFuZGV4LnJ1
Ij5vbGUta3J1dG92QHlhbmRleC5ydTwvYT4gd3JvdGU6PGJyIC8+PC9wPjxibG9ja3F1b3RlIGNs
YXNzPSIyMTBlN2E4NDhlOGZjYjQ1d21pLXF1b3RlIj7CoC0gbnZpZGlhIHZHUFUgd2l0aCBwcm9w
cmlldGFyeSBkcml2ZXIgaXMgdGhlIG9ubHkgdmlkZW88YnIgLz7CoGFkYXB0ZXIuPGJyIC8+PC9i
bG9ja3F1b3RlPjxwPjxiciAvPlRoaXMgaXMgYSBrbm93IGlzc3VlLiBOVklESUEgZHJpdmVyIGRv
ZXMgbm90IHByb3ZpZGUgYSBndWVzdDxiciAvPmN1cnNvci4gWW91IGNhbiBwcm9iYWJseSB2ZXJp
ZnkgaXQgd2l0aCBWTkMgdG9vLjxiciAvPjxiciAvPlRoZSBwcm9wZXIgZml4IGlzIHRvIE5WSURJ
QSBpbXBsZW1lbnQgdGhpcyBmZWF0dXJlLCBvdGhlcndpc2UgYWxsPGJyIC8+d2UgaGF2ZSBpcyB3
b3JrYXJvdW5kcy48YnIgLz48YnIgLz5Zb3UgY2FuIHRyeSBydW5uaW5nIGEgc3BpY2UtZ3RrIGJh
c2VkIGNsaWVudCBsaWtlIHJlbW90ZS12aWV3ZXI8YnIgLz53aXRoIFNQSUNFX0RFQlVHX0NVUlNP
Uj0xIGFzIHRoYXQgbWlnaHQgZ2l2ZSB5b3Ugc29tZXRoaW5nPGJyIC8+cmVuZGVyZWQgaW4gdGhl
IGNsaWVudCBzaWRlLjxiciAvPjxiciAvPllvdSBjb3VsZCBhbHNvIHRyeSB0byBzZXQgIkhXQ3Vy
c29yIiAib2ZmIiBpbiB0aGUgeG9yZzxiciAvPmNvbmZpZ3VyYXRpb24gZmlsZS48YnIgLz48YnIg
Lz48L3A+PGJsb2NrcXVvdGUgY2xhc3M9IjIxMGU3YTg0OGU4ZmNiNDV3bWktcXVvdGUiPsKgLSBz
cGljZS12ZGFnZW50IHYuMC4yMCBhbmQgcWVtdS1ndWVzdC1hZ2VudCBhcmUgaW5zdGFsbGVkLjxi
ciAvPjwvYmxvY2txdW90ZT48cD48YnIgLz5Zb3Ugc2hvdWxkIHRyeSB2MC4yMSBhcyBJIHJlY2Fs
bCBwZW9wbGUgd2VyZSBkb2luZyB3b3JrIGFyb3VuZDxiciAvPnRlc3RpbmcgTlZESUEgYW5kIFdh
eWxhbmQgYmFzZWQgc3lzdGVtcywgYWx0aG91Z2ggSSBjYW4ndDxiciAvPnBpbnBvaW50IHNvbWV0
aGluZyB0aGF0IHdvdWxkIGZpeCB0aGUgbG9ncyBJIHNlZS48YnIgLz48YnIgLz5DaGVlcnMsPGJy
IC8+VmljdG9yPGJyIC8+PC9wPjwvYmxvY2txdW90ZT48YnIgLz48YnIgLz4tLSA8YnIgLz7QntGC
0L/RgNCw0LLQu9C10L3QviDQuNC3INC80L7QsdC40LvRjNC90L7Qs9C+INC/0YDQuNC70L7QttC1
0L3QuNGPINCv0L3QtNC10LrRgS7Qn9C+0YfRgtGL
