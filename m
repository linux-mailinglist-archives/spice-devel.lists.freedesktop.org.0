Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9A5114E36
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 10:35:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A286F979;
	Fri,  6 Dec 2019 09:35:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 428 seconds by postgrey-1.36 at gabe;
 Thu, 05 Dec 2019 12:39:43 UTC
Received: from qq.com (smtpbg414.qq.com [113.96.223.80])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726DF6E096
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 12:39:43 +0000 (UTC)
X-QQ-FEAT: 6ugjij1k5i+AojzeRQYacbWyo3eVNfujUKAp1BWioCA8NXHH+JyOwuo1FkDFl
 Parrvi4+D/g0CvwXGRXD1s2qhnolc+jU/oalr0EHCyW7ywwdz3gE56+GXsaupJqdU2Ta750
 WJEjCqszY9mxPCGHlmjPiQgMEQsUXCWawkGVYbM03ojo0dihHPucqJYszLyMpHr1FVAXLIh
 NOX7QHjp2oubA0fjwCCbC7EKB/m0z38cZUGYakC+3owgEkOu9f1tr4vuqiw8vOtbE7mtXUZ
 s5HRKaN4fUZ/GMjI1Swk3RMkn4554OfxVg0MveGsWbS1EZ
X-QQ-SSF: 000000000000008000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 222.212.57.198
X-QQ-STYLE: 
X-QQ-mid: webmail506t1575549135t3456960
From: "=?gb18030?B?xM+35w==?=" <nanfeng1992@qq.com>
To: "=?gb18030?B?c3BpY2UtZGV2ZWw=?=" <spice-devel@lists.freedesktop.org>
Mime-Version: 1.0
Date: Thu, 5 Dec 2019 20:32:15 +0800
X-Priority: 3
Message-ID: <tencent_D8C37BB3D1A4C9756BCA7D773DE8C817AA06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Thu, 05 Dec 2019 20:32:16 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign12
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Fri, 06 Dec 2019 09:35:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qq.com; s=s201512; 
 t=1575549136; bh=GS2ucspwwpIvt8IonSAy+Te4AzcFGxqZax4mUSQn99c=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=uDiYNH0meiFTy4kp0JArbd//4ymz1bRXmYzGs7RhNR2njBeSoP2a2JiQ3WdOknRiS
 V4o6+Em6AZzq6GIGTQsbD31GPWDIWaxECZs/ylb26p+ooah/bJYQqHGFHNZ/fxSjGY
 4WDtxdV5Eh/5qrlFWv3fiDXoOYLdBwAgSihFAZMY=
Subject: [Spice-devel] I have some problem when i compile the remote-viewer
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1456280864=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

--===============1456280864==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5DE8F8CF_12714458_38D4804D"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5DE8F8CF_12714458_38D4804D
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

SGksDQombmJzcDsgJm5ic3A7ICZuYnNwOyBJIGFtIGEgZGV2ZWxvcGVyIG9mIE1hYy4gQW5k
IHdlIGFyZSB1c2luZyB0aGUgcmVtb3RlLXZpZXdlciBhcyBiYXNlIGZvciBvdXIgcHJvZHVj
dC4gQnV0IHdoZW4gSSBjb21waWxlIHRoZSByZW1vdGUtdmlld2VyIHVzaW5nIChPbiB0aGUg
d2Vic2l0ZTombmJzcDtodHRwczovL3d3dy5zcGljZS1zcGFjZS5vcmcvb3N4LWNsaWVudC5o
dG1sKQ0KJm5ic3A7ICZuYnNwOyAmbmJzcDsmbmJzcDtqaGJ1aWxkIGJvb3RzdHJhcA0KICAg
IGpoYnVpbGQgYnVpbGQgIC8vQXQgdGhpcyBzdGVwLCBpdCBpcyBvayBmb3IgZXZlcnl0aGlu
Zw0KDQoNCiAgICBqaGJ1aWxkIHJ1biByZW1vdGUtdmlld2VyICAvLyBJdCBzaG93cyB0aGF0
IDogIGpoYnVpbGQgcnVuOiBVbmFibGUgdG8gZXhlY3V0ZSB0aGUgY29tbWFuZCAncmVtb3Rl
LXZpZXdlcic6IFtFcnJubyAyXSBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQoNCg0KJm5i
c3A7ICZuYnNwOyBJIGhhdmUgY29uZnVzZWQgYnkgdGhpcyBwcm9ibGVtIGZvciB0d28gZGF5
cy5JIGNoZWNrIHRoZSBzdGVwIG92ZXIgYW5kIG92ZXIgYWdhaW4gYnV0IG5vdGhpbmcgd3Jv
bmcuIEFuZCBJIHNlYXJjaCB0aGUgZ29vZ2xlIGZvciB0aGlzIHByb2JsZW0gYnV0IG9ubHkg
ZmluZCB0aGUgdGhpcyBwYWdlJm5ic3A7aHR0cHM6Ly93d3cuc3BpY2Utc3BhY2Uub3JnL29z
eC1jbGllbnQuaHRtbC4mbmJzcDsNCiZuYnNwOyAmbmJzcDsgQ291bGQgeW91IHBsZWFzZSBo
ZWxwIG1lICxhbmQgdGVsbCBtZSB3aGF0IHNob3VsZCBJIGRvLiBNeSBtYWNvcyB2ZXJzaW9u
IGlzIDEwLjE1IGFuZCBteSB4Y29kZSB2ZXJzaW9uIGlzIDExLjIuMSZuYnNwOw0KJm5ic3A7
ICZuYnNwOyZuYnNwOw0KJm5ic3A7ICZuYnNwOyBUaGFua3Mgc28gbXVjaC4gQmVzdCB3aXNo
IGZvciB5b3Uu

