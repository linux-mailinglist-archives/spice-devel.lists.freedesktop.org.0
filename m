Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6DC1485A
	for <lists+spice-devel@lfdr.de>; Mon,  6 May 2019 12:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC3AD89842;
	Mon,  6 May 2019 10:32:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EA99897EF
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 10:31:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BAA13308FED2
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 10:31:58 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3DE14611D0
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 10:31:58 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  6 May 2019 10:31:56 +0000
Message-Id: <20190506103156.14925-2-victortoso@redhat.com>
In-Reply-To: <20190506103156.14925-1-victortoso@redhat.com>
References: <20190506103156.14925-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 06 May 2019 10:31:58 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 2/2] channel-webdav: do not handle
 vmc_data message twice
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKVGhpcyBpcyBhIHJlZ3Jlc3Np
b24gZnJvbSBjb21taXQgYWFlMDdmYiBpbiAyMDE3LTAzLTI3IGJ5IFZpY3RvciBUb3NvCjxtZUB2
aWN0b3J0b3NvLmNvbT4uIFRoZSBtZXNzYWdlIGlzIGhhbmRsZWQgYnkgY2hhbm5lbC13ZWJkYXYg
YW5kCnNob3VsZCBub3QgYmUgZXhwb3NlZCBub3IgaGFuZGxlZCBlbHNld2hlcmUuCgpGb3VuZCB0
aGlzIHdoaWxlIGluc3BlY3RpbmcgdGhlIGNvZGUsIHRoZXJlIGlzIG5vdCByZWFsIHNpZGUgZWZm
ZWN0CmFzIG5vIG9uZSB0cnlpbmcgdG8gaGFuZGxlIHBvcnQtZGF0YSBmcm9tIHdlYmRhdidzIGNo
YW5uZWwtcG9ydC4KClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhh
dC5jb20+Ci0tLQogc3JjL2NoYW5uZWwtd2ViZGF2LmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5l
bC13ZWJkYXYuYyBiL3NyYy9jaGFubmVsLXdlYmRhdi5jCmluZGV4IDE5NWFlMzQuLmI1YWY1YTkg
MTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLXdlYmRhdi5jCisrKyBiL3NyYy9jaGFubmVsLXdlYmRh
di5jCkBAIC02MDcsOCArNjA3LDEwIEBAIHN0YXRpYyB2b2lkIHNwaWNlX3dlYmRhdl9oYW5kbGVf
bXNnKFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqbXNnKQogCiAgICAgcGFyZW50
X2NsYXNzID0gU1BJQ0VfQ0hBTk5FTF9DTEFTUyhzcGljZV93ZWJkYXZfY2hhbm5lbF9wYXJlbnRf
Y2xhc3MpOwogCi0gICAgaWYgKHR5cGUgPT0gU1BJQ0VfTVNHX1NQSUNFVk1DX0RBVEEpCisgICAg
aWYgKHR5cGUgPT0gU1BJQ0VfTVNHX1NQSUNFVk1DX0RBVEEpIHsKICAgICAgICAgd2ViZGF2X2hh
bmRsZV9kYXRhX21zZyhjaGFubmVsLCBtc2cpOworICAgICAgICByZXR1cm47CisgICAgfQogCiAg
ICAgLyogVGhlIG9ubHkgbWVzc2FnZSB0aGF0IHdlIG5lZWQgdG8gaGFuZGxlIG91cnNlbHZlcyBp
cyBTUElDRV9NU0dfU1BJQ0VWTUNfREFUQQogICAgICAqIGFzIHdlIHdhbnQgdG8gcmVhZCBpdCB3
aXRoIHNwaWNlX3ZtY19pbnB1dC9vdXRwdXRfc3RyZWFtIHRvIGhhbmRsZQotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
