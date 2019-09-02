Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 816EFA5B12
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 18:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2EA8919A;
	Mon,  2 Sep 2019 16:04:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74AF18919A
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2001C18B3D82
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:54 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9D2CF5D9C3
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:53 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 18:04:47 +0200
Message-Id: <20190902160449.19589-5-victortoso@redhat.com>
In-Reply-To: <20190902160449.19589-1-victortoso@redhat.com>
References: <20190902160449.19589-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Mon, 02 Sep 2019 16:04:54 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 4/6] session: gst_deinit() GStreamer if
 we initialize it
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKTGV0J3MgZ3N0X2RlaW5pdCgp
IGlmIHdlIGluaXRpYWxpemUgaXQgZm9yIHRoZSBzYW1lIHJhdGlvbmFsZSBwb2ludGVkIG91dApp
biAwMzgxZTYyICJzcGljeTogQWRkIGNhbGwgb2YgZ3N0X2RlaW5pdCBhdCBwcm9ncmFtIGV4aXQi
IGluCjIwMTctMTAtMjAgYnkgQ2hyaXN0b3BoZSBkZSBEaW5lY2hpbiA8ZGluZWNoaW5AcmVkaGF0
LmNvbT4KClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+
Ci0tLQogc3JjL3NwaWNlLXNlc3Npb24uYyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zcmMvc3BpY2Utc2Vzc2lvbi5jIGIvc3JjL3Nw
aWNlLXNlc3Npb24uYwppbmRleCBkYjQwYTUzLi4yMTM1MzQ4IDEwMDY0NAotLS0gYS9zcmMvc3Bp
Y2Utc2Vzc2lvbi5jCisrKyBiL3NyYy9zcGljZS1zZXNzaW9uLmMKQEAgLTEyMyw2ICsxMjMsOCBA
QCBzdHJ1Y3QgX1NwaWNlU2Vzc2lvblByaXZhdGUgewogICAgIGdjaGFyICAgICAgICAgICAgICpu
YW1lOwogICAgIFNwaWNlSW1hZ2VDb21wcmVzc2lvbiBwcmVmZXJyZWRfY29tcHJlc3Npb247CiAK
KyAgICBib29sICAgICAgICAgICAgICBnc3RfaW5pdF9ieV9zcGljZTsKKwogICAgIC8qIGFzc29j
aWF0ZWQgb2JqZWN0cyAqLwogICAgIFNwaWNlQXVkaW8gICAgICAgICphdWRpb19tYW5hZ2VyOwog
ICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqdXNiX21hbmFnZXI7CkBAIC0zNDMsNiArMzQ1LDEw
IEBAIHNwaWNlX3Nlc3Npb25fZGlzcG9zZShHT2JqZWN0ICpnb2JqZWN0KQogICAgIGdfd2Fybl9p
Zl9mYWlsKHMtPmNoYW5uZWxzX2Rlc3Ryb3lpbmcgPT0gMCk7CiAgICAgZ193YXJuX2lmX2ZhaWwo
cy0+Y2hhbm5lbHMgPT0gTlVMTCk7CiAKKyAgICBpZiAoc2Vzc2lvbi0+cHJpdi0+Z3N0X2luaXRf
Ynlfc3BpY2UpIHsKKyAgICAgICAgZ3N0X2RlaW5pdCgpOworICAgIH0KKwogICAgIGdfY2xlYXJf
b2JqZWN0KCZzLT5hdWRpb19tYW5hZ2VyKTsKICAgICBnX2NsZWFyX29iamVjdCgmcy0+dXNiX21h
bmFnZXIpOwogICAgIGdfY2xlYXJfb2JqZWN0KCZzLT5wcm94eSk7CkBAIC0yODg4LDUgKzI4OTQs
NyBAQCBzcGljZV9zZXNzaW9uX2VuYWJsZV9nc3RyZWFtZXIoU3BpY2VTZXNzaW9uICpzZXNzaW9u
KQogICAgIGlmICghZ3N0X2luaXRfY2hlY2soTlVMTCwgTlVMTCwgJmVycikpIHsKICAgICAgICAg
c3BpY2Vfd2FybmluZygiRGlzYWJsaW5nIEdTdHJlYW1lciB2aWRlbyBzdXBwb3J0OiAlcyIsIGVy
ci0+bWVzc2FnZSk7CiAgICAgICAgIGdfY2xlYXJfZXJyb3IoJmVycik7CisgICAgfSBlbHNlIHsK
KyAgICAgICAgc2Vzc2lvbi0+cHJpdi0+Z3N0X2luaXRfYnlfc3BpY2UgPSB0cnVlOwogICAgIH0K
IH0KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