------=_NextPart_5DE8F8CF_12714458_38D4804D
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PGRpdj5IaSw8L2Rpdj48ZGl2PiZuYnNwOyAmbmJzcDsgJm5ic3A7IEkgYW0gYSBkZXZlbG9w
ZXIgb2YgTWFjLiBBbmQgd2UgYXJlIHVzaW5nIHRoZSByZW1vdGUtdmlld2VyIGFzIGJhc2Ug
Zm9yIG91ciBwcm9kdWN0LiBCdXQgd2hlbiBJIGNvbXBpbGUgdGhlIHJlbW90ZS12aWV3ZXIg
dXNpbmcgKE9uIHRoZSB3ZWJzaXRlOiZuYnNwOzxhIGhyZWY9Imh0dHBzOi8vd3d3LnNwaWNl
LXNwYWNlLm9yZy9vc3gtY2xpZW50Lmh0bWwiPmh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9y
Zy9vc3gtY2xpZW50Lmh0bWw8L2E+KTwvZGl2PjxkaXY+Jm5ic3A7ICZuYnNwOyAmbmJzcDsm
bmJzcDs8c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0NSwgMjQ1LCAyNDUp
OyBjb2xvcjogcmdiKDUxLCA1MSwgNTEpOyBmb250LWZhbWlseTogTWVubG8sIE1vbmFjbywg
Q29uc29sYXMsICZxdW90O0NvdXJpZXIgTmV3JnF1b3Q7LCBtb25vc3BhY2U7IGZvbnQtc2l6
ZTogMTNweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyI+amhidWlsZCBib290c3RyYXA8L3Nw
YW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0NSwg
MjQ1LCAyNDUpOyBjb2xvcjogcmdiKDUxLCA1MSwgNTEpOyBmb250LWZhbWlseTogTWVubG8s
IE1vbmFjbywgQ29uc29sYXMsICZxdW90O0NvdXJpZXIgTmV3JnF1b3Q7LCBtb25vc3BhY2U7
IGZvbnQtc2l6ZTogMTNweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyI+ICAgIDwvc3Bhbj48
c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0NSwgMjQ1LCAyNDUpOyBjb2xv
cjogcmdiKDUxLCA1MSwgNTEpOyBmb250LWZhbWlseTogTWVubG8sIE1vbmFjbywgQ29uc29s
YXMsICZxdW90O0NvdXJpZXIgTmV3JnF1b3Q7LCBtb25vc3BhY2U7IGZvbnQtc2l6ZTogMTNw
eDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyI+amhidWlsZCBidWlsZCAgLy9BdCB0aGlzIHN0
ZXAsIGl0IGlzIG9rIGZvciBldmVyeXRoaW5nPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5
bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYigyNDUsIDI0NSwgMjQ1KTsgY29sb3I6IHJnYig1
MSwgNTEsIDUxKTsgZm9udC1mYW1pbHk6IE1lbmxvLCBNb25hY28sIENvbnNvbGFzLCAmcXVv
dDtDb3VyaWVyIE5ldyZxdW90OywgbW9ub3NwYWNlOyBmb250LXNpemU6IDEzcHg7IHdoaXRl
LXNwYWNlOiBwcmUtd3JhcDsiPjxicj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0i
YmFja2dyb3VuZC1jb2xvcjogcmdiKDI0NSwgMjQ1LCAyNDUpOyBjb2xvcjogcmdiKDUxLCA1
MSwgNTEpOyBmb250LWZhbWlseTogTWVubG8sIE1vbmFjbywgQ29uc29sYXMsICZxdW90O0Nv
dXJpZXIgTmV3JnF1b3Q7LCBtb25vc3BhY2U7IGZvbnQtc2l6ZTogMTNweDsgd2hpdGUtc3Bh
Y2U6IHByZS13cmFwOyI+ICAgIDwvc3Bhbj48c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1jb2xv
cjogcmdiKDI0NSwgMjQ1LCAyNDUpOyBjb2xvcjogcmdiKDUxLCA1MSwgNTEpOyBmb250LWZh
bWlseTogTWVubG8sIE1vbmFjbywgQ29uc29sYXMsICZxdW90O0NvdXJpZXIgTmV3JnF1b3Q7
LCBtb25vc3BhY2U7IGZvbnQtc2l6ZTogMTNweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyI+
amhidWlsZCBydW4gcmVtb3RlLXZpZXdlciAgLy8gSXQgc2hvd3MgdGhhdCA6ICA8L3NwYW4+
PHNwYW4gc3R5bGU9ImZvbnQtdmFyaWFudC1saWdhdHVyZXM6IG5vLWNvbW1vbi1saWdhdHVy
ZXM7IGZvbnQtZmFtaWx5OiBNZW5sbzsgZm9udC1zaXplOiAxMXB4OyI+amhidWlsZCBydW46
IFVuYWJsZSB0byBleGVjdXRlIHRoZSBjb21tYW5kICdyZW1vdGUtdmlld2VyJzogW0Vycm5v
IDJdIE5vIHN1Y2ggZmlsZSBvciBkaXJlY3Rvcnk8L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBz
dHlsZT0iZm9udC12YXJpYW50LWxpZ2F0dXJlczogbm8tY29tbW9uLWxpZ2F0dXJlczsgZm9u
dC1mYW1pbHk6IE1lbmxvOyBmb250LXNpemU6IDExcHg7Ij48YnI+PC9zcGFuPjwvZGl2Pjxk
aXY+PHNwYW4gc3R5bGU9ImZvbnQtdmFyaWFudC1saWdhdHVyZXM6IG5vLWNvbW1vbi1saWdh
dHVyZXM7IGZvbnQtZmFtaWx5OiBNZW5sbzsgZm9udC1zaXplOiAxMXB4OyI+Jm5ic3A7ICZu
YnNwOyBJIGhhdmUgY29uZnVzZWQgYnkgdGhpcyBwcm9ibGVtIGZvciB0d28gZGF5cy5JIGNo
ZWNrIHRoZSBzdGVwIG92ZXIgYW5kIG92ZXIgYWdhaW4gYnV0IG5vdGhpbmcgd3JvbmcuIEFu
ZCBJIHNlYXJjaCB0aGUgZ29vZ2xlIGZvciB0aGlzIHByb2JsZW0gYnV0IG9ubHkgZmluZCB0
aGUgdGhpcyBwYWdlJm5ic3A7PC9zcGFuPjxhIGhyZWY9Imh0dHBzOi8vd3d3LnNwaWNlLXNw
YWNlLm9yZy9vc3gtY2xpZW50Lmh0bWwiPmh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9v
c3gtY2xpZW50Lmh0bWw8L2E+LiZuYnNwOzwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQt
dmFyaWFudC1saWdhdHVyZXM6IG5vLWNvbW1vbi1saWdhdHVyZXM7IGZvbnQtZmFtaWx5OiBN
ZW5sbzsgZm9udC1zaXplOiAxMXB4OyI+Jm5ic3A7ICZuYnNwOyBDb3VsZCB5b3UgcGxlYXNl
IGhlbHAgbWUgLGFuZCB0ZWxsIG1lIHdoYXQgc2hvdWxkIEkgZG8uIE15IG1hY29zIHZlcnNp
b24gaXMgMTAuMTUgYW5kIG15IHhjb2RlIHZlcnNpb24gaXMgMTEuMi4xJm5ic3A7PC9zcGFu
PjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtdmFyaWFudC1saWdhdHVyZXM6IG5vLWNv
bW1vbi1saWdhdHVyZXM7IGZvbnQtZmFtaWx5OiBNZW5sbzsgZm9udC1zaXplOiAxMXB4OyI+
Jm5ic3A7ICZuYnNwOyZuYnNwOzwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250
LXZhcmlhbnQtbGlnYXR1cmVzOiBuby1jb21tb24tbGlnYXR1cmVzOyBmb250LWZhbWlseTog
TWVubG87IGZvbnQtc2l6ZTogMTFweDsiPiZuYnNwOyAmbmJzcDsgVGhhbmtzIHNvIG11Y2gu
IEJlc3Qgd2lzaCBmb3IgeW91Ljwvc3Bhbj48L2Rpdj48c3R5bGUgdHlwZT0idGV4dC9jc3Mi
PgpwLnAxIHttYXJnaW46IDAuMHB4IDAuMHB4IDAuMHB4IDAuMHB4OyBmb250OiAxMS4wcHgg
TWVubG87IGNvbG9yOiAjMDAwMDAwfQpzcGFuLnMxIHtmb250LXZhcmlhbnQtbGlnYXR1cmVz
OiBuby1jb21tb24tbGlnYXR1cmVzfQo8L3N0eWxlPg==

------=_NextPart_5DE8F8CF_12714458_38D4804D--




--===============1456280864==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1456280864==--



