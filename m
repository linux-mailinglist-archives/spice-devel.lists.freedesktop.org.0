Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A449D1C6774
	for <lists+spice-devel@lfdr.de>; Wed,  6 May 2020 07:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D8689D46;
	Wed,  6 May 2020 05:28:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward103p.mail.yandex.net (forward103p.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:106])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B91B6E252
 for <spice-devel@lists.freedesktop.org>; Tue,  5 May 2020 23:39:02 +0000 (UTC)
Received: from mxback22j.mail.yandex.net (mxback22j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::222])
 by forward103p.mail.yandex.net (Yandex) with ESMTP id 9924918C0DCB
 for <spice-devel@lists.freedesktop.org>; Wed,  6 May 2020 02:38:58 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback22j.mail.yandex.net (mxback/Yandex) with ESMTP id orlxNPrrhn-cvmG5tNU;
 Wed, 06 May 2020 02:38:58 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1588721938; bh=FU8QbUEDtEF8D7kPESwyDgYwp91C29VTeOmIOBTlBAM=;
 h=Message-Id:Date:Subject:To:From;
 b=eK3l8SXMRvXPzJLgfo/9JcK/sCzsMaD+6ZatE/rugmhk8DvVkoLZRO7eAsFIBY6ss
 4MFHPIPaiBHHhDF322scUV6TealA7pKuDYbtUptBzCpeADsXoXFOdZxr829sMpASR2
 D0GKQ2gRHTgU1YlAliSwE4/2gCJczh/fTNdsKvII=
Authentication-Results: mxback22j.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by sas2-ace8bd7a4730.qloud-c.yandex.net with HTTP;
 Wed, 06 May 2020 02:38:57 +0300
From: ole-krutov@yandex.ru
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Wed, 06 May 2020 02:38:57 +0300
Message-Id: <252951588721872@mail.yandex.ru>
X-Mailman-Approved-At: Wed, 06 May 2020 05:28:54 +0000
Subject: [Spice-devel] spice-streaming-agent build failure
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
Content-Type: multipart/mixed; boundary="===============1577596949=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1577596949==
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

