Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A282669AF
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 11:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A730C6E329;
	Fri, 12 Jul 2019 09:12:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28C66E326
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4C33EC05566C
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:45 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C9DDA1001DCB
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:44 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:12:37 +0200
Message-Id: <20190712091242.13214-3-victortoso@redhat.com>
In-Reply-To: <20190712091242.13214-1-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Fri, 12 Jul 2019 09:12:45 +0000 (UTC)
Subject: [Spice-devel] [linux/vd-agent v1 2/7] vdagent: fix memory leak of
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKRm91bmQgYnkgY292c2NhbjoK
CiB8IHNwaWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50L3ZkYWdlbnQuYzo0MzI6OTogd2Fy
bmluZzogUG90ZW50aWFsIGxlYWsgb2YgbWVtb3J5IHBvaW50ZWQgdG8gYnkgJ29yaWdfYXJndicK
IHwgIyAgICAgICAgZ19wcmludGVycigiSW52YWxpZCBhcmd1bWVudHMsICVzXG4iLCBlcnJvci0+
bWVzc2FnZSk7CiB8ICMgICAgICAgIF4KIHwgc3BpY2UtdmRhZ2VudC0wLjE5LjAvc3JjL3ZkYWdl
bnQvdmRhZ2VudC5jOjQxODoyNDogbm90ZTogTWVtb3J5IGlzIGFsbG9jYXRlZAogfCAjICAgIGNo
YXIgKipvcmlnX2FyZ3YgPSBnX21lbWR1cChhcmd2LCBzaXplb2YoY2hhciopICogKGFyZ2MrMSkp
OwogfCAjICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+CiB8IHNwaWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50L3ZkYWdlbnQu
Yzo0MzE6OTogbm90ZTogQXNzdW1pbmcgJ2Vycm9yJyBpcyBub3QgZXF1YWwgdG8gTlVMTAogfCAj
ICAgIGlmIChlcnJvciAhPSBOVUxMKSB7CiB8ICMgICAgICAgIF5+fn5+fn5+fn5+fn4KIHwgc3Bp
Y2UtdmRhZ2VudC0wLjE5LjAvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jOjQzMTo1OiBub3RlOiBUYWtp
bmcgdHJ1ZSBicmFuY2gKIHwgIyAgICBpZiAoZXJyb3IgIT0gTlVMTCkgewogfCAjICAgIF4KIHwg
c3BpY2UtdmRhZ2VudC0wLjE5LjAvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jOjQzMjo5OiBub3RlOiBQ
b3RlbnRpYWwgbGVhayBvZiBtZW1vcnkgcG9pbnRlZCB0byBieSAnb3JpZ19hcmd2JwogfCAjICAg
ICAgICBnX3ByaW50ZXJyKCJJbnZhbGlkIGFyZ3VtZW50cywgJXNcbiIsIGVycm9yLT5tZXNzYWdl
KTsKIHwgIyAgICAgICAgXgogfCAjICA0MzB8CiB8ICMgIDQzMXwgICAgICAgaWYgKGVycm9yICE9
IE5VTEwpIHsKIHwgIyAgNDMyfC0+ICAgICAgICAgZ19wcmludGVycigiSW52YWxpZCBhcmd1bWVu
dHMsICVzXG4iLCBlcnJvci0+bWVzc2FnZSk7CiB8ICMgIDQzM3wgICAgICAgICAgIGdfY2xlYXJf
ZXJyb3IoJmVycm9yKTsKIHwgIyAgNDM0fCAgICAgICAgICAgcmV0dXJuIC0xOwoKU2lnbmVkLW9m
Zi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBzcmMvdmRhZ2Vu
dC92ZGFnZW50LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jIGIvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jCmlu
ZGV4IDEzZWYyOWYuLmQ3OTlkMWYgMTAwNjQ0Ci0tLSBhL3NyYy92ZGFnZW50L3ZkYWdlbnQuYwor
KysgYi9zcmMvdmRhZ2VudC92ZGFnZW50LmMKQEAgLTQzMSw2ICs0MzEsNyBAQCBpbnQgbWFpbihp
bnQgYXJnYywgY2hhciAqYXJndltdKQogICAgIGlmIChlcnJvciAhPSBOVUxMKSB7CiAgICAgICAg
IGdfcHJpbnRlcnIoIkludmFsaWQgYXJndW1lbnRzLCAlc1xuIiwgZXJyb3ItPm1lc3NhZ2UpOwog
ICAgICAgICBnX2NsZWFyX2Vycm9yKCZlcnJvcik7CisgICAgICAgIGdfZnJlZShvcmlnX2FyZ3Yp
OwogICAgICAgICByZXR1cm4gLTE7CiAgICAgfQogCkBAIC00NDYsNiArNDQ3LDcgQEAgaW50IG1h
aW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKIAogICAgIGlmICghZ19maWxlX3Rlc3QocG9ydGRl
diwgR19GSUxFX1RFU1RfRVhJU1RTKSkgewogICAgICAgICBnX2RlYnVnKCJ2ZGFnZW50IHZpcnRp
byBjaGFubmVsICVzIGRvZXMgbm90IGV4aXN0LCBleGl0aW5nIiwgcG9ydGRldik7CisgICAgICAg
IGdfZnJlZShvcmlnX2FyZ3YpOwogICAgICAgICByZXR1cm4gMDsKICAgICB9CiAKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
