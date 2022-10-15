Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9195FF99B
	for <lists+spice-devel@lfdr.de>; Sat, 15 Oct 2022 12:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3FF10E138;
	Sat, 15 Oct 2022 10:19:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from smtp.cloos.de (smtp.cloos.de [193.158.81.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C9110E138
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Oct 2022 10:19:27 +0000 (UTC)
Received: from smtp.cloos.de (127.0.0.1) id h9a4iq0171s5 for
 <spice-devel@lists.freedesktop.org>;
 Sat, 15 Oct 2022 12:19:25 +0200 (envelope-from <Dirk.Eibach@cloos.de>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cloos.de;
 s=sonicwall; i=@cloos.de; h=Received:Received:Received:From:To:
 CC:Subject:Thread-Topic:Thread-Index:Date:Message-ID:References:
 In-Reply-To:Accept-Language:Content-Language:Content-Type:
 Content-Transfer-Encoding:MIME-Version; bh=9wMkj10y3lHLwShFunEFK
 EtFtgUcA3g2isbT4NtCg3o=; b=tOTUjmTPZ2TOQN1oVjBhH5ClTx4vuuxRGlrKE
 RCQDczQm6IO94mF5GuWpJPQ32DZ3wv6z+UfBkuoSsIxNcvO7pFzXznA5o2MXRwDr
 2C6EpUn7l7IEOljWZuXxSBaFPs7TGLALf9x8qrS0rayDl3/vm6wVLMy9PrnNvTzk
 wy/65g=
Received: from mail.cloos.locl ([172.20.10.10])
 by smtp.cloos.de ([192.168.150.74]) (SonicWall 10.0.19.7433)
 with ESMTPS (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256/256)
 id o202210151019000122343-3; Sat, 15 Oct 2022 12:19:00 +0200
Received: from MAIL.cloos.locl (172.20.10.10) by MAIL.cloos.locl
 (172.20.10.10) with Microsoft SMTP Server (TLS) id 15.0.1497.36; Sat, 15 Oct
 2022 12:18:59 +0200
Received: from MAIL.cloos.locl ([fe80::cd62:2a6f:104d:e2c4]) by
 MAIL.cloos.locl ([fe80::cd62:2a6f:104d:e2c4%12]) with mapi id 15.00.1497.036; 
 Sat, 15 Oct 2022 12:18:59 +0200
From: "Eibach, Dirk" <Dirk.Eibach@cloos.de>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [Spice-devel] Running without qemu
Thread-Index: AdjfyUtjrUvkFItiQ4yZMit6MNO77QAngAUAAAWvjXA=
Date: Sat, 15 Oct 2022 10:18:59 +0000
Message-ID: <0290ddf130a74dbf84b3b9b41901bf8b@MAIL.cloos.locl>
References: <feda950daa6d43c9bd709fa86b6f9a67@MAIL.cloos.locl>
 <CAHt6W4caeUasBsXfAwkhX7oohQum9pV5zzJn+PmkXmdZYam2qw@mail.gmail.com>
In-Reply-To: <CAHt6W4caeUasBsXfAwkhX7oohQum9pV5zzJn+PmkXmdZYam2qw@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.20.28.6]
x-c2processedorg: b8ddcf49-ce5a-4362-acd3-ff6e5ff554f5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Mlf-DSE-Version: 6976
X-Mlf-Rules-Version: s20220902215611; ds20200715013501;
 di20220928175034; ri20160318003319; fs20220930174810
X-Mlf-Smartnet-Details: 202210151019000122343
X-Mlf-Smartnet-Version: 20210917223710
X-Mlf-Envelope-From: Dirk.Eibach@cloos.de
X-Mlf-Version: 10.0.19.7433
X-Mlf-License: BSV_C_AP_T__
X-Mlf-UniqueId: o202210151019000122343
Subject: Re: [Spice-devel] Running without qemu
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sDQoNCnRoYW5rcyBmb3IgaGF2aW5nIGEgbG9vayBpbnRvIHRoaXMuDQo+IC4u
Lg0KPiAgICBEaWQgeW91IG1lYW4gc29tZXRoaW5nIGxpa2UgaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL3NwaWNlL3gxMXNwaWNlDQo+ID8NCg0KTWF5YmUsIHRoYW5rcy4gSSB3aWxsIGhh
dmUgYSBjbG9zZXIgbG9vay4gV2UgYXJlIG9uIHdpbmRvd3MgdGhvdWdoLg0KDQo+IFdoaWNoIE9T
IGFuZCB3aHkgbm90IFZOQyBhbmQgUkRQIGlmIHlvdSBhcmUgbm90IHVzaW5nIFFlbXU/DQoNCkxv
bmcgc3RvcnkuIFdlIGhhdmUgYSBXaW5kb3dzIGJhc2Ugcm9ib3QgY29udHJvbGxlciB0aGF0IHdp
bGwgYmUgTGludXggYmFzZWQgaW4gdGhlIG5leHQgY29udHJvbGxlciBnZW5lcmF0aW9uLiBUaGUg
Y29udHJvbGxlciBpcyByZW5kZXJpbmcgdGhlIEdVSSBhbmQgaXQgaXMgdHJhbnNmZXJyZWQgZnJv
bSB0aGUgRGlzcGxheS1Qb3J0IG91dHB1dCB0byB0aGUgb3BlcmF0b3IgcGFuZWwgd2l0aCBhIHBy
b3ByaWV0YXJ5IGhhcmR3YXJlIG92ZXIgZmliZXIuDQpOb3cgd2UgYXJlIGRlc2lnbmluZyBhIG5l
dyBvcGVyYXRvciBwYW5lbCB0aGF0IHNob3VsZCBkaXNwbGF5IHRoZSBHVUkgYW5kIGdldCBpdCBm
cm9tIHRoZSBjb250cm9sbGVyIHdpdGggYSByZW1vdGUgZGVza3RvcCBwcm90b2NvbC4gRm9yIG91
ciBwcm90b3R5cGUgd2UgYXJlIHVzaW5nIFZOQyBhbmQgaXQgd29ya3MgYWxyaWdodCBidXQgdGhl
IHBlcmZvcm1hbmNlIGlzIGxpbWl0ZWQuIFRoZXJlIGlzIGFsc28gbm8gb3B0aW9uIHRvIGNvbm5l
Y3QgVVNCLWRyaXZlcyBmcm9tIHRoZSBvcGUgcmF0b3IgcGFuZWwgdG8gdGhlIGNvbnRyb2xsZXIg
dmlhIFZOQy4NClJEUCBtaWdodCB3b3JrLCBidXQgYSAgc2hvd3N0b3BwZXIgaXMsIHRoYXQgdGhl
IGxvY2FsIGNvbnNvbGUgZ2V0cyBsb2NrZWQuIFdlIGFyZSB1c2luZyB0aGUgbG9jYWwgY29uc29s
ZSB0byBjb25uZWN0IGEgc2Vjb25kIGRpc3BsYXkuDQpTcGljZSBsb29rcyBleHRyZW1lbHkgcHJv
bWlzaW5nIGJlY2F1c2UgaXQgaXMgcmVhbGx5IGNyb3NzIHBsYXRmb3JtLCBoYXMgbm8gbG9jYWwg
Y29uc29sZSBsb2NrLCBvZmZlciBVU0IgZm9yd2FyZGluZyBhbmQgc2VlbXMgdG8gcGVyZm9ybSBu
aWNlbHkuDQoNCk1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4gLyBCZXN0IFJlZ2FyZHMNCkRpcmsg
RWliYWNoDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCkNBUkwgQ0xPT1MgU0NI
V0VJU1NURUNITklLIEdNQkgNClNvZnR3YXJlZW50d2lja2xlciAvIEFVLUVXDQpTb2Z0d2FyZWRl
dmVsb3BlciAvIEFVLUVXDQpIYXVwdHZlcndhbHR1bmcvSGVhZHF1YXJ0ZXJzOiBDYXJsLUNsb29z
LVN0cmFzc2UgMQ0KWmVudHJhbGxhZ2VyL0NlbnRyYWwgV2FyZWhvdXNlOiBDYXJsLUNsb29zLVN0
cmFzc2UgNg0KMzU3MDggSGFpZ2VyDQpHZXJtYW55DQpUZWw6ICAgICAgKzQ5IDI3NzMgODUtODg4
DQpFLU1haWw6ICBtYWlsdG86ZGlyay5laWJhY2hAY2xvb3MuZGUNCkludGVybmV0OiBodHRwOi8v
d3d3LmNsb29zLmRlLw0KDQpTaXR6IGRlciBGaXJtYS9IZWFkcXVhcnRlcnM6IDM1NzA4IEhhaWdl
ciwgR2VybWFueQ0KQW10c2dlcmljaHQvTG93ZXIgZGlzdHJpY3QgY291cnQ6IFdldHpsYXIgSFIg
QiAzMDUyDQpHZXNjaMOkZnRzZsO8aHJlci9NYW5hZ2VtZW50OiBTdGVwaGFuIFBpdHRuZXIgKENF
TyksIEFsZXhhbmRlciBWZWlkdCAoQ0ZPKQ0KDQo=
