Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28692D0617
	for <lists+spice-devel@lfdr.de>; Sun,  6 Dec 2020 17:52:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5088E6E4BA;
	Sun,  6 Dec 2020 16:52:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 439 seconds by postgrey-1.36 at gabe;
 Sun, 06 Dec 2020 11:58:08 UTC
Received: from qq.com (smtpbg414.qq.com [113.96.223.80])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDFA6E094
 for <spice-devel@lists.freedesktop.org>; Sun,  6 Dec 2020 11:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1607255425; bh=cCqspHq441E7Zfa+btFZBTNWAV28yfgUtOEUJm0uvEg=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=e2F9UBubpzdsux7fFTtTBLudyU8pCjYe1XZLutVUToY/8Y44tUDKIP79Seo1LFz7V
 sgao377wjTaZFQWmtSAICNPpRT/EsYWch75PUMl0Gij5UEHYsOSPoktuBRgqVh58SI
 ES6sLjkOdu461gcL3rZhZcRIgNhId1fGs5gvdvtQ=
X-QQ-FEAT: ulY5+DCuoHXNLupTE7kyDSy4v5FsqdHFlZzh4yV49bGTHLc2IyV/GmL9WvsW+
 mNEFb6xRg4mWjn3HvYolnAuFBFYBeALjqhuPkeHl5ZcZfesGTLFbYPzCqmPJlzyFEjD5r3H
 mH3tI2tVEjbFq9h1GaXbwZpae0xnPFkk0rVaBd8zipYaUHz0fQFiftnHfmE6alTmINh8Gwe
 VunzRUTIqOwVLhtK2YuSbd9fx0IWh2WOZxAp5SR82JTlm5HMOPm9Wc+49Y4nmKC9nJPx/+W
 99BA==
X-QQ-SSF: 00000000000000F000000000000000Z
X-QQ-XMAILINFO: MZsrnY6ReKvO28N12LjDojfuM4GL9T1YDteMqV3do4DhT/FpwlYgj5Cnf6EW/5
 YH2LOV/BC/aUFcoSOasQ1aA1y8fTWssshJPSc7KTubj18cUOY7NBk4JODHwTa9z0lcCFD/8naZ4a6
 0YkkPDAGhdI3UaBp6tcQ68yPyDjI7yz9nbmsZgXBEHNyiCdI7kJSPjy/lFln3Bxe9hqK1Jm2aBlEE
 E3MKJUCiXoNmA+w3qyyCpmVvgEPoTtFl5CzTglvry2TAs8YXLHkfypTxMy4q917QkTb48zfDHHRcW
 bNUs8Mr51L8jAzvqX1HxtWLtwrHR0laJxhvDMUAXmBYDaRQAP5fnPgDXdn6i/TVIatqVQMCVubUVa
 msbBSDhYoR+Eo6AccMu6STAFdT8euSFYMz3x7Ol6MbTJ7j5lGLzXzwFpS02km2+Gy+WvLpHeIH56I
 stV3AeJBFe6H/AtDztmuNwDwOBnf5kJpeKxNW4mxb/zA4DNkHvE8M8pxpPSVjBXBlrquRa/jqJ8uU
 3zwkZME50+1uRvbv4ycewi0KFibjkP/yY+hx1dXaPRd7oYtK2pN2J/W2CExJxi89cBUdGUoO8SuzE
 iyYEt4iLWc8A/6rNXIAmKzNguicu+CT2Av8U1z5E8kj+ZAQ7ckf+RKd4i3D1G3+qS4g7g4Qildg9A
 GQbOsOx4R6aMmOmm6G2RxZMt7Y8L9p85KVVr+6w5SepBiCSF94mdSK/SVXuwEGCD4igxIChSCu5db
 1Ouw=
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 222.79.148.203
X-QQ-STYLE: 
X-QQ-mid: webmail621t1607255424t4167569
From: "=?gb18030?B?09HIy8bft9Y=?=" <2291177920@qq.com>
To: "=?gb18030?B?c3BpY2UtZGV2ZWw=?=" <spice-devel@lists.freedesktop.org>
Mime-Version: 1.0
Date: Sun, 6 Dec 2020 19:50:24 +0800
X-Priority: 3
Message-ID: <tencent_C0459B760E8F10B718467B3567920C04C508@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Sun, 06 Dec 2020 19:50:25 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign11
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Sun, 06 Dec 2020 16:52:06 +0000
Subject: [Spice-devel] Can the latest MacBook with M1 chip use this spice
 software
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
Content-Type: multipart/mixed; boundary="===============2108351641=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

--===============2108351641==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5FCCC580_0F7532E0_35D94B10"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5FCCC580_0F7532E0_35D94B10
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

Q2FuIHRoZSBsYXRlc3QgTWFjQm9vayB3aXRoIE0xIGNoaXAgdXNlIHRoaXMgc3BpY2Ugc29m
dHdhcmU=

------=_NextPart_5FCCC580_0F7532E0_35D94B10
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNo
YXJzZXQ9R0IxODAzMCI+PGRpdj5DYW4gdGhlIGxhdGVzdCBNYWNCb29rIHdpdGggTTEgY2hp
cCB1c2UgdGhpcyBzcGljZSBzb2Z0d2FyZTwvZGl2Pg==

------=_NextPart_5FCCC580_0F7532E0_35D94B10--




--===============2108351641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2108351641==--



