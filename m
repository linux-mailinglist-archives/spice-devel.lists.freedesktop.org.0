Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3D77A786
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5006E4F3;
	Tue, 30 Jul 2019 12:04:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E705E6E4E6
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 95787821DE
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:18 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D8D4F5D6B0;
 Tue, 30 Jul 2019 12:04:17 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:14 +0100
Message-Id: <20190730120331.17967-26-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 30 Jul 2019 12:04:18 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 26/44] fixup! usb-redir: add files
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

UmVtb3ZlIGRhdGFfYnVmIGxlYWsuCi0tLQogc3JjL2NkLXVzYi1idWxrLW1zZC5jIHwgMiArKwog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9jZC11c2It
YnVsay1tc2QuYyBiL3NyYy9jZC11c2ItYnVsay1tc2QuYwppbmRleCA4NDNmNGYyZS4uNDFlMjEw
ZjAgMTAwNjQ0Ci0tLSBhL3NyYy9jZC11c2ItYnVsay1tc2QuYworKysgYi9zcmMvY2QtdXNiLWJ1
bGstbXNkLmMKQEAgLTEyOSw2ICsxMjksNyBAQCBVc2JDZEJ1bGtNc2REZXZpY2UgKmNkX3VzYl9i
dWxrX21zZF9hbGxvYyh2b2lkICp1c2JfdXNlcl9kYXRhLCB1aW50MzJfdCBtYXhfbHVucwogCiAg
ICAgY2QtPnNjc2lfdGFyZ2V0ID0gY2Rfc2NzaV90YXJnZXRfYWxsb2MoY2QsIG1heF9sdW5zKTsK
ICAgICBpZiAoY2QtPnNjc2lfdGFyZ2V0ID09IE5VTEwpIHsKKyAgICAgICAgZ19mcmVlKGNkLT5k
YXRhX2J1Zik7CiAgICAgICAgIGdfZnJlZShjZCk7CiAgICAgICAgIHJldHVybiBOVUxMOwogICAg
IH0KQEAgLTIzOCw2ICsyMzksNyBAQCBpbnQgY2RfdXNiX2J1bGtfbXNkX3VucmVhbGl6ZShVc2JD
ZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50MzJfdCBsdW4pCiB2b2lkIGNkX3VzYl9idWxrX21zZF9m
cmVlKFVzYkNkQnVsa01zZERldmljZSAqY2QpCiB7CiAgICAgY2Rfc2NzaV90YXJnZXRfZnJlZShj
ZC0+c2NzaV90YXJnZXQpOworICAgIGdfZnJlZShjZC0+ZGF0YV9idWYpOwogICAgIGdfZnJlZShj
ZCk7CiAKICAgICBTUElDRV9ERUJVRygiRnJlZSIpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
