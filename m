Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA37AF7FA
	for <lists+spice-devel@lfdr.de>; Wed, 11 Sep 2019 10:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAF96EA53;
	Wed, 11 Sep 2019 08:31:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 433 seconds by postgrey-1.36 at gabe;
 Wed, 11 Sep 2019 07:58:41 UTC
Received: from qq.com (smtpbg411.qq.com [113.96.223.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E916EA48
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 07:58:41 +0000 (UTC)
X-QQ-FEAT: 8J5uQ3aAL2FZO/HkRXa//8R6azLhvH70zAuFs6BH+fV2zQ2dInTyYFbLOlK2e
 Eir77Z6S2zWU2r1B58NLd8H5M7W8boRzWo696Ba0kzu+14s5l6vrzZyRXGx7TwC1Hlcup42
 /UIvl1/m2rqJ7HwDEyr1vf7h16hY5X8itQ6XthALbh3pPGwSIPQmmPOoUJKVlrU+m7iXxgr
 AejqkvxUXfLbBcdEDTC2UMxQZJfmmafvlBWJweWldnnpAJIvRs4uWbDgO0DUpxiugtaRb6v
 LmLh4dALP9T84W
X-QQ-SSF: 00000000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 220.248.59.129
X-QQ-STYLE: 
X-QQ-mid: webmail429t1568188194t8500621
From: "=?gb18030?B?0KHC8w==?=" <497657623@qq.com>
To: "=?gb18030?B?c3BpY2UtZGV2ZWw=?=" <spice-devel@lists.freedesktop.org>
Mime-Version: 1.0
Date: Wed, 11 Sep 2019 15:49:54 +0800
X-Priority: 3
Message-ID: <tencent_0C1908293E2EE000CA887762038975F2890A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Wed, 11 Sep 2019 15:49:55 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign2
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Wed, 11 Sep 2019 08:31:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qq.com; s=s201512; 
 t=1568188195; bh=FhVzBz+qp/uKYvjFLvac65/ztuACdwpm7FdO5m9mCkI=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=taOCsjZ+aRNY1vc8x7M+wHX93/7EA26AlMXSsw3JUYSL5MkoYkXXTcEvAvOoElSQo
 O8ggPCH0ii2ECtrk9hTBDKSjzzY0vb66JKIXOjDZ4A3nWYXAJcQXguWuM1II9oHSwQ
 zIGNfr4sgTjobDE014zk6Kr+/rRuuDr8OIE+ljCQ=
Subject: [Spice-devel] virt-viewer compile problem
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
Content-Type: multipart/mixed; boundary="===============0971631346=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

--===============0971631346==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5D78A722_09FCBB00_1F44CFBD"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5D78A722_09FCBB00_1F44CFBD
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

aGVsbG86DQogICAgICBXaGVuIGkgdXNlIG1pbmd3MzIgdG8gY29tcGlsZSB2aXJ0LXZpZXdl
ciwgaXQgb2NjdXJpZWQgcHJvYmxlbS4gVGhlIGVycm9yIGlzICdlcnJvcjogUGFja2FnZSBy
ZXF1aXJlbWVudHMgKHNwaWNlLWNvbnRyb2xsZXIpIHdlcmUgbm90IG1ldDonLg0KIEkndmUg
YmVlbiBzZWFyY2hpbmcgdGhlIEludGVybmV0IGZvciBhIGxvbmcgdGltZS4gQnV0IHN0aWxs
IGNhbid0IGZpbmQgdGhlIHdheSB0byBzb2x2ZSB0aGUgcHJvYmxlbS4gSSBkb24ndCBrbm93
IHdoZXJlIGNhbiBJIGdldCB0aGUgcGFja2FnZSBuYW1lZCAnc3BpY2UtY29udHJvbGxlcicu
IFNvIEkgYXNrIGZvciBoZWxwISBQbGVhc2Uh

------=_NextPart_5D78A722_09FCBB00_1F44CFBD
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PGRpdj5oZWxsbzo8L2Rpdj48ZGl2PiZuYnNwOyAmbmJzcDsgJm5ic3A7IFdoZW4gaSB1c2Ug
bWluZ3czMiB0byBjb21waWxlIHZpcnQtdmlld2VyLCBpdCBvY2N1cmllZCBwcm9ibGVtLiBU
aGUgZXJyb3IgaXMgJ2Vycm9yOiBQYWNrYWdlIHJlcXVpcmVtZW50cyAoc3BpY2UtY29udHJv
bGxlcikgd2VyZSBub3QgbWV0OicuPC9kaXY+PGRpdj4mbmJzcDtJJ3ZlIGJlZW4gc2VhcmNo
aW5nIHRoZSBJbnRlcm5ldCBmb3IgYSBsb25nIHRpbWUuIEJ1dCBzdGlsbCBjYW4ndCBmaW5k
IHRoZSB3YXkgdG8gc29sdmUgdGhlIHByb2JsZW0uIEkgZG9uJ3Qga25vdyB3aGVyZSBjYW4g
SSBnZXQgdGhlIHBhY2thZ2UgbmFtZWQgJ3NwaWNlLWNvbnRyb2xsZXInLiBTbyBJIGFzayBm
b3IgaGVscCEgUGxlYXNlITwvZGl2PjxkaXY+Jm5ic3A7PC9kaXY+

------=_NextPart_5D78A722_09FCBB00_1F44CFBD--




--===============0971631346==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0971631346==--



