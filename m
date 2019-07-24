Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB09729D3
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 10:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0072C6E4A0;
	Wed, 24 Jul 2019 08:21:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFCCB6E4A0
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 08:21:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5BDCB30C1347
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 08:21:37 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 420B119C70;
 Wed, 24 Jul 2019 08:21:36 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 09:21:27 +0100
Message-Id: <20190724082132.6163-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 24 Jul 2019 08:21:37 +0000 (UTC)
Subject: [Spice-devel] [PATCH vd_agent_linux 0/5] Minor patches for
 analyzers tools
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

VGhlc2UgcGF0Y2hlcyBtYWlubHkgcmVtb3ZlIHNvbWUgd2FybmluZ3MgZGV0ZWN0ZWQgYnkgQ292
ZXJpdHkKYW5kIGNsYW5nIGNvZGUgYW5hbHl6ZXIuCkl0J3MgYSBjb2xsZWN0aW9uIG9mIGRpZmZl
cmVudCBwYXRjaGVzIG9uIHRoZSBzYW1lIHRvcGljLCBvbmUKaW5pdGlhbGx5IHdyaXR0ZW4gYnkg
VmljdG9yLgoKRnJlZGlhbm8gWmlnbGlvICg0KToKICB4MTEtcmFuZHI6IEF2b2lkIHBhc3Npbmcg
WEV2ZW50IGFzIHZhbHVlCiAgeDExOiBBdm9pZCBwYXNzaW5nIFhFdmVudCBhcyB2YWx1ZQogIHgx
MTogQ29uc3RpZnkgWEV2ZW50IGFyZ3VtZW50CiAgeDExOiBDaGFuZ2UgY2hlY2sgdG8gbWFrZSBj
b2RlIHNjYW5uZXJzIG5vdCBnaXZpbmcgd2FybmluZwoKVmljdG9yIFRvc28gKDEpOgogIGRldmlj
ZS1pbmZvOiByZW1vdmUgZ19saXN0X2xlbmd0aCgpIG9uIGNvbXBhcmVfYWRkcmVzc2VzKCkKCiBz
cmMvdmRhZ2VudC9kZXZpY2UtaW5mby5jIHwgMTIgKysrKy0tLQogc3JjL3ZkYWdlbnQveDExLXBy
aXYuaCAgICB8ICAyICstCiBzcmMvdmRhZ2VudC94MTEtcmFuZHIuYyAgIHwgIDggKystLS0KIHNy
Yy92ZGFnZW50L3gxMS5jICAgICAgICAgfCA2NyArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIDQgZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgNDQgZGVsZXRp
b25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
