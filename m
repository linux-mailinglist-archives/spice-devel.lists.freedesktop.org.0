Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 615877A78F
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B857D6E4F8;
	Tue, 30 Jul 2019 12:04:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96CA76E4BB
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 41ECF12BB
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:29 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 277B05D6A7;
 Tue, 30 Jul 2019 12:04:27 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:22 +0100
Message-Id: <20190730120331.17967-34-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 30 Jul 2019 12:04:29 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 35/44] fixup! usb-redir: add
 implementation of emulated CD device
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

SW1wcm92ZSBpc19kZXZpY2VfbmFtZSBmb3IgV2luZG93cy4KLS0tCiBzcmMvdXNiLWRldmljZS1j
ZC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLWNkLmMgYi9zcmMvdXNiLWRldmljZS1j
ZC5jCmluZGV4IGJjMWM2MGQzLi45NTU0YTgyZiAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2Ut
Y2QuYworKysgYi9zcmMvdXNiLWRldmljZS1jZC5jCkBAIC0xOTQsOCArMTk0LDggQEAgc3RhdGlj
IGludCBjZF9kZXZpY2VfY2hlY2soU3BpY2VDZExVICp1bml0KQogCiBzdGF0aWMgZ2Jvb2xlYW4g
aXNfZGV2aWNlX25hbWUoY29uc3QgY2hhciAqZmlsZW5hbWUpCiB7Ci0gICAgZ2Jvb2xlYW4gYiA9
IHN0cmxlbihmaWxlbmFtZSkgPT0gMiAmJiBmaWxlbmFtZVsxXSA9PSAnOic7Ci0gICAgcmV0dXJu
IGI7CisgICAgcmV0dXJuIGdfYXNjaWlfaXNhbHBoYShmaWxlbmFtZVswXSkgJiYgZmlsZW5hbWVb
MV0gPT0gJzonICYmCisgICAgICAgIGZpbGVuYW1lWzJdID09IDA7CiB9CiAKIHN0YXRpYyBIQU5E
TEUgb3Blbl9maWxlKGNvbnN0IGNoYXIgKmZpbGVuYW1lKQotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
