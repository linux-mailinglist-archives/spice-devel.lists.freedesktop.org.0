Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B390CB35F9
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 09:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C639C6E879;
	Mon, 16 Sep 2019 07:53:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827896E879
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 07:53:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2594186FC91;
 Mon, 16 Sep 2019 07:53:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B84B5C1D6;
 Mon, 16 Sep 2019 07:53:24 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0C4AD1808876;
 Mon, 16 Sep 2019 07:53:24 +0000 (UTC)
Date: Mon, 16 Sep 2019 03:53:22 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?Q?Niccol=C3=B2?= Belli <darkbasic@linuxsystems.it>
Message-ID: <539543765.76418.1568620402733.JavaMail.zimbra@redhat.com>
In-Reply-To: <3f6e9905c9111b49b559b2c73cf0b8b4@linuxsystems.it>
References: <3f6e9905c9111b49b559b2c73cf0b8b4@linuxsystems.it>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.10]
Thread-Topic: Running SPICE on ppc64le
Thread-Index: QVcvUm3ja3CmhK3/V0rt/onhDsnwTg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Mon, 16 Sep 2019 07:53:24 +0000 (UTC)
Subject: Re: [Spice-devel] Running SPICE on ppc64le
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiBIaSwKPiBJcyB0aGVyZSBhbnkgcmVhc29uIHdoeSBTcGljZSBpcyBub3QgYXZhaWxhYmxlIG9u
IHBwYzY0bGU/Cj4gSSd2ZSByZWFkIHRoZXJlIGFyZSBzdGlsbCBzb21lIGlzc3VlcyB3aXRoIGJp
ZyBlbmRpYW4sIGJ1dCB3aGF0J3Mgd3JvbmcKPiB3aXRoIGxpdHRsZSBlbmRpYW4/Cj4gSSB3b3Vs
ZCByZWFsbHkgbG92ZSB0byBiZSBhYmxlIHRvIHVzZSBRWEwgYW5kIGVzcGVjaWFsbHkgVVNCIHJl
ZGlyZWN0aW9uCj4gb24gbXkgUmFwdG9yIEJsYWNrYmlyZCAoUG93ZXIgOSkuCj4gCj4gQmVzdHMs
Cj4gTmljY29sbycKClNQSUNFIGRvZXMgbm90IG1lYW4gUVhMLCB5b3UgY2FuIHVzZSBTUElDRSB3
aXRob3V0IFFYTC4KV2h5IFFYTCBpcyBub3QgY29tcGlsZWQgZm9yIFBQQyBJIGhhdmUgbm8gaWRl
YS4KUmVjZW50bHkgdGhlcmUgd2VyZSBxdWl0ZSBzb21lIGNvbXBhdGliaWxpdHkgcGF0Y2hlcyBm
b3IgYmlnIGVuZGlhbiBtYWNoaW5lcywKc2hvdWxkIHdvcmsgbW9zdGx5IG91dCBvZiB0aGUgYm94
IChJIGhhdmUgb25seSBzb21lIG1pbm9yIHBhdGNoZXMgZm9yIHRoZSBhZ2VudCkuCk9mZmljaWFs
bHkgb25seSB4NjQgYW5kIHg4NiBhcmUgc3VwcG9ydGVkLgoKRnJlZGlhbm8KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
