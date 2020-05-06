Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E361C6902
	for <lists+spice-devel@lfdr.de>; Wed,  6 May 2020 08:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E0989CB9;
	Wed,  6 May 2020 06:35:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18C6989CB9
 for <spice-devel@lists.freedesktop.org>; Wed,  6 May 2020 06:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588746935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3/mbmK4G2ISZRk3+CR1dLJL5p5RsGQDWXaTr3bHelrI=;
 b=iRhNCu0QdaS91CoFCbiJEbOkRirblKVJld/kB492ta8bYj/VoK7IxM8Fzj26/BovCli/Sk
 qmDJQZM9ye2G9+POiJV8iccQ6z/W2xgl7g9jwlho4Je08r+9IyCS/bHHETy3VTNoNDlncQ
 nqPGxUxshivdLCD5eaZ5eLmy8Rr65yM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-_Ntr0ERrNRWbR0GVhNIsFA-1; Wed, 06 May 2020 02:35:32 -0400
X-MC-Unique: _Ntr0ERrNRWbR0GVhNIsFA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0EA208014D5;
 Wed,  6 May 2020 06:35:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D14E45C1D4;
 Wed,  6 May 2020 06:35:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C575B18095FF;
 Wed,  6 May 2020 06:35:30 +0000 (UTC)
