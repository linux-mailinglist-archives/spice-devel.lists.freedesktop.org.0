Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AC1C9BD7
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 12:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D2C6E104;
	Thu,  3 Oct 2019 10:14:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6837D6E104
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 10:14:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 12627309B6C4
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 10:14:25 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 902C35D9DC
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 10:14:24 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  3 Oct 2019 12:14:21 +0200
Message-Id: <20191003101423.732-2-victortoso@redhat.com>
In-Reply-To: <20191003101423.732-1-victortoso@redhat.com>
References: <20191003101423.732-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 03 Oct 2019 10:14:25 +0000 (UTC)
Subject: [Spice-devel] [spice/tests/migrate v1 2/4] tests: migrate: wait
 user launch client option
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKVXNlZnVsIHRvIHRlc3QgZGlm
ZmVyZW50IGNsaWVudHMgcnVubmluZyBkaWZmZXJlbnQgdG9vbHMgKGdkYiwKdmFsZ3JpbmQpLgoK
U2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiB0
ZXN0cy9taWdyYXRlLnB5IHwgMTMgKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5
IGIvdGVzdHMvbWlncmF0ZS5weQppbmRleCA1ZWQ5ZWJhNC4uODhlMTc2OTEgMTAwNzU1Ci0tLSBh
L3Rlc3RzL21pZ3JhdGUucHkKKysrIGIvdGVzdHMvbWlncmF0ZS5weQpAQCAtNjMsNiArNjMsOCBA
QCBkZWYgZ2V0X2FyZ3MoKToKICAgICAgICAgICAgICAgICAgICAgICAgIGhlbHA9IkFwcGVuZCBv
cHRpb25zIGZvciBhZ2VudCdzIHZpcnRzZXJpYWxwb3J0IikKICAgICBwYXJzZXIuYWRkX2FyZ3Vt
ZW50KCctLXdhaXQtdXNlci1pbnB1dCcsIGRlc3Q9IndhaXRfdXNlcl9pbnB1dCIsIGFjdGlvbj0n
c3RvcmVfdHJ1ZScsIGRlZmF1bHQ9RmFsc2UsCiAgICAgICAgICAgICAgICAgICAgICAgICBoZWxw
PSJXYWl0IHVzZXIncyBpbnB1dCB0byBzdGFydCBtaWdyYXRpb24gdGVzdCIpCisgICAgcGFyc2Vy
LmFkZF9hcmd1bWVudCgnLS13YWl0LXVzZXItY29ubmVjdCcsIGRlc3Q9IndhaXRfdXNlcl9jb25u
ZWN0IiwgYWN0aW9uPSdzdG9yZV90cnVlJywgZGVmYXVsdD1GYWxzZSwKKyAgICAgICAgICAgICAg
ICAgICAgICAgIGhlbHA9IldhaXQgc3BpY2UgY2xpZW50IHRvIGNvbm5lY3QgdG8gbW92ZSB0byBu
ZXh0IHN0ZXAgb2YgbWlncmF0aW9uIChkZWZhdWx0IEZhbHNlKSIpCiAgICAgcGFyc2VyLmFkZF9h
cmd1bWVudCgnLS1jb3VudCcsIGRlc3Q9J2NvdW50ZXInLCB0eXBlPWludCwgZGVmYXVsdD0xMDAs
CiAgICAgICAgICAgICAgICAgICAgICAgICBoZWxwPSJOdW1iZXIgb2YgbWlncmF0aW9ucyB0byBy
dW4gKHNldCAwIGZvciBpbmZpbml0ZSkiKQogICAgIGFyZ3MgPSBwYXJzZXIucGFyc2VfYXJncyhz
eXMuYXJndlsxOl0pCkBAIC0xNzQsMjUgKzE3NiwyOCBAQCBjbGFzcyBNaWdyYXRvcihvYmplY3Qp
OgogICAgICAgICAgICAgaWYgb3MucGF0aC5leGlzdHMoeCk6CiAgICAgICAgICAgICAgICAgb3Mu
dW5saW5rKHgpCiAKLSAgICBkZWYgaXRlcmF0ZShzZWxmLCB3YWl0X2Zvcl91c2VyX2lucHV0PUZh
bHNlKToKKyAgICBkZWYgaXRlcmF0ZShzZWxmLCB3YWl0X2Zvcl91c2VyX2lucHV0PUZhbHNlLCB3
YWl0X3VzZXJfY29ubmVjdD1GYWxzZSk6CiAgICAgICAgIHdhaXRfYWN0aXZlKHNlbGYuYWN0aXZl
LnFtcCwgVHJ1ZSkKICAgICAgICAgd2FpdF9hY3RpdmUoc2VsZi50YXJnZXQucW1wLCBGYWxzZSkK
ICAgICAgICAgaWYgbm90IHNlbGYuY29ubmVjdGVkX2NsaWVudDoKICAgICAgICAgICAgIGlmIHNl
bGYuY2xpZW50OgogICAgICAgICAgICAgICAgIHNlbGYuY29ubmVjdGVkX2NsaWVudCA9IHN0YXJ0
X2NsaWVudChjbGllbnQ9c2VsZi5jbGllbnQsIHNwaWNlX3BvcnQ9c2VsZi5zcGljZV9wb3J0c1sw
XSkKLSAgICAgICAgICAgICAgICB3YWl0X2Zvcl9ldmVudChzZWxmLmFjdGl2ZS5xbXAsICdTUElD
RV9JTklUSUFMSVpFRCcpCiAKICAgICAgICAgICAgIGlmIHdhaXRfZm9yX3VzZXJfaW5wdXQ6CiAg
ICAgICAgICAgICAgICAgcHJpbnQgIndhaXRpbmcgZm9yIEVudGVyIHRvIHN0YXJ0IG1pZ3JhdGlv
bnMiCiAgICAgICAgICAgICAgICAgcmF3X2lucHV0KCkKIAorICAgICAgICAjIFRlc3RlciBjYW4g
bGF1bmNoIGl0cyBvd24gY2xpZW50IG9yIHdlIHdhaXQgc3RhcnRfY2xpZW50KCkgdG8gY29ubmVj
dAorICAgICAgICBpZiB3YWl0X3VzZXJfY29ubmVjdDoKKyAgICAgICAgICAgIHdhaXRfZm9yX2V2
ZW50KHNlbGYuYWN0aXZlLnFtcCwgJ1NQSUNFX0lOSVRJQUxJWkVEJykKKwogICAgICAgICBzZWxm
LmFjdGl2ZS5xbXAuY21kKCdjbGllbnRfbWlncmF0ZV9pbmZvJywgeydwcm90b2NvbCc6J3NwaWNl
JywKICAgICAgICAgICAgICdob3N0bmFtZSc6J2xvY2FsaG9zdCcsICdwb3J0JzpzZWxmLnRhcmdl
dC5zcGljZV9wb3J0fSkKICAgICAgICAgc2VsZi5hY3RpdmUucW1wLmNtZCgnbWlncmF0ZScsIHsn
dXJpJzogJ3RjcDpsb2NhbGhvc3Q6JXMnICUgc2VsZi5taWdyYXRpb25fcG9ydH0pCiAgICAgICAg
IHdhaXRfYWN0aXZlKHNlbGYuYWN0aXZlLnFtcCwgRmFsc2UpCiAgICAgICAgIHdhaXRfYWN0aXZl
KHNlbGYudGFyZ2V0LnFtcCwgVHJ1ZSkKIAotICAgICAgICBpZiBzZWxmLmNvbm5lY3RlZF9jbGll
bnQ6CisgICAgICAgIGlmIHNlbGYuY29ubmVjdGVkX2NsaWVudCBvciB3YWl0X3VzZXJfY29ubmVj
dDoKICAgICAgICAgICAgIHdhaXRfZm9yX2V2ZW50KHNlbGYudGFyZ2V0LnFtcCwgJ1NQSUNFX0NP
Tk5FQ1RFRCcpCiAKICAgICAgICAgZGVhZCA9IHNlbGYuYWN0aXZlCkBAIC0yMjQsNyArMjI5LDcg
QEAgZGVmIG1haW4oKToKICAgICBhdGV4aXQucmVnaXN0ZXIoY2xlYW51cCwgbWlncmF0b3IpCiAg
ICAgY291bnRlciA9IDAKICAgICB3aGlsZSBhcmdzLmNvdW50ZXIgPT0gMCBvciBjb3VudGVyIDwg
YXJncy5jb3VudGVyOgotICAgICAgICBtaWdyYXRvci5pdGVyYXRlKGFyZ3Mud2FpdF91c2VyX2lu
cHV0KQorICAgICAgICBtaWdyYXRvci5pdGVyYXRlKGFyZ3Mud2FpdF91c2VyX2lucHV0LCBhcmdz
LndhaXRfdXNlcl9jb25uZWN0KQogICAgICAgICBjb3VudGVyICs9IDEKIAogaWYgX19uYW1lX18g
PT0gJ19fbWFpbl9fJzoKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
