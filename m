Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255699EC2A
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 17:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990D38982E;
	Tue, 27 Aug 2019 15:17:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 333D38982D
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 15:17:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BC73B2CE972
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 15:17:03 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 348BF5D6B0;
 Tue, 27 Aug 2019 15:17:00 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 17:16:59 +0200
Message-Id: <20190827151659.548-1-victortoso@redhat.com>
In-Reply-To: <16bd5118-b320-6a51-5c28-dd339514fc63@redhat.com>
References: <16bd5118-b320-6a51-5c28-dd339514fc63@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 27 Aug 2019 15:17:03 +0000 (UTC)
Subject: [Spice-devel] [PATCH] covscan: add comment on false-positive on
 g_memdup()
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKUHJldmlvdXMgY29tbWl0IHNl
dCBsYXN0IGVsZW1lbnQgb2Ygb3JpZ19hcmd2IGFycmF5IHRvIE5VTEwuClRoYXQncyByZWR1bmRh
bnQgYXMgZ19tZW1kdXAoKSB1c2VzIG1lbWNweSgpIGFuZCBpdCB3b3VsZCBkbwpqdXN0IHRoYXQu
IEFkZCBhIGNvbW1lbnQgdGhhdCB0aGUgcmVhc29uIGZvciB0aGlzIGNoYW5nZSBpcwp0byB3b3Jr
YXJvdW5kIGNsYW5nJ3Mgd2FybmluZy4KClN1Z2dlc3RlZCBieSBVcmkuClNpZ25lZC1vZmYtYnk6
IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogc3JjL3ZkYWdlbnQvdmRh
Z2VudC5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jIGIvc3JjL3ZkYWdl
bnQvdmRhZ2VudC5jCmluZGV4IDViMTQ2ZGIuLmE5NDQyMTQgMTAwNjQ0Ci0tLSBhL3NyYy92ZGFn
ZW50L3ZkYWdlbnQuYworKysgYi9zcmMvdmRhZ2VudC92ZGFnZW50LmMKQEAgLTQxOCwxMCArNDE4
LDggQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKICAgICBHT3B0aW9uQ29udGV4
dCAqY29udGV4dDsKICAgICBHRXJyb3IgKmVycm9yID0gTlVMTDsKICAgICBWREFnZW50ICphZ2Vu
dDsKLSAgICBjaGFyICoqb3JpZ19hcmd2OwotCi0gICAgb3JpZ19hcmd2ID0gZ19tZW1kdXAoYXJn
diwgc2l6ZW9mKGNoYXIqKSAqIChhcmdjKzEpKTsKLSAgICBvcmlnX2FyZ3ZbYXJnY10gPSBOVUxM
OworICAgIGNoYXIgKipvcmlnX2FyZ3YgPSBnX21lbWR1cChhcmd2LCBzaXplb2YoY2hhciopICog
KGFyZ2MrMSkpOworICAgIG9yaWdfYXJndlthcmdjXSA9IE5VTEw7IC8qIFRvIGF2b2lkIGNsYW5n
IGFuYWx5emVyIGZhbHNlLXBvc2l0aXZlICovCiAKICAgICBjb250ZXh0ID0gZ19vcHRpb25fY29u
dGV4dF9uZXcoTlVMTCk7CiAgICAgZ19vcHRpb25fY29udGV4dF9hZGRfbWFpbl9lbnRyaWVzKGNv
bnRleHQsIGVudHJpZXMsIE5VTEwpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