Date: Wed, 6 May 2020 02:35:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: ole-krutov@yandex.ru
Message-ID: <865689408.25966708.1588746930430.JavaMail.zimbra@redhat.com>
In-Reply-To: <252951588721872@mail.yandex.ru>
References: <252951588721872@mail.yandex.ru>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.13]
Thread-Topic: spice-streaming-agent build failure
Thread-Index: bqg9fqFM850AO294RF9ciCtkYwYWtA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice-streaming-agent build failure
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiBJbmNsdWRpbmcgc3RyaW5nLmggc29sdmVzIGEgcHJvYmxlbS4KPiBuaW5qYSAtQyBidWlsZAo+
IG5pbmphOiBFbnRlcmluZyBkaXJlY3RvcnkgYGJ1aWxkJwo+IFsxMy81Nl0gR2VuZXJhdGluZyBj
bGllbnRfZGVtYXJzaGFsbGVycyB3aXRoIGEgY3VzdG9tIGNvbW1hbmQKPiBXcm90ZSBzdWJwcm9q
ZWN0cy9zcGljZS1jb21tb24vY29tbW9uL2dlbmVyYXRlZF9tZXNzYWdlcy5oCj4gV3JvdGUgc3Vi
cHJvamVjdHMvc3BpY2UtY29tbW9uL2NvbW1vbi9nZW5lcmF0ZWRfY2xpZW50X2RlbWFyc2hhbGxl
cnMuYwo+IFsxNC81Nl0gQ29tcGlsaW5nIEMgb2JqZWN0Cj4gJ3N1YnByb2plY3RzL3NwaWNlLWNv
bW1vbi90ZXN0cy83NDkyZWI4QEB0ZXN0X3V0aWxzQGV4ZS90ZXN0LXV0aWxzLmMubycKPiBGQUlM
RUQ6IHN1YnByb2plY3RzL3NwaWNlLWNvbW1vbi90ZXN0cy83NDkyZWI4QEB0ZXN0X3V0aWxzQGV4
ZS90ZXN0LXV0aWxzLmMubwo+IGNjYWNoZSBjYyAtSXN1YnByb2plY3RzL3NwaWNlLWNvbW1vbi90
ZXN0cy83NDkyZWI4QEB0ZXN0X3V0aWxzQGV4ZQo+IC1Jc3VicHJvamVjdHMvc3BpY2UtY29tbW9u
L3Rlc3RzIC1JLi4vc3VicHJvamVjdHMvc3BpY2UtY29tbW9uL3Rlc3RzCj4gLUlzdWJwcm9qZWN0
cy9zcGljZS1jb21tb24gLUkuLi9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24KPiAtSS91c3IvaW5j
bHVkZS9nbGliLTIuMCAtSS91c3IvbGliL3g4Nl82NC1saW51eC1nbnUvZ2xpYi0yLjAvaW5jbHVk
ZQo+IC1JL3Vzci9pbmNsdWRlL3NwaWNlLTEgLUkvdXNyL2luY2x1ZGUvcGl4bWFuLTEgLWZkaWFn
bm9zdGljcy1jb2xvcj1hbHdheXMKPiAtcGlwZSAtRF9GSUxFX09GRlNFVF9CSVRTPTY0IC1XYWxs
IC1XaW52YWxpZC1wY2ggLVdleHRyYSAtc3RkPWdudTk5IC1PMiAtZwo+ICctREdfTE9HX0RPTUFJ
Tj0iU3BpY2UiJyAtV2Vycm9yIC1Xbm8tdW51c2VkLXBhcmFtZXRlcgo+IC1ER0xJQl9WRVJTSU9O
X01JTl9SRVFVSVJFRD1HTElCX1ZFUlNJT05fMl8zOAo+IC1ER0xJQl9WRVJTSU9OX01BWF9BTExP
V0VEPUdMSUJfVkVSU0lPTl8yXzM4IC1wdGhyZWFkIC1NRCAtTVEKPiAnc3VicHJvamVjdHMvc3Bp
Y2UtY29tbW9uL3Rlc3RzLzc0OTJlYjhAQHRlc3RfdXRpbHNAZXhlL3Rlc3QtdXRpbHMuYy5vJyAt
TUYKPiAnc3VicHJvamVjdHMvc3BpY2UtY29tbW9uL3Rlc3RzLzc0OTJlYjhAQHRlc3RfdXRpbHNA
ZXhlL3Rlc3QtdXRpbHMuYy5vLmQnIC1vCj4gJ3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbi90ZXN0
cy83NDkyZWI4QEB0ZXN0X3V0aWxzQGV4ZS90ZXN0LXV0aWxzLmMubycgLWMKPiAuLi9zdWJwcm9q
ZWN0cy9zcGljZS1jb21tb24vdGVzdHMvdGVzdC11dGlscy5jCj4gLi4vc3VicHJvamVjdHMvc3Bp
Y2UtY29tbW9uL3Rlc3RzL3Rlc3QtdXRpbHMuYzogSW4gZnVuY3Rpb24g4oCYbWFpbuKAmToKPiAu
Li9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24vdGVzdHMvdGVzdC11dGlscy5jOjI5OjU6IGVycm9y
OiBpbXBsaWNpdAo+IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmG1lbXNldOKAmSBbLVdlcnJv
cj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiBtZW1zZXQoYnl0ZXMsIDAsIHNpemVv
ZihieXRlcykpOwo+IF5+fn5+fgo+IC4uL3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbi90ZXN0cy90
ZXN0LXV0aWxzLmM6Mjk6NTogZXJyb3I6IGluY29tcGF0aWJsZQo+IGltcGxpY2l0IGRlY2xhcmF0
aW9uIG9mIGJ1aWx0LWluIGZ1bmN0aW9uIOKAmG1lbXNldOKAmSBbLVdlcnJvcl0KPiAuLi9zdWJw
cm9qZWN0cy9zcGljZS1jb21tb24vdGVzdHMvdGVzdC11dGlscy5jOjI5OjU6IG5vdGU6IGluY2x1
ZGUKPiDigJg8c3RyaW5nLmg+4oCZIG9yIHByb3ZpZGUgYSBkZWNsYXJhdGlvbiBvZiDigJhtZW1z
ZXTigJkKPiBjYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwo+IFsxNy81
Nl0gR2VuZXJhdGluZyBjbGllbnRfbWFyc2hhbGxlcnMgd2l0aCBhIGN1c3RvbSBjb21tYW5kCj4g
V3JvdGUgc3VicHJvamVjdHMvc3BpY2UtY29tbW9uL2NvbW1vbi9nZW5lcmF0ZWRfY2xpZW50X21h
cnNoYWxsZXJzLmMKPiBXcm90ZSBzdWJwcm9qZWN0cy9zcGljZS1jb21tb24vY29tbW9uL2dlbmVy
YXRlZF9jbGllbnRfbWFyc2hhbGxlcnMuaAo+IFsxOS81Nl0gQ29tcGlsaW5nIEMgb2JqZWN0Cj4g
J3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbi9jb21tb24vNGVkNDBhZkBAc3BpY2UtY29tbW9uQHN0
YS9yb3AzLmMubycKPiBuaW5qYTogYnVpbGQgc3RvcHBlZDogc3ViY29tbWFuZCBmYWlsZWQuCgpU
aGFua3MsCgpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uvc3BpY2UtY29tbW9u
Ly0vbWVyZ2VfcmVxdWVzdHMvMzMKCkZyZWRpYW5vCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
