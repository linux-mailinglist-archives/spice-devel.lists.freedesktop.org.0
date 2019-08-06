Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1023782ED4
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 11:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8AE6E347;
	Tue,  6 Aug 2019 09:39:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1936E347
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 09:39:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 886343C937
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 09:39:52 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.14])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C6D81100032A;
 Tue,  6 Aug 2019 09:39:51 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Aug 2019 10:39:47 +0100
Message-Id: <20190806093947.948-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 06 Aug 2019 09:39:52 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-html5] Fix double string termination in
 HTML page
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c3BpY2UuaHRtbCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL3NwaWNlLmh0bWwgYi9zcGljZS5odG1sCmluZGV4IDE3N2Nm
YzIuLmZjMWFkZjYgMTAwNjQ0Ci0tLSBhL3NwaWNlLmh0bWwKKysrIGIvc3BpY2UuaHRtbApAQCAt
MTc2LDcgKzE3Niw3IEBACiAgICAgICAgICAgICA8bGFiZWwgZm9yPSJob3N0Ij5Ib3N0OjwvbGFi
ZWw+IDxpbnB1dCB0eXBlPSd0ZXh0JyBpZD0naG9zdCcgdmFsdWU9J2xvY2FsaG9zdCc+IDwhLS0g
bG9jYWxob3N0IC0tPgogICAgICAgICAgICAgPGxhYmVsIGZvcj0icG9ydCI+UG9ydDo8L2xhYmVs
PiA8aW5wdXQgdHlwZT0ndGV4dCcgaWQ9J3BvcnQnIHZhbHVlPSc1OTU5Jz4KICAgICAgICAgICAg
IDxsYWJlbCBmb3I9InBhc3N3b3JkIj5QYXNzd29yZDo8L2xhYmVsPiA8aW5wdXQgdHlwZT0ncGFz
c3dvcmQnIGlkPSdwYXNzd29yZCcgdmFsdWU9Jyc+Ci0gICAgICAgICAgICA8bGFiZWwgZm9yPSJz
aG93X2NvbnNvbGUiPlNob3cgY29uc29sZSA8L2xhYmVsPjxpbnB1dCB0eXBlPSJjaGVja2JveCIg
aWQ9InNob3dfY29uc29sZSIgdmFsdWU9IjEiIj4KKyAgICAgICAgICAgIDxsYWJlbCBmb3I9InNo
b3dfY29uc29sZSI+U2hvdyBjb25zb2xlIDwvbGFiZWw+PGlucHV0IHR5cGU9ImNoZWNrYm94IiBp
ZD0ic2hvd19jb25zb2xlIiB2YWx1ZT0iMSI+CiAgICAgICAgICAgICA8YnV0dG9uIGlkPSJjb25u
ZWN0QnV0dG9uIj5TdGFydDwvYnV0dG9uPgogICAgICAgICA8L2Rpdj4KIAotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
