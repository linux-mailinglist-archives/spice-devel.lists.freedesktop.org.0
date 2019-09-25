Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B99C2BDBC2
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 12:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDA86EB6E;
	Wed, 25 Sep 2019 10:03:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C7C96EB6E
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D94AB7FDCA
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:01 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 606B361559
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:01 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 12:02:52 +0200
Message-Id: <20190925100300.30019-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 25 Sep 2019 10:03:01 +0000 (UTC)
Subject: [Spice-devel] [spice v2 0/8] migrate.py
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKQWRkcmVzc2luZyBzb21lIGNv
bW1lbnRzIGZyb20gdjEgcmV2aWV3IGJ5IEZyZWRpYW5vLiBJbiB0aGlzIGJhdGNoLCBvbmx5CiJ0
ZXN0czogbWlncmF0ZTogcmVtb3ZlIG11bHRpcGxlIGNsaWVudCBvcHRpb24iIGlzIG5vdCBhY2tl
ZCBkdWUgdGhlCmZhY3QgSSBjaGFuZ2VkIE1pZ3JhdG9yJ3MgYXR0cmlidXRlIG5hbWUgZnJvbSBj
bGllbnRzIHRvCmNvbm5lY3RlZF9jbGllbnQuCgpJIGNhbiBzaW1wbHkgcnVuIG1pZ3JhdGlvbiB0
ZXN0IG5vdyBjb25zaWRlcmluZyB0aGF0IEkgaGF2ZSBxZW11IGJ1aWxkCnNpZGUtYnktc2lkZSB3
aXRoIHNwaWNlIGJvdGggaW4gc2FtZSAkSE9NRS93b3JrIGRpcmVjdG9yeSBoZXJlLCBhbmQgSSdt
CnJ1bm5pbmcgdGhpcyBtaWdyYXRlLnB5IGluc2lkZSBzcGljZS90ZXN0cyBmb2xkZXIuCgpMb3Qn
cyB0byBpbXByb3ZlIGhlcmUgYnV0IEknbSBhY3R1YWxseSBpbmNsaW5lZCB0byBmaXggc29tZSBi
dWdzIGluIHRoZQpjbGllbnQgZm9yIG5vdywgY29tZSBiYWNrIHRvIHRoaXMgbGF0ZXIuCgpDaGVl
cnMsCgpWaWN0b3IgVG9zbyAoOCk6CiAgdGVzdHM6IG1pZ3JhdGU6IHJlbW92ZSBzcGljZWMgb3B0
aW9uCiAgdGVzdHM6IG1pZ3JhdGU6IHVzZSB1cmkgZm9yIGRlZmF1bHQncyBzcGljeSBjbGllbnQK
ICB0ZXN0czogbWlncmF0ZTogYWRkIHN1cHBvcnQgdG8gcnVuIHdpdGggcmVtb3RlLXZpZXdlcgog
IHRlc3RzOiBtaWdyYXRlOiBmaXggcmVsYXRpdmUgcW1wLnB5IHBhdGgKICB0ZXN0czogbWlncmF0
ZTogcmVtb3ZlIG11bHRpcGxlIGNsaWVudCBvcHRpb24KICB0ZXN0czogbWlncmF0ZTogYm9vbCBp
bnN0ZWFkIG9mIG9uL29mZiBvcHRpb24gaW4gY21kIGxpbmUKICB0ZXN0czogbWlncmF0ZTogYWRk
IG9wdGlvbiAtLXdhaXQtdXNlci1pbnB1dAogIHRlc3RzOiBtaWdyYXRlOiBhZGQgY291bnRlciBm
b3IgdGVzdHMKCiB0ZXN0cy9taWdyYXRlLnB5IHwgNDUgKysrKysrKysrKysrKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwg
MTkgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
