Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DBBCE171
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 14:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D000B6E5CD;
	Mon,  7 Oct 2019 12:19:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F2BD6E5C8
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AD7DB3C92D
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:39 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 387EC19C7F
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:39 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 14:19:32 +0200
Message-Id: <20191007121935.22567-5-victortoso@redhat.com>
In-Reply-To: <20191007121935.22567-1-victortoso@redhat.com>
References: <20191007121935.22567-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 07 Oct 2019 12:19:39 +0000 (UTC)
Subject: [Spice-devel] [spice v1 5/8] tests: migrate: style,
 break line of qmp's command
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKUHJlcGFyYXRvcnkgcGF0Y2gg
Zm9yIGFkZGluZyBzdXBwb3J0IHRvIGNoYW5nZSBob3N0bmFtZS4KClNpZ25lZC1vZmYtYnk6IFZp
Y3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogdGVzdHMvbWlncmF0ZS5weSB8
IDExICsrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL21pZ3JhdGUucHkgYi90ZXN0cy9taWdyYXRlLnB5
CmluZGV4IDNhZTllMDUzLi43NDJjOWZhYiAxMDA3NTUKLS0tIGEvdGVzdHMvbWlncmF0ZS5weQor
KysgYi90ZXN0cy9taWdyYXRlLnB5CkBAIC0xOTksOSArMTk5LDE0IEBAIGNsYXNzIE1pZ3JhdG9y
KG9iamVjdCk6CiAgICAgICAgIGlmIHNlbGYuY29ubmVjdGVkX2NsaWVudCBvciB3YWl0X3VzZXJf
Y29ubmVjdDoKICAgICAgICAgICAgIHdhaXRfZm9yX2V2ZW50KHNlbGYuYWN0aXZlLnFtcCwgJ1NQ
SUNFX0lOSVRJQUxJWkVEJykKIAotICAgICAgICBzZWxmLmFjdGl2ZS5xbXAuY21kKCdjbGllbnRf
bWlncmF0ZV9pbmZvJywgeydwcm90b2NvbCc6J3NwaWNlJywKLSAgICAgICAgICAgICdob3N0bmFt
ZSc6J2xvY2FsaG9zdCcsICdwb3J0JzpzZWxmLnRhcmdldC5zcGljZV9wb3J0fSkKLSAgICAgICAg
c2VsZi5hY3RpdmUucW1wLmNtZCgnbWlncmF0ZScsIHsndXJpJzogJ3RjcDpsb2NhbGhvc3Q6JXMn
ICUgc2VsZi5taWdyYXRpb25fcG9ydH0pCisgICAgICAgIHNlbGYuYWN0aXZlLnFtcC5jbWQoJ2Ns
aWVudF9taWdyYXRlX2luZm8nLCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICdw
cm90b2NvbCcgOiAnc3BpY2UnLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAnaG9z
dG5hbWUnIDogJ2xvY2FsaG9zdCcsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICdw
b3J0JyA6IHNlbGYudGFyZ2V0LnNwaWNlX3BvcnQKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB9KQorICAgICAgICBzZWxmLmFjdGl2ZS5xbXAuY21kKCdtaWdyYXRlJywgeworICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAndXJpJzogJ3RjcDpsb2NhbGhvc3Q6JXMnICUgc2VsZi5t
aWdyYXRpb25fcG9ydAorICAgICAgICAgICAgICAgICAgICAgICAgICAgIH0pCiAgICAgICAgIHdh
aXRfYWN0aXZlKHNlbGYuYWN0aXZlLnFtcCwgRmFsc2UpCiAgICAgICAgIHdhaXRfYWN0aXZlKHNl
bGYudGFyZ2V0LnFtcCwgVHJ1ZSkKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
