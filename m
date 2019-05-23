Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE9727918
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 11:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E46F989CD3;
	Thu, 23 May 2019 09:20:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 904 seconds by postgrey-1.36 at gabe;
 Thu, 23 May 2019 07:53:45 UTC
Received: from m13-39.163.com (m13-39.163.com [220.181.13.39])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BA5E89CBC
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 07:53:44 +0000 (UTC)
Received: from zap83q$163.com ( [120.35.11.140] ) by ajax-webmail-wmsvr39
 (Coremail) ; Thu, 23 May 2019 15:38:32 +0800 (CST)
X-Originating-IP: [120.35.11.140]
Date: Thu, 23 May 2019 15:38:32 +0800 (CST)
From: zap83q <zap83q@163.com>
To: spice-devel@lists.freedesktop.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
 20180927(cd7136b6) Copyright (c) 2002-2019 www.mailtech.cn 163com
X-CM-CTRLDATA: qWgGp2Zvb3Rlcl9odG09Mzc3OjU2
MIME-Version: 1.0
Message-ID: <6ca679a4.1099d.16ae3a091c8.Coremail.zap83q@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: J8GowACnDpr4TeZcXKJsAA--.41048W
X-CM-SenderInfo: x2dsmjrt6rljoofrz/1tbiNgC9FFWBet4EtQACsc
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Mailman-Approved-At: Thu, 23 May 2019 09:20:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=CkFGl
 7TxuBd74tQjzXpTxa+E20BxP6Pl36ULdcvffkA=; b=lOaxVf6jDrhupMV077mjM
 ilmNE21TT+osFo33rpas9xIvMRfZwQ9415sDpIkyMbw16E3PXpUwYh2/SZ8MT1Ey
 T/grl4DzgFI+daDTbtPG28d8KlaVzqil/dRx3u/sch7bNava5ZsLv7FVUW2/mxFW
 w0rdnNnm28+yVqt7mk9aGY=
Subject: [Spice-devel] use spice proxy
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
Content-Type: multipart/mixed; boundary="===============1513068155=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1513068155==
Content-Type: multipart/alternative; 
	boundary="----=_Part_265304_67186078.1558597112264"

------=_Part_265304_67186078.1558597112264
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGksCiAgIFdoZW4gSSB0cnkgdG8gdXNlIHByb3h5IHRvIGNvbm5lY3Qgc3BpY2Ugc2VydmVyLCBp
dCByZXR1cm4gYSB2aXJ0LXZpZXdlciB3YXJuaW5nOiAiZG9ubm90IGFsbG93IGh0dHAgcHJveHkg
Y29ubmVjdCIsIHdoeT8KSSBkbyBjb25maWcgbGlrZSBodHRwczovL3d3dy5zcGljZS1zcGFjZS5v
cmcvc3BpY2UtcHJveHkuaHRtbA==
------=_Part_265304_67186078.1558597112264
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+SGksPC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7V2hlbiBJ
IHRyeSB0byB1c2UgcHJveHkgdG8gY29ubmVjdCBzcGljZSBzZXJ2ZXIsIGl0IHJldHVybiBhIHZp
cnQtdmlld2VyIHdhcm5pbmc6ICJkb25ub3QgYWxsb3cgaHR0cCBwcm94eSBjb25uZWN0Iiwgd2h5
PzwvZGl2PjxkaXY+SSBkbyBjb25maWcgbGlrZSZuYnNwOzxhIGhyZWY9Imh0dHBzOi8vd3d3LnNw
aWNlLXNwYWNlLm9yZy9zcGljZS1wcm94eS5odG1sIj5odHRwczovL3d3dy5zcGljZS1zcGFjZS5v
cmcvc3BpY2UtcHJveHkuaHRtbDwvYT48L2Rpdj48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJu
ZXRlYXNlZm9vdGVyIj48cD4mbmJzcDs8L3A+PC9zcGFuPg==
------=_Part_265304_67186078.1558597112264--


--===============1513068155==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1513068155==--

