Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CE52D0618
	for <lists+spice-devel@lfdr.de>; Sun,  6 Dec 2020 17:52:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780126E4BB;
	Sun,  6 Dec 2020 16:52:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from qq.com (smtpbg409.qq.com [113.96.223.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD4136E0A2
 for <spice-devel@lists.freedesktop.org>; Sun,  6 Dec 2020 12:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1607256204; bh=2e6uH2pNetr78QNsiQf6U3AjI/wJ9k3RuhyH5Gjgpsk=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=DaEl9uN8hdm48DRRdRerdX/hJVoe6w0p0Pt6b2HGJFdoIehgpLARA79q1iy1Ajbal
 pDeRN8D40kHtKmz0VeaDExd4WqjW5hBLlOnStTISM8zcfUPiFCK2wtkeo8ktPoSpCr
 nryazVlbe1kDpqVVs7wQY1/CBv43QWcv4rh0VzI8=
X-QQ-FEAT: mokamjGu0UL5lG84+y2JyB/WZaieab9ycJeaj0maVV1e6t+FqJjOUD4Ir4N89
 Xjw/nudkdD9vWtiIAfEZy1sKPAebtl6nbPJ2OT74oIfdcAr5AnhvMaE59Jolk1u3Rta1VQv
 PKRF/BQgQkBLTYF4rsidKnc/qO7c/GulA8fIsTDlIjPEqMgnXgul0L/MOlxjdari96SbU2L
 irOA+ty9m8HX4FpxwB3VbA0p0WMCc+R+iqIjEkvS9KW4N8sfNyqCxYrDUFCvWwJQ=
X-QQ-SSF: 00000000000000F000000000000000Z
X-QQ-XMAILINFO: OB129ao7dhfDy2Ew/bWm/ONp1P4ihaiPi2qPCUxY1TmBpvGHBYuCMhZnfSOrPl
 keLwmO8VOX997Kf6gij0T5uFQI6Zj3WShecza20FmZWYXe1gUBiFHxQypzPuV0N4Bj1GtqmT0wZaN
 +d1r6hmcbpHu1Tu0qRUHgo+UvaQJiGrsKl+PuyFSNPgB8lhRSne0pmlP/jLOsXAGJIWlCyJNJ3ALm
 ETmaZQdffT5mEE58W+eC4yRD2Vfw0Sko4w09EwA/cdl3c9KgHkKS9AKXxyNMlBwJ5aJhqKpQnMyDv
 tblY0y4sj0BEdJx+SOZNWM8sGUlLcbUn5CwSIG92ZT39bmUmT5SFWKEfMtQ/MlaKxP965tlnzgmUX
 sh0yYva60gCTx+ZKnccFYIF08bwF/J2+12KouFtJoYFYASI2HBEucvwz/j/z0lcOwzBpjaj01hQrj
 lcpoHL6Ukoe+nXBY514x9G472MawZSnmMOLMxCWwk95j16EMVcnck7x0Mp8aeNcFACvmj36T+J+qd
 AsZQVEtV+vAMrlGVf1pWmaUyDvWzNRczJjD+1fWaiAIAZuzdK0pT9+zr/fTvbuAy8t6rj3AAsMBNn
 bqv7bmhIOsiB/q8nc4C7sYPURAARybW+MMCd9cPJZsdlocf1gSpjonMieptMxJbm291IWT5rU+9x0
 hnywmlS1FA6Xnil/a3yWSG3ysFZe/wy60ZOSpx2LUN2LKrTolZptKwqUEjMGqitdAqizIoIAYdbo6
 3zYNrie8Tsjv/Aw==
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 222.79.148.203
X-QQ-STYLE: 
X-QQ-mid: webmail621t1607256202t7557793
From: "=?gb18030?B?09HIy8bft9Y=?=" <2291177920@qq.com>
To: "=?gb18030?B?c3BpY2UtZGV2ZWw=?=" <spice-devel@lists.freedesktop.org>
Mime-Version: 1.0
Date: Sun, 6 Dec 2020 20:03:22 +0800
X-Priority: 3
Message-ID: <tencent_D0BDDAAD3EFADDC21809D7544B2210F4140A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Sun, 06 Dec 2020 20:03:24 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign11
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Sun, 06 Dec 2020 16:52:06 +0000
Subject: [Spice-devel] Questions about whether MacOS can be used
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
Content-Type: multipart/mixed; boundary="===============0565746700=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

--===============0565746700==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5FCCC88A_0FC4C9D8_715455A8"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5FCCC88A_0FC4C9D8_715455A8
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

Q2FuIHRoZSBsYXRlc3QgTWFjQm9vayB3aXRoIE0xIGNoaXAgdXNlIHRoaXMgc3BpY2Ugc29m
dHdhcmWjvw==

------=_NextPart_5FCCC88A_0FC4C9D8_715455A8
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

Q2FuIHRoZSBsYXRlc3QgTWFjQm9vayB3aXRoIE0xIGNoaXAgdXNlIHRoaXMgc3BpY2Ugc29m
dHdhcmWjvw==

------=_NextPart_5FCCC88A_0FC4C9D8_715455A8--




--===============0565746700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0565746700==--



