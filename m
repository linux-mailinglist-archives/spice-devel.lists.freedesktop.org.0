Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 319EA57E61
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 10:39:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 846076E834;
	Thu, 27 Jun 2019 08:39:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04A96E834
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:39:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 789B9309264C
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:39:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E2495D9C6
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:39:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 66BF1206D1;
 Thu, 27 Jun 2019 08:39:18 +0000 (UTC)
Date: Thu, 27 Jun 2019 04:39:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <939129759.24949617.1561624756866.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190627083149.23283-3-kpouget@redhat.com>
References: <20190627083149.23283-1-kpouget@redhat.com>
 <20190627083149.23283-3-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.23]
Thread-Topic: ring: allow testing if a ring is initialized or not
Thread-Index: 0zCO1BXK1M3X3l1bGPkaZzGqGlI8Zg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 27 Jun 2019 08:39:18 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC spice-common 2/2] ring: allow testing if a
 ring is initialized or not
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

PiAKPiAtLS0KPiAgY29tbW9uL3JpbmcuaCB8IDUgKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9jb21tb24vcmluZy5oIGIvY29tbW9uL3Jp
bmcuaAo+IGluZGV4IDUwNTQxOTMuLmQ1ZWFkZWEgMTAwNjQ0Cj4gLS0tIGEvY29tbW9uL3Jpbmcu
aAo+ICsrKyBiL2NvbW1vbi9yaW5nLmgKPiBAQCAtNTAsNiArNTAsMTEgQEAgc3RhdGljIGlubGlu
ZSBpbnQgcmluZ19pc19lbXB0eShSaW5nICpyaW5nKQo+ICAgICAgcmV0dXJuIHJpbmcgPT0gcmlu
Zy0+bmV4dDsKPiAgfQo+IAo+ICtzdGF0aWMgaW5saW5lIGludCByaW5nX2lzX2luaXRpYWxpemVk
KFJpbmcgKnJpbmcpCj4gK3sKPiArICAgIHJldHVybiByaW5nLT5uZXh0ICE9IE5VTEwgJiYgcmlu
Zy0+cHJldiAhPSBOVUxMOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW5saW5lIHZvaWQgcmluZ19hZGQo
UmluZyAqcmluZywgUmluZ0l0ZW0gKml0ZW0pCj4gIHsKPiAgICAgIHNwaWNlX2Fzc2VydChyaW5n
LT5uZXh0ICE9IE5VTEwgJiYgcmluZy0+cHJldiAhPSBOVUxMKTsKCkhpLAogIGFsbCB2YXJpYWJs
ZXMgc2hvdWxkIGJlIGluaXRpYWxpemVkLCBpZiBub3QgSSB3b3VsZAphYm9ydCgpLgpJZiB5b3Ug
d2FudCBpbnN0ZWFkIHRvIGNoZWNrIGlmIHRoZSBSaW5nIGNvbnRhaW5zIGVsZW1lbnQKeW91IGNh
biB1c2UgcmluZ19pc19lbXB0eS4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
