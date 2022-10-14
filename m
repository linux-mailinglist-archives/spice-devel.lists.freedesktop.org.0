Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 981575FEF69
	for <lists+spice-devel@lfdr.de>; Fri, 14 Oct 2022 15:58:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D98810EAEA;
	Fri, 14 Oct 2022 13:57:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 902 seconds by postgrey-1.36 at gabe;
 Fri, 14 Oct 2022 12:55:56 UTC
Received: from smtp.cloos.de (smtp.cloos.de [193.158.81.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D87BB10E37E
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Oct 2022 12:55:56 +0000 (UTC)
Received: from smtp.cloos.de (127.0.0.1) id h95e5m0171sr for
 <spice-devel@lists.freedesktop.org>;
 Fri, 14 Oct 2022 14:40:51 +0200 (envelope-from <Dirk.Eibach@cloos.de>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cloos.de;
 s=sonicwall; i=@cloos.de; h=Received:Received:Received:From:To:
 Subject:Thread-Topic:Thread-Index:Date:Message-ID:
 Accept-Language:Content-Language:Content-Type:
 Content-Transfer-Encoding:MIME-Version; bh=p4sDaGzckpb6y1noPIo1L
 XBfHlZokG6MH4CE69K8BsA=; b=CxW4O+Q5DE+S+ScGAVJ/fu4LGRugvnPsFZuSE
 reptNKsNcEOmJ6i9ZLQeZVvGX9xGw3x1YJqEfQeKlzdmYxme1Jy7YPJKTFBKNyG5
 ckeT6ssGz4bCpg0XcOgrIStfKaaPx5deAzJIbs7hs1iPKN4l2ZX0UmyHzv/X+BBg
 Wiqhus=
Received: from mail.cloos.locl ([172.20.10.10])
 by smtp.cloos.de ([192.168.150.74]) (SonicWall 10.0.19.7433)
 with ESMTPS (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256/256)
 id o202210141240510117231-3; Fri, 14 Oct 2022 14:40:51 +0200
Received: from MAIL.cloos.locl (172.20.10.10) by MAIL.cloos.locl
 (172.20.10.10) with Microsoft SMTP Server (TLS) id 15.0.1497.36; Fri, 14 Oct
 2022 14:40:50 +0200
Received: from MAIL.cloos.locl ([fe80::cd62:2a6f:104d:e2c4]) by
 MAIL.cloos.locl ([fe80::cd62:2a6f:104d:e2c4%12]) with mapi id 15.00.1497.036; 
 Fri, 14 Oct 2022 14:40:50 +0200
From: "Eibach, Dirk" <Dirk.Eibach@cloos.de>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Thread-Topic: Running without qemu
Thread-Index: AdjfyUtjrUvkFItiQ4yZMit6MNO77Q==
Date: Fri, 14 Oct 2022 12:40:50 +0000
Message-ID: <feda950daa6d43c9bd709fa86b6f9a67@MAIL.cloos.locl>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.20.28.11]
x-c2processedorg: b8ddcf49-ce5a-4362-acd3-ff6e5ff554f5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Mlf-DSE-Version: 6975
X-Mlf-Rules-Version: s20220902215611; ds20200715013501;
 di20220928175034; ri20160318003319; fs20220930174810
X-Mlf-Smartnet-Details: 202210141240510117231
X-Mlf-Smartnet-Version: 20210917223710
X-Mlf-Envelope-From: Dirk.Eibach@cloos.de
X-Mlf-Version: 10.0.19.7433
X-Mlf-License: BSV_C_AP_T__
X-Mlf-UniqueId: o202210141240510117231
X-Mailman-Approved-At: Fri, 14 Oct 2022 13:57:56 +0000
Subject: [Spice-devel] Running without qemu
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

SGksDQoNCkkgYW0gY29uc2lkZXJpbmcgc3BpY2UgYXMgYSBnZW5lcmljIHJlbW90ZSBkZXNrdG9w
LCBtZWFuaW5nIG9uIGEgcmVhbCBtYWNoaW5lLCBub3Qgb24gYSB2aXJ0dWFsIG9uZS4gSXQgaGFz
IHNvbWUgZmVhdHVyZXMgdGhhdCBJIGFtIG1pc3Npbmcgb24gVk5DIGFuZCBSRFAuIERvIHlvdSB0
aGluayB0aGF0IGlzIGEgdmlhYmxlIGFwcHJvYWNoPyBBcyBmYXIgYXMgSSBjYW4gc2VlIEkgbmVl
ZCBhIHJlcGxhY2VtZW50IGZvciB0aGUgcGFydCBpbiBRZW11IHRoYXQgaXMgc2V0dGluZyB1cCBs
aWJzcGljZS4gSXMgdGhlcmUgYWxyZWFkeSBhIHRvb2wgZm9yIHRoYXQ/IFdoZXJlIGNhbiBJIGZp
bmQgYSBkZXNjcmlwdGlvbiBvZiB0aGUgVkRJIEFQST8NCg0KTWl0IGZyZXVuZGxpY2hlbiBHcsO8
w59lbiAvIEJlc3QgUmVnYXJkcw0KRGlyayBFaWJhY2gNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KQ0FSTCBDTE9PUyBTQ0hXRUlTU1RFQ0hOSUsgR01CSA0KU29mdHdhcmVlbnR3
aWNrbGVyIC8gQVUtRVcNClNvZnR3YXJlZGV2ZWxvcGVyIC8gQVUtRVcNCkhhdXB0dmVyd2FsdHVu
Zy9IZWFkcXVhcnRlcnM6IENhcmwtQ2xvb3MtU3RyYXNzZSAxDQpaZW50cmFsbGFnZXIvQ2VudHJh
bCBXYXJlaG91c2U6IENhcmwtQ2xvb3MtU3RyYXNzZSA2DQozNTcwOCBIYWlnZXINCkdlcm1hbnkN
ClRlbDogICAgICArNDkgMjc3MyA4NS04ODgNCkUtTWFpbDogIG1haWx0bzpkaXJrLmVpYmFjaEBj
bG9vcy5kZQ0KSW50ZXJuZXQ6IGh0dHA6Ly93d3cuY2xvb3MuZGUvDQoNCg0KU2l0eiBkZXIgRmly
bWEvSGVhZHF1YXJ0ZXJzOiAzNTcwOCBIYWlnZXIsIEdlcm1hbnkNCkFtdHNnZXJpY2h0L0xvd2Vy
IGRpc3RyaWN0IGNvdXJ0OiBXZXR6bGFyIEhSIEIgMzA1Mg0KR2VzY2jDpGZ0c2bDvGhyZXIvTWFu
YWdlbWVudDogU3RlcGhhbiBQaXR0bmVyIChDRU8pLCBBbGV4YW5kZXIgVmVpZHQgKENGTykNCg0K
