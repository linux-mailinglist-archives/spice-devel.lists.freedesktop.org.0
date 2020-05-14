Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBF51D308B
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 15:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90ECC6E33F;
	Thu, 14 May 2020 13:02:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward500p.mail.yandex.net (forward500p.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:110])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BDD66E30D
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 10:27:19 +0000 (UTC)
Received: from mxback1g.mail.yandex.net (mxback1g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:162])
 by forward500p.mail.yandex.net (Yandex) with ESMTP id 44E7F940F62;
 Thu, 14 May 2020 13:27:17 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback1g.mail.yandex.net (mxback/Yandex) with ESMTP id N9voZ5io9j-RGpGCBbH; 
 Thu, 14 May 2020 13:27:16 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1589452036; bh=PwMcnTYTE8D6co7QKkloZYzR8YI4vCBX2o1XPhF8dWA=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=L9/uCGXtYgOSskZv5Sl7t47eypQOJxFWtNHsxAkoJdwZMKkodF7v3YKSBH7+o48JH
 MYLz08sk6dBD6gtbsrzfon+zQKfQPPHK4UjBPkNxfbgW5F2IGYDsc9YcJl4UwkmSLv
 +gNVSTH3Xn10iopoiIBxeNmq1nJ+kW2OOgss42UM=
Authentication-Results: mxback1g.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by myt3-02123065bd76.qloud-c.yandex.net with HTTP;
 Thu, 14 May 2020 13:27:16 +0300
From: Oleg Krutov <ole-krutov@yandex.ru>
To: Frediano Ziglio <fziglio@redhat.com>,
 "sassen@thinsia.com" <sassen@thinsia.com>
In-Reply-To: <1390359796.26946078.1589449317740.JavaMail.zimbra@redhat.com>
References: <4ca6628d-7930-d01e-8001-0d0640b4f6ea@thinsia.com>
 <1390359796.26946078.1589449317740.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 14 May 2020 13:27:16 +0300
Message-Id: <332701589452036@myt3-02123065bd76.qloud-c.yandex.net>
X-Mailman-Approved-At: Thu, 14 May 2020 13:02:36 +0000
Subject: Re: [Spice-devel] virtual gl
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
Content-Type: multipart/mixed; boundary="===============1399129785=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1399129785==
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

SGkgRnJlZGlhbm8swqA8ZGl2Pmlzbid0IGNvbmZpZ3VyYXRpb24gd2l0aCBlZ2xfaGVhZGxlc3Mg
c3VwcG9ydGVkPyBXaXRoIGFydGlmYWN0cywgYnV0IGl0J3Mgc29tZWhvdyB3b3JraW5nLCBJIHRy
aWVkIHRvIHVzZSB0aGF0IGluIGJlZ2lubmluZyBvZiB0aGlzIHllYXIuPGJyIC8+PGJyIC8+PC9k
aXY+MTI6NDIsIDE0INC80LDRjyAyMDIwINCzLiwgRnJlZGlhbm8gWmlnbGlvICZsdDtmemlnbGlv
QHJlZGhhdC5jb20mZ3Q7OjxiciAvPjxibG9ja3F1b3RlIGNsYXNzPSJiNGZkNWNmMmVjOTJiYzY4
Y2I4OTg3MDBiYjgxMzU1ZndtaS1xdW90ZSI+PHA+PGJyIC8+PC9wPjxibG9ja3F1b3RlIGNsYXNz
PSJiNGZkNWNmMmVjOTJiYzY4Y2I4OTg3MDBiYjgxMzU1ZndtaS1xdW90ZSI+wqBIZWxsbywgaXMg
aXQgcG9zc2libGUgdG8gdXNlIHNwaWNlIHRvZ2V0aGVyIHdpdGggdmlydHVhbCBHTD88YnIgLz48
L2Jsb2NrcXVvdGU+PHA+PGJyIC8+PC9wPjxibG9ja3F1b3RlIGNsYXNzPSJiNGZkNWNmMmVjOTJi
YzY4Y2I4OTg3MDBiYjgxMzU1ZndtaS1xdW90ZSI+wqBUaGFua3MsIFJvbGFuZDxiciAvPjwvYmxv
Y2txdW90ZT48cD48YnIgLz5IaSw8YnIgLz7CoMKgY3VycmVudGx5IG9ubHkgdGhlIGxvY2FsIGNh
c2UgdGhyb3VnaCB1bml4IHNvY2tldHMgaXMgc3VwcG9ydGVkPGJyIC8+PGJyIC8+RnJlZGlhbm88
YnIgLz48YnIgLz5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XzxiciAvPlNwaWNlLWRldmVsIG1haWxpbmcgbGlzdDxiciAvPjxhIGhyZWY9Im1haWx0bzpTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmciPlNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzwvYT48YnIgLz48YSBocmVmPSJodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsIj5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsPC9hPjxiciAvPjwvcD48L2Jsb2NrcXVvdGU+
PGJyIC8+PGJyIC8+LS0gPGJyIC8+0J7RgtC/0YDQsNCy0LvQtdC90L4g0LjQtyDQvNC+0LHQuNC7
0YzQvdC+0LPQviDQv9GA0LjQu9C+0LbQtdC90LjRjyDQr9C90LTQtdC60YEu0J/QvtGH0YLRiw==

--===============1399129785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1399129785==--