PGRpdj48ZGl2PkluY2x1ZGluZyBzdHJpbmcuaCBzb2x2ZXMgYSBwcm9ibGVtLjwvZGl2PjxkaXY+
wqA8L2Rpdj48ZGl2Pm5pbmphIC1DIGJ1aWxkPC9kaXY+PGRpdj5uaW5qYTogRW50ZXJpbmcgZGly
ZWN0b3J5IGBidWlsZCc8L2Rpdj48ZGl2PlsxMy81Nl0gR2VuZXJhdGluZyBjbGllbnRfZGVtYXJz
aGFsbGVycyB3aXRoIGEgY3VzdG9tIGNvbW1hbmQ8L2Rpdj48ZGl2Pldyb3RlIHN1YnByb2plY3Rz
L3NwaWNlLWNvbW1vbi9jb21tb24vZ2VuZXJhdGVkX21lc3NhZ2VzLmg8L2Rpdj48ZGl2Pldyb3Rl
IHN1YnByb2plY3RzL3NwaWNlLWNvbW1vbi9jb21tb24vZ2VuZXJhdGVkX2NsaWVudF9kZW1hcnNo
YWxsZXJzLmM8L2Rpdj48ZGl2PlsxNC81Nl0gQ29tcGlsaW5nIEMgb2JqZWN0ICdzdWJwcm9qZWN0
cy9zcGljZS1jb21tb24vdGVzdHMvNzQ5MmViOEBAdGVzdF91dGlsc0BleGUvdGVzdC11dGlscy5j
Lm8nPC9kaXY+PGRpdj5GQUlMRUQ6IHN1YnByb2plY3RzL3NwaWNlLWNvbW1vbi90ZXN0cy83NDky
ZWI4QEB0ZXN0X3V0aWxzQGV4ZS90ZXN0LXV0aWxzLmMubzwvZGl2PjxkaXY+Y2NhY2hlIGNjIC1J
c3VicHJvamVjdHMvc3BpY2UtY29tbW9uL3Rlc3RzLzc0OTJlYjhAQHRlc3RfdXRpbHNAZXhlIC1J
c3VicHJvamVjdHMvc3BpY2UtY29tbW9uL3Rlc3RzIC1JLi4vc3VicHJvamVjdHMvc3BpY2UtY29t
bW9uL3Rlc3RzIC1Jc3VicHJvamVjdHMvc3BpY2UtY29tbW9uIC1JLi4vc3VicHJvamVjdHMvc3Bp
Y2UtY29tbW9uIC1JL3Vzci9pbmNsdWRlL2dsaWItMi4wIC1JL3Vzci9saWIveDg2XzY0LWxpbnV4
LWdudS9nbGliLTIuMC9pbmNsdWRlIC1JL3Vzci9pbmNsdWRlL3NwaWNlLTEgLUkvdXNyL2luY2x1
ZGUvcGl4bWFuLTEgLWZkaWFnbm9zdGljcy1jb2xvcj1hbHdheXMgLXBpcGUgLURfRklMRV9PRkZT
RVRfQklUUz02NCAtV2FsbCAtV2ludmFsaWQtcGNoIC1XZXh0cmEgLXN0ZD1nbnU5OSAtTzIgLWcg
Jy1ER19MT0dfRE9NQUlOPSJTcGljZSInIC1XZXJyb3IgLVduby11bnVzZWQtcGFyYW1ldGVyIC1E
R0xJQl9WRVJTSU9OX01JTl9SRVFVSVJFRD1HTElCX1ZFUlNJT05fMl8zOCAtREdMSUJfVkVSU0lP
Tl9NQVhfQUxMT1dFRD1HTElCX1ZFUlNJT05fMl8zOCAtcHRocmVhZCAtTUQgLU1RICdzdWJwcm9q
ZWN0cy9zcGljZS1jb21tb24vdGVzdHMvNzQ5MmViOEBAdGVzdF91dGlsc0BleGUvdGVzdC11dGls
cy5jLm8nIC1NRiAnc3VicHJvamVjdHMvc3BpY2UtY29tbW9uL3Rlc3RzLzc0OTJlYjhAQHRlc3Rf
dXRpbHNAZXhlL3Rlc3QtdXRpbHMuYy5vLmQnIC1vICdzdWJwcm9qZWN0cy9zcGljZS1jb21tb24v
dGVzdHMvNzQ5MmViOEBAdGVzdF91dGlsc0BleGUvdGVzdC11dGlscy5jLm8nIC1jIC4uL3N1YnBy
b2plY3RzL3NwaWNlLWNvbW1vbi90ZXN0cy90ZXN0LXV0aWxzLmM8L2Rpdj48ZGl2Pi4uL3N1YnBy
b2plY3RzL3NwaWNlLWNvbW1vbi90ZXN0cy90ZXN0LXV0aWxzLmM6IEluIGZ1bmN0aW9uIOKAmG1h
aW7igJk6PC9kaXY+PGRpdj4uLi9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24vdGVzdHMvdGVzdC11
dGlscy5jOjI5OjU6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJht
ZW1zZXTigJkgWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dPC9kaXY+PGRp
dj5tZW1zZXQoYnl0ZXMsIDAsIHNpemVvZihieXRlcykpOzwvZGl2PjxkaXY+Xn5+fn5+PC9kaXY+
PGRpdj4uLi9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24vdGVzdHMvdGVzdC11dGlscy5jOjI5OjU6
IGVycm9yOiBpbmNvbXBhdGlibGUgaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgYnVpbHQtaW4gZnVu
Y3Rpb24g4oCYbWVtc2V04oCZIFstV2Vycm9yXTwvZGl2PjxkaXY+Li4vc3VicHJvamVjdHMvc3Bp
Y2UtY29tbW9uL3Rlc3RzL3Rlc3QtdXRpbHMuYzoyOTo1OiBub3RlOiBpbmNsdWRlIOKAmCZsdDtz
dHJpbmcuaCZndDvigJkgb3IgcHJvdmlkZSBhIGRlY2xhcmF0aW9uIG9mIOKAmG1lbXNldOKAmTwv
ZGl2PjxkaXY+Y2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnM8L2Rpdj48
ZGl2PlsxNy81Nl0gR2VuZXJhdGluZyBjbGllbnRfbWFyc2hhbGxlcnMgd2l0aCBhIGN1c3RvbSBj
b21tYW5kPC9kaXY+PGRpdj5Xcm90ZSBzdWJwcm9qZWN0cy9zcGljZS1jb21tb24vY29tbW9uL2dl
bmVyYXRlZF9jbGllbnRfbWFyc2hhbGxlcnMuYzwvZGl2PjxkaXY+V3JvdGUgc3VicHJvamVjdHMv
c3BpY2UtY29tbW9uL2NvbW1vbi9nZW5lcmF0ZWRfY2xpZW50X21hcnNoYWxsZXJzLmg8L2Rpdj48
ZGl2PlsxOS81Nl0gQ29tcGlsaW5nIEMgb2JqZWN0ICdzdWJwcm9qZWN0cy9zcGljZS1jb21tb24v
Y29tbW9uLzRlZDQwYWZAQHNwaWNlLWNvbW1vbkBzdGEvcm9wMy5jLm8nPC9kaXY+PGRpdj5uaW5q
YTogYnVpbGQgc3RvcHBlZDogc3ViY29tbWFuZCBmYWlsZWQuPC9kaXY+PGRpdj7CoDwvZGl2Pjxk
aXY+wqA8L2Rpdj48L2Rpdj4=

--===============1577596949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1577596949==--
