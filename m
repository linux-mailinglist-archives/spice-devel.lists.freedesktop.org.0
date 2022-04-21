Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C9450949F
	for <lists+spice-devel@lfdr.de>; Thu, 21 Apr 2022 03:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A2F89FD4;
	Thu, 21 Apr 2022 01:23:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 366 seconds by postgrey-1.36 at gabe;
 Thu, 21 Apr 2022 01:23:30 UTC
Received: from out162-62-57-64.mail.qq.com (out162-62-57-64.mail.qq.com
 [162.62.57.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C35089FD4
 for <spice-devel@lists.freedesktop.org>; Thu, 21 Apr 2022 01:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1650504206; bh=N6ea04go/p4x8c7Pyd576ISALmyGNj5l0UbS+ZyzaUg=;
 h=Date:From:To:Cc:Subject:References;
 b=Y0yraiFQKzkUIq4zVn2vetYoiDS5SRmUyoP/XJS8RnnGaObQ1pn8yf/CcUA7PM4El
 IPsabcVSC3wulV7xkKkNJdCnizdh1z01LpZ0c7DHoLF8r/I1isP9+24caQc1j/QqpB
 AqmPEY2S57ziySxTVH96wLsIlbKPQXyEyq56PRx4=
Received: from DESKTOP-0H5OGNJ ([101.229.138.199])
 by newxmesmtplogicsvrsza7.qq.com (NewEsmtp) with SMTP
 id 40A13805; Thu, 21 Apr 2022 09:16:10 +0800
X-QQ-mid: xmsmtpt1650503770tmadxq4bc
Message-ID: <tencent_3B027FBBF88B074F57E97DB66CAA12BFE705@qq.com>
X-QQ-XMAILINFO: M0PjjqbLT90wf7YN2F/Kmzz0EA2e3abCoLi/7WcdLu/yVXG7XjqumoVhyFwvyo
 uo/GhcZ/pjESIR0L8WTRZAtXBp4yTtDXACACXrNd5UJfM7Sh7L0PNOue5A0bBlaGtNBdgpokFxLE
 BBeDm0M6R7NExX+znxxgHSFDP5sKEm4pKxwffmM8aE8Zk0OQ/ruo9K53MMonDYD7hIb8e/V0W40d
 T2EEWTIMyhzPoqwc5/K4veCLudDOFgdCh5SOmo1WhL5asBLNf+UnYzWU9Z8y79bUB2O+gkW8e0E0
 IQ04bCWR6JdblVaUswZ2+ZcqvRgV23I5n00TQ69eRCQLC9ZCTIKtk63dJgsSWFxzCJg4XJdnmRRm
 KJDYqFjVMrEe48ALiXsAdHQAcmoU1fylbHhMs4hoDKxvoAih9UIchVOzLNVBwD5J+3Y0XbeA8fHh
 xIVyn8B7J9Yk9ajyT0UlMSVxcdxnk8k+ydc4s+3sglBqWUQMGn43d7n1fmt7U3U2iAu2K7jUYVqP
 +1hskpSQRO2G+NucN5OglkLjmr0rlCEgV9BdALuOj/XE31mGzuEkLufv/0Q/Ogbqved0WdDJU1yD
 Ive1Pj949MuOSZuxtEQr8voSmj9W6Ee0EQnUWy1wWHp/JsmfXLn6AhanB+JQkTz6z1Q/REw71FUs
 BfOP3uakhaXqZ0FHSsefEcbLgDAQ503TAPA7ca9+4lv1oB3fdONPdKcv6FkwJlYtOrzJTNTYKQJ+
 1xax/61A2a2a57QgOkPjYoVSEDMZn4a0gixRJes9g1c6jooqay6X9HY4RSQg7qFPJC4sA/BldKD/
 RVpPJm40sIc4+ow0uhU5r/K4MmQ9+uCQmaJQIkwnLoRvNilPt0Ke3cwXk5dWC+ofzCid3J6oSSdK
 hulNWFxz4lYbBOGBJGUJxCjRk3upC0MVWCSsqaFYl09Ib7diArsRM=
Date: Thu, 21 Apr 2022 09:16:09 +0800
From: "sondx@qq.com" <sondx@qq.com>
To: "i iordanov" <iiordanov@gmail.com>, 
 "Vasiliy Tolstov" <v.tolstov@selfip.ru>
References: <CAMS0tn0O3=trQ=cGHDQgKYrvXs3v5RS-v0KQkDk=c-tR=9jQqg@mail.gmail.com>, 
 <CACaajQvqVoO+QynpnoBAbMA=LSjXyUVxcy49WkjjtjJeX9DTpA@mail.gmail.com>, 
 <CAMS0tn1XVjcUXC3mQPnqmtqZ+pSi-QNrhJoNOLZsU4gnRXjk1g@mail.gmail.com>
X-Priority: 3
X-GUID: 4DE8FF2F-65F8-4B09-A5BA-FCA3A2DB619D
X-Has-Attach: no
X-Mailer: Foxmail 7.2.23.121[cn]
Mime-Version: 1.0
X-OQ-MSGID: <202204210916093207491@qq.com>
Content-Type: multipart/alternative;
 boundary="----=_001_NextPart113573502687_=----"
Subject: Re: [Spice-devel] New native SPICE and VNC Clients for iOS and Mac
 OS X
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

------=_001_NextPart113573502687_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

bmljZSx0aGFuayB1DQoNCg0KDQpzb25keEBxcS5jb20NCiANCkZyb206IGkgaW9yZGFub3YNCkRh
dGU6IDIwMjItMDQtMjAgMjI6MjANClRvOiBWYXNpbGl5IFRvbHN0b3YNCkNDOiBzcGljZS1kZXZl
bA0KU3ViamVjdDogUmU6IFtTcGljZS1kZXZlbF0gTmV3IG5hdGl2ZSBTUElDRSBhbmQgVk5DIENs
aWVudHMgZm9yIGlPUyBhbmQgTWFjIE9TIFgNCk5vdCB5ZXQsIGJ1dCB3ZSB3aWxsIGxvb2sgaW50
byBpdCENCiANCmlvcmRhbg0KIA0KT24gV2VkLCBBcHIgMjAsIDIwMjIgYXQgNDo1OSBBTSBWYXNp
bGl5IFRvbHN0b3YgPHYudG9sc3RvdkBzZWxmaXAucnU+IHdyb3RlOg0KPg0KPiBIaSEgVmVyeSBn
b29kIG5ld3MuIERvIHlvdSBoYXZlIGZyZWUgdmVyc2lvbiBhdmFpbGFibGUgdmlhIGhvbWVicmV3
Pw0KPiAtLQ0KPiBWYXNpbGl5IFRvbHN0b3YsDQo+IGUtbWFpbDogdi50b2xzdG92QHNlbGZpcC5y
dQ0KPg0KPg0KPiDQndCwIDIwINCw0L/RgC4gMjAyMiDQsy4sIDAyOjUyOjI5LCBpIGlvcmRhbm92
IDxpaW9yZGFub3ZAZ21haWwuY29tPiDQvdCw0L/QuNGB0LDQu9C4Og0KPj4NCj4+IEhlbGxvLA0K
Pj4NCj4+IEkgd2FudGVkIHRvIGxldCB5b3UgYWxsIGtub3cgdGhhdCBJJ3ZlIHJlbGVhc2VkIGEg
bmV3IG5hdGl2ZSBTUElDRQ0KPj4gKGFuZCBWTkMpIENsaWVudHMgZm9yIGlPUyBhbmQgTWFjIE9T
IFggd3JpdHRlbiBpbiBTd2lmdC4gYVNQSUNFIGNvbWVzDQo+PiB3aXRoIGNvbnNvbGUudnYgYW5k
IGF1ZGlvIHN1cHBvcnQuIEkndmUgb3Blbi1zb3VyY2VkIHRoZW0gdW5kZXIgdGhlDQo+PiBHUEx2
MyBsaWNlbnNlIGFuZCBwdXQgdXAgdGhlIHNvdXJjZSBjb2RlIGhlcmU6DQo+Pg0KPj4gaHR0cHM6
Ly9naXRsYWIuY29tL2lpb3JkYW5vdi9yZW1vdGUtZGVza3RvcC1jbGllbnRzLWlvcw0KPj4NCj4+
IEZyb20gdGhlIGFib3ZlLW1lbnRpb25lZCBpT1MgY29kZSByZXBvc2l0b3J5IGFyZSBidWlsdCBi
Vk5DIGFuZCBhU1BJQ0UNCj4+IGZvciBpT1MvTWFjIE9TIFguIEFuIFJEUCBjbGllbnQgZm9yIGlP
UyBjYWxsZWQgYVJEUCBpcyBhbHNvIGluIHRoZQ0KPj4gd29ya3MuDQo+Pg0KPj4gVGhpcyBhcHBy
b2FjaCB0byBidWlsZCBvdXQgbXVsdGlwbGUgYXBwcyBmcm9tIGEgc2luZ2xlIHJlcG9zaXRvcnkg
aXMNCj4+IHNpbWlsYXIgdG8gbXkgQW5kcm9pZCBjbGllbnRzIGJWTkMgYW5kIGFTUElDRSwgYVJE
UCwgYW5kIE9wYXF1ZSB3aGljaA0KPj4geW91IG1heSBiZSBmYW1pbGlhciB3aXRoIChjb2RlIGF0
DQo+PiBodHRwczovL2dpdGh1Yi5jb20vaWlvcmRhbm92L3JlbW90ZS1kZXNrdG9wLWNsaWVudHMp
Lg0KPj4NCj4+IFRoZSBuZXcgYXBwcyBhcmUgYXZhaWxhYmxlIGF0IHRoZSBmb2xsb3dpbmcgbGlu
a3MgaWYgeW91IHdhbnQgdG8gdHJ5IHRoZW0gb3V0Og0KPj4gYVNQSUNFOiBodHRwczovL2FwcHMu
YXBwbGUuY29tL2NhL2FwcC9hc3BpY2UtcHJvL2lkMTU2MDU5MzEwNw0KPj4gYlZOQzogaHR0cHM6
Ly9hcHBzLmFwcGxlLmNvbS9jYS9hcHAvYnZuYy1wcm8vaWQxNTA2NDYxMjAyDQo+Pg0KPj4gSSBo
b3BlIHlvdSBmaW5kIHRoZW0gdXNlZnVsIQ0KPj4NCj4+IFNpbmNlcmVseSwNCj4+IGlvcmRhbg0K
Pj4NCj4+IC0tDQo+PiBUaGUgY29uc2Npb3VzIG1pbmQgaGFzIG9ubHkgb25lIHRocmVhZCBvZiBl
eGVjdXRpb24uDQogDQogDQogDQotLSANClRoZSBjb25zY2lvdXMgbWluZCBoYXMgb25seSBvbmUg
dGhyZWFkIG9mIGV4ZWN1dGlvbi4NCg==

------=_001_NextPart113573502687_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 14px; font-fami=
ly: "Microsoft YaHei UI"; color: rgb(0, 0, 0); line-height: 1.5; }</style>=
</head><body>=0A<div><span></span>nice,thank u</div>=0A<div><br></div><hr =
style=3D"width: 210px; height: 1px;" color=3D"#b5c4df" size=3D"1" align=3D=
"left">=0A<div><span><div style=3D"MARGIN: 10px; FONT-FAMILY: verdana; FON=
T-SIZE: 10pt"><div>sondx@qq.com</div></div></span></div>=0A<blockquote sty=
le=3D"margin-Top: 0px; margin-Bottom: 0px; margin-Left: 0.5em; margin-Righ=
t: inherit"><div>&nbsp;</div><div style=3D"border:none;border-top:solid #B=
5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm"><div style=3D"PADDING-RIGHT: 8px; P=
ADDING-LEFT: 8px; FONT-SIZE: 12px;FONT-FAMILY:tahoma;COLOR:#000000; BACKGR=
OUND: #efefef; PADDING-BOTTOM: 8px; PADDING-TOP: 8px"><div><b>From:</b>&nb=
sp;<a href=3D"mailto:iiordanov@gmail.com">i iordanov</a></div><div><b>Date=
:</b>&nbsp;2022-04-20&nbsp;22:20</div><div><b>To:</b>&nbsp;<a href=3D"mail=
to:v.tolstov@selfip.ru">Vasiliy Tolstov</a></div><div><b>CC:</b>&nbsp;<a h=
ref=3D"mailto:spice-devel@lists.freedesktop.org">spice-devel</a></div><div=
><b>Subject:</b>&nbsp;Re: [Spice-devel] New native SPICE and VNC Clients f=
or iOS and Mac OS X</div></div></div><div><div>Not yet, but we will look i=
nto it!</div>=0A<div>&nbsp;</div>=0A<div>iordan</div>=0A<div>&nbsp;</div>=
=0A<div>On Wed, Apr 20, 2022 at 4:59 AM Vasiliy Tolstov &lt;v.tolstov@self=
ip.ru&gt; wrote:</div>=0A<div>&gt;</div>=0A<div>&gt; Hi! Very good news. D=
o you have free version available via homebrew?</div>=0A<div>&gt; --</div>=
=0A<div>&gt; Vasiliy Tolstov,</div>=0A<div>&gt; e-mail: v.tolstov@selfip.r=
u</div>=0A<div>&gt;</div>=0A<div>&gt;</div>=0A<div>&gt; =D0=9D=D0=B0 20 =
=D0=B0=D0=BF=D1=80. 2022 =D0=B3., 02:52:29, i iordanov &lt;iiordanov@gmail=
.com&gt; =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB=D0=B8:</div>=0A<div>&g=
t;&gt;</div>=0A<div>&gt;&gt; Hello,</div>=0A<div>&gt;&gt;</div>=0A<div>&gt=
;&gt; I wanted to let you all know that I've released a new native SPICE</=
div>=0A<div>&gt;&gt; (and VNC) Clients for iOS and Mac OS X written in Swi=
ft. aSPICE comes</div>=0A<div>&gt;&gt; with console.vv and audio support. =
I've open-sourced them under the</div>=0A<div>&gt;&gt; GPLv3 license and p=
ut up the source code here:</div>=0A<div>&gt;&gt;</div>=0A<div>&gt;&gt; ht=
tps://gitlab.com/iiordanov/remote-desktop-clients-ios</div>=0A<div>&gt;&gt=
;</div>=0A<div>&gt;&gt; From the above-mentioned iOS code repository are b=
uilt bVNC and aSPICE</div>=0A<div>&gt;&gt; for iOS/Mac OS X. An RDP client=
 for iOS called aRDP is also in the</div>=0A<div>&gt;&gt; works.</div>=0A<=
div>&gt;&gt;</div>=0A<div>&gt;&gt; This approach to build out multiple app=
s from a single repository is</div>=0A<div>&gt;&gt; similar to my Android =
clients bVNC and aSPICE, aRDP, and Opaque which</div>=0A<div>&gt;&gt; you =
may be familiar with (code at</div>=0A<div>&gt;&gt; https://github.com/iio=
rdanov/remote-desktop-clients).</div>=0A<div>&gt;&gt;</div>=0A<div>&gt;&gt=
; The new apps are available at the following links if you want to try the=
m out:</div>=0A<div>&gt;&gt; aSPICE: https://apps.apple.com/ca/app/aspice-=
pro/id1560593107</div>=0A<div>&gt;&gt; bVNC: https://apps.apple.com/ca/app=
/bvnc-pro/id1506461202</div>=0A<div>&gt;&gt;</div>=0A<div>&gt;&gt; I hope =
you find them useful!</div>=0A<div>&gt;&gt;</div>=0A<div>&gt;&gt; Sincerel=
y,</div>=0A<div>&gt;&gt; iordan</div>=0A<div>&gt;&gt;</div>=0A<div>&gt;&gt=
; --</div>=0A<div>&gt;&gt; The conscious mind has only one thread of execu=
tion.</div>=0A<div>&nbsp;</div>=0A<div>&nbsp;</div>=0A<div>&nbsp;</div>=0A=
<div>-- </div>=0A<div>The conscious mind has only one thread of execution.=
</div>=0A</div></blockquote>=0A</body></html>
------=_001_NextPart113573502687_=------

