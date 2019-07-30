Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F14A27A781
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4849D6E4D6;
	Tue, 30 Jul 2019 12:04:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848166E4E6
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 325B4821D8
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:12 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 151D35D6B0;
 Tue, 30 Jul 2019 12:04:08 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:09 +0100
Message-Id: <20190730120331.17967-21-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 30 Jul 2019 12:04:12 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 21/44] fixup! usb-redir: add files
 for SCSI and USB MSC implementation
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

SW1wcm92ZSBhIGhlYWRlciBjb21tZW50Ci0tLQogc3JjL2NkLXNjc2kuaCB8IDYgKysrKy0tCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3NyYy9jZC1zY3NpLmggYi9zcmMvY2Qtc2NzaS5oCmluZGV4IDBiNmFiOWMxLi42NTI0MjQ0
NCAxMDA2NDQKLS0tIGEvc3JjL2NkLXNjc2kuaAorKysgYi9zcmMvY2Qtc2NzaS5oCkBAIC0xMDks
OCArMTA5LDEwIEBAIGludCBjZF9zY3NpX2Rldl9yZXNldChDZFNjc2lUYXJnZXQgKnNjc2lfdGFy
Z2V0LCB1aW50MzJfdCBsdW4pOwogCiBpbnQgY2Rfc2NzaV90YXJnZXRfcmVzZXQoQ2RTY3NpVGFy
Z2V0ICpzY3NpX3RhcmdldCk7CiAKLS8qIENhbGxiYWNrcyAqLwotCisvKiBDYWxsYmFja3MKKyAq
IFRoZXNlIGNhbGxiYWNrcyBhcmUgdXNlZCBieSB1cHBlciBsYXllciB0byBpbXBsZW1lbnQgc3Bl
Y2lmaWMgU0NTSQorICogdGFyZ2V0IGRldmljZXMuCisgKi8KIHZvaWQgY2Rfc2NzaV9kZXZfcmVx
dWVzdF9jb21wbGV0ZSh2b2lkICp0YXJnZXRfdXNlcl9kYXRhLCBDZFNjc2lSZXF1ZXN0ICpyZXF1
ZXN0KTsKIHZvaWQgY2Rfc2NzaV9kZXZfY2hhbmdlZCh2b2lkICp0YXJnZXRfdXNlcl9kYXRhLCB1
aW50MzJfdCBsdW4pOwogdm9pZCBjZF9zY3NpX2Rldl9yZXNldF9jb21wbGV0ZSh2b2lkICp0YXJn
ZXRfdXNlcl9kYXRhLCB1aW50MzJfdCBsdW4pOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
