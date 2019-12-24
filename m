Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B8912D89A
	for <lists+spice-devel@lfdr.de>; Tue, 31 Dec 2019 13:26:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089B689EEB;
	Tue, 31 Dec 2019 12:26:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 24 Dec 2019 09:20:38 UTC
Received: from qq.com (smtpbg415.qq.com [113.96.223.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126AD89F55
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Dec 2019 09:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1577178792;
 bh=dBx9zpRui+y5rJyD+jRPnQ54Ck8VjH3su7pCFnhDjMU=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=e9O01QI/6ryvQuUD1vPbM32i7l4mX5HfItSf8cX6Csb5nVgbrPqDrLuu7OeReKZIt
 UUbE0f0/kn+Emzo3Gw5UeUwGgjWcbo6gD5pTwOLbTkJYWHDhCwQmNMUjsPtukTEMV1
 qZMLKUt1ogttxVbRAqxk+pQNxv3UkZjCPkCvtzBw=
X-QQ-FEAT: y+vehiv3GLvy7ovKYvg26l8AFWqkdKLMgi6eX/4mY0JnjKy2AX3Vm6D49K1aL
 8rwhevRCNUwY9EsDwR+2dez24RaW3MZQgc0ViaI+iSJlFUQP5Y2N33DEj/EjomsTYzYI/L3
 o2IvEUc9Q9ruWxzR5cG2lVQJYB/vuh29fh+iodUGdNSgJwG9OYizxd4CEUQSTHZCMTfwUzF
 qNPWEYaohm6FRfRVjVmOh0vF5I8H39RiNpsxxonnVDabb5oLYqGSe5VNHDv2XImsSd/zblc
 cR/PBiGIo67ix6KU/zwwcLPlU=
X-QQ-SSF: 000000000000000000000000000000T
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 59.41.89.139
X-QQ-STYLE: 
X-QQ-mid: webmail508t1577178791t3330407
From: "=?gb18030?B?U2VhxL7Evg==?=" <linlin.q@foxmail.com>
To: "=?gb18030?B?c3BpY2UtZGV2ZWw=?=" <spice-devel@lists.freedesktop.org>
Mime-Version: 1.0
Date: Tue, 24 Dec 2019 17:13:11 +0800
X-Priority: 3
Message-ID: <tencent_A9302505FD47CDA508E828C2148FEF212907@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Tue, 24 Dec 2019 17:13:11 +0800 (CST)
Feedback-ID: webmail:foxmail.com:bgforeign:bgforeign12
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Tue, 31 Dec 2019 12:26:01 +0000
Subject: [Spice-devel] How to use vaapi to accelerate video coding?
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
Content-Type: multipart/mixed; boundary="===============2118557938=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

--===============2118557938==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5E01D6A7_0FFC2D08_741091A9"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5E01D6A7_0FFC2D08_741091A9
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

SSB3YW50IHRvIGhhcmQtY29kZSB0aGUgdmlkZW8gYnkgZ3N0cmVhbWVyLXZhYXBpIGJ1dCBm
YWlsZWQuIEhlcmUgaXMgbXkgc3lzdGVtIGVudmlyb25tZW50IGFuZCBtb2RpZnk6DQoxLiB1
YnVudHUgMTYuMDQgZGVza3RvcA0KDQoNCjIuIGFwdCBpbnN0YWxsIGdzdHJlYW1lcjEuMC12
YWFwaSZuYnNwOyBsaWJnc3RyZWFtZXIxLjAtZGV2IGdzdHJlYW1lcjEuMC10b29scyBnc3Ry
ZWFtZXIxLjAtcGx1Z2lucy1iYXNlIGxpYmdzdHJlYW1lci1wbHVnaW5zLWJhc2UxLjAtZGV2
IGdzdHJlYW1lcjEuMC1wbHVnaW5zLWdvb2QgZ3N0cmVhbWVyMS4wLXBsdWdpbnMtdWdseSBn
c3RyZWFtZXIxLjAtcGx1Z2lucy1iYWQmbmJzcDsgZ3N0cmVhbWVyMS4wLWxpYmF2DQoNCg0K
My5Nb2RpZnkgc2VydmVyL3JlZHMuYyZuYnNwOyAmbmJzcDsNCiZuYnNwOyAmbmJzcDsgZGVm
YXVsdF92aWRlb19jb2RlY3NbXSA9ICJnc3RyZWFtZXI6aDI2NDsiJm5ic3A7ICZuYnNwOyZu
YnNwOw0KJm5ic3A7IE1vZGlmeSBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYw0KJm5ic3A7
ICZuYnNwOyBjYXNlIFNQSUNFX1ZJREVPX0NPREVDX1RZUEVfSDI2NDogcmV0dXJuICJ2YWFw
aWgyNjRlbmMiOw0KJm5ic3A7ICZuYnNwOyBjYXNlIFNQSUNFX1ZJREVPX0NPREVDX1RZUEVf
SDI2NDogZ3N0ZW5jX29wdHMgPSBnX3N0cmR1cCgiIik7DQoNCg0KV2hlbiBJIHBsYXkgdGhl
IHZpZGVvLCB0aGUgL3Zhci9sb2cvbGlidmlydC9xZW11L3dpbjcubG9nIG91dHB1dDoNCiZu
YnNwOyAmbmJzcDtnc3RyZWFtZXItZW5jb2Rlci5jOjgzMTpoYW5kbGVfcGlwbGluZV9tZXNz
YWdlOiBHU3RyZWFtZXIgZXJyb3IgZnJvbSBlbGVtZW50IGVuY29kZXI6IENvdWxkIG5vdCBp
bml0aWFsaXplIHN1cHBvcnRpbmcgbGlicmFyeS4NCiZuYnNwOyAmbmJzcDtnc3RyZWFtZXIt
ZW5jb2Rlci5jOjExMjI6Y29uZmlndXJlX3BpcGxpbmU6IEdzdHJlYW1lciBlcnJvcjogdW5h
YmxlIHRvIHNldCB0aGUgcGlwZWxpbmUgdG8gdGhlIHBsYXlpbmcgc3RhdGUuDQoNCg0Kd2hl
biBJIHNldCBHU1RfREVCVUc9MiAsIGl0IHdpbGwgb3V0cHV0IHZpZGVvZW5jb2RlciBnc3R2
aWRlb2VuY29kZXIuYzoxNTM0OmdzdF92aWRlb19lbmNvZGVyX2NoYW5nZV9zdGF0ZTo8ZW5j
b2RlciZndDsgZXJyb3I6IEZhaWxlZCB0byBvcGVuIGVuY29kZXIuDQoNCg0KSW4gYWRkaXRp
b24sV2hlbiBJIGJ1aWxkIHNwaWNlIGFuZCBrdm0gaW4gdGhlIHNhbWUgd2F5IGFzIFVidW50
dTE4LjA0DQpUaGUgbG9nIHJlcG9ydCAiZ3N0cmVhbWVyLWVuY29kZXIuYzo5ODU6Y3JlYXRl
X3BpcGVsaW5lOiBHU3RyZWFtZXIgZXJyb3I6IG5vIGVsZW1lbnQgInZhYXBpaDI2NGVuYyIg
IiZuYnNwOyAmbmJzcDssJm5ic3A7IGJ1dCBJIGNoZWNrICJnc3QtaW5zcGVjdC0xLjAgLCB2
YWFwaWgyNjRlbmMiLCBpdCBleGlzdHMuDQoNCg0KV2hhdCBkaWQgSSBkbyB3cm9uZyBvciB3
aGF0IGVsc2UgZG8gSSBuZWVkIHRvIHNldD8NCkxvb2tpbmcgZm9yd2FyZCB0byB5b3VyIHJl
cGx5Lg0KVGhhbmsgeW91IQ==

------=_NextPart_5E01D6A7_0FFC2D08_741091A9
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PGRpdj48ZGl2Pkkgd2FudCB0byBoYXJkLWNvZGUgdGhlIHZpZGVvIGJ5IGdzdHJlYW1lci12
YWFwaSBidXQgZmFpbGVkLiBIZXJlIGlzIG15IHN5c3RlbSBlbnZpcm9ubWVudCBhbmQgbW9k
aWZ5OjwvZGl2PjxkaXY+MS4gdWJ1bnR1IDE2LjA0IGRlc2t0b3A8L2Rpdj48ZGl2Pjxicj48
L2Rpdj48ZGl2PjIuIGFwdCBpbnN0YWxsIGdzdHJlYW1lcjEuMC12YWFwaSZuYnNwOyBsaWJn
c3RyZWFtZXIxLjAtZGV2IGdzdHJlYW1lcjEuMC10b29scyBnc3RyZWFtZXIxLjAtcGx1Z2lu
cy1iYXNlIGxpYmdzdHJlYW1lci1wbHVnaW5zLWJhc2UxLjAtZGV2IGdzdHJlYW1lcjEuMC1w
bHVnaW5zLWdvb2QgZ3N0cmVhbWVyMS4wLXBsdWdpbnMtdWdseSBnc3RyZWFtZXIxLjAtcGx1
Z2lucy1iYWQmbmJzcDsgZ3N0cmVhbWVyMS4wLWxpYmF2PC9kaXY+PGRpdj48YnI+PC9kaXY+
PGRpdj4zLk1vZGlmeSBzZXJ2ZXIvcmVkcy5jJm5ic3A7ICZuYnNwOzwvZGl2PjxkaXY+Jm5i
c3A7ICZuYnNwOyBkZWZhdWx0X3ZpZGVvX2NvZGVjc1tdID0gImdzdHJlYW1lcjpoMjY0OyIm
bmJzcDsgJm5ic3A7Jm5ic3A7PC9kaXY+PGRpdj4mbmJzcDsgTW9kaWZ5IHNlcnZlci9nc3Ry
ZWFtZXItZW5jb2Rlci5jPC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7IGNhc2UgU1BJQ0VfVklE
RU9fQ09ERUNfVFlQRV9IMjY0OiByZXR1cm4gInZhYXBpaDI2NGVuYyI7PC9kaXY+PGRpdj4m
bmJzcDsgJm5ic3A7IGNhc2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9IMjY0OiBnc3RlbmNf
b3B0cyA9IGdfc3RyZHVwKCIiKTs8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PldoZW4gSSBw
bGF5IHRoZSB2aWRlbywgdGhlIC92YXIvbG9nL2xpYnZpcnQvcWVtdS93aW43LmxvZyBvdXRw
dXQ6PC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7Z3N0cmVhbWVyLWVuY29kZXIuYzo4MzE6aGFu
ZGxlX3BpcGxpbmVfbWVzc2FnZTogR1N0cmVhbWVyIGVycm9yIGZyb20gZWxlbWVudCBlbmNv
ZGVyOiBDb3VsZCBub3QgaW5pdGlhbGl6ZSBzdXBwb3J0aW5nIGxpYnJhcnkuPC9kaXY+PGRp
dj4mbmJzcDsgJm5ic3A7Z3N0cmVhbWVyLWVuY29kZXIuYzoxMTIyOmNvbmZpZ3VyZV9waXBs
aW5lOiBHc3RyZWFtZXIgZXJyb3I6IHVuYWJsZSB0byBzZXQgdGhlIHBpcGVsaW5lIHRvIHRo
ZSBwbGF5aW5nIHN0YXRlLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+d2hlbiBJIHNldCBH
U1RfREVCVUc9MiAsIGl0IHdpbGwgb3V0cHV0IHZpZGVvZW5jb2RlciBnc3R2aWRlb2VuY29k
ZXIuYzoxNTM0OmdzdF92aWRlb19lbmNvZGVyX2NoYW5nZV9zdGF0ZTombHQ7ZW5jb2RlciZn
dDsgZXJyb3I6IEZhaWxlZCB0byBvcGVuIGVuY29kZXIuPC9kaXY+PGRpdj48YnI+PC9kaXY+
PGRpdj5JbiBhZGRpdGlvbixXaGVuIEkgYnVpbGQgc3BpY2UgYW5kIGt2bSBpbiB0aGUgc2Ft
ZSB3YXkgYXMgVWJ1bnR1MTguMDQ8L2Rpdj48ZGl2PlRoZSBsb2cgcmVwb3J0ICJnc3RyZWFt
ZXItZW5jb2Rlci5jOjk4NTpjcmVhdGVfcGlwZWxpbmU6IEdTdHJlYW1lciBlcnJvcjogbm8g
ZWxlbWVudCAidmFhcGloMjY0ZW5jIiAiJm5ic3A7ICZuYnNwOywmbmJzcDsgYnV0IEkgY2hl
Y2sgImdzdC1pbnNwZWN0LTEuMCAsIHZhYXBpaDI2NGVuYyIsIGl0IGV4aXN0cy48L2Rpdj48
ZGl2Pjxicj48L2Rpdj48ZGl2PldoYXQgZGlkIEkgZG8gd3Jvbmcgb3Igd2hhdCBlbHNlIGRv
IEkgbmVlZCB0byBzZXQ/PC9kaXY+PGRpdj5Mb29raW5nIGZvcndhcmQgdG8geW91ciByZXBs
eS48L2Rpdj48ZGl2PlRoYW5rIHlvdSE8L2Rpdj48L2Rpdj4=

------=_NextPart_5E01D6A7_0FFC2D08_741091A9--




--===============2118557938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2118557938==--



