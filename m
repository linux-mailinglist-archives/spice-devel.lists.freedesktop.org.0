Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A09107E8
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 14:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA85F89381;
	Wed,  1 May 2019 12:31:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9F9B8935B
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 12:31:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 782CC308AA11
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 12:31:37 +0000 (UTC)
Received: from dhcp-4-106.tlv.redhat.com (dhcp-4-106.tlv.redhat.com
 [10.35.4.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DB25D81C37
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 12:31:36 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  1 May 2019 15:31:33 +0300
Message-Id: <20190501123135.1321-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 01 May 2019 12:31:37 +0000 (UTC)
Subject: [Spice-devel] [PATCH v2 spice-streaming-agent 1/3] gst-plugin:
 Initialize X connection also when ximagesrc is used
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

SW4gb3JkZXIgdG8gZ2V0IGdyYXBoaWMgZGV2aWNlcyBpbmZvIGEgY29ubmVjdGlvbiB0byBYIHNl
cnZlcgppcyByZXF1aXJlZCwgbWFrZSBzdXJlIHdlIGdldCBpdCBhbHNvIHdoZW4geGltYWdlc3Jj
IGNhcHR1cmUKaXMgdXNlZCAoIFhMSUJfQ0FQVFVSRT0wICkuCgpTaWduZWQtb2ZmLWJ5OiBTbmly
IFNoZXJpYmVyIDxzc2hlcmliZUByZWRoYXQuY29tPgotLS0KCkNoYW5nZXMgZnJvbSB2MToKLXJl
bW92ZSB1bm5lY2Vzc2FyeSBjaGVjawotbWFrZSAqZHB5IGNvbnN0Ci1hZGRlZCB0d28gbWlub3Ig
Zm9sbG93IHVwIHBhdGNoZXMgKG5vdCByZWFsbHkgbmVjZXNzYXJ5KQoKCgotLS0KIHNyYy9nc3Qt
cGx1Z2luLmNwcCB8IDE2ICsrKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9nc3QtcGx1Z2luLmNw
cCBiL3NyYy9nc3QtcGx1Z2luLmNwcAppbmRleCAzZWRmOWY1Li44MGI1NmFlIDEwMDY0NAotLS0g
YS9zcmMvZ3N0LXBsdWdpbi5jcHAKKysrIGIvc3JjL2dzdC1wbHVnaW4uY3BwCkBAIC04NCw5ICs4
NCw5IEBAIHByaXZhdGU6CiAgICAgR3N0RWxlbWVudCAqZ2V0X2VuY29kZXJfcGx1Z2luKGNvbnN0
IEdzdHJlYW1lckVuY29kZXJTZXR0aW5ncyAmc2V0dGluZ3MsIEdzdENhcHNVUHRyICZzaW5rX2Nh
cHMpOwogICAgIEdzdEVsZW1lbnQgKmdldF9jYXB0dXJlX3BsdWdpbihjb25zdCBHc3RyZWFtZXJF
bmNvZGVyU2V0dGluZ3MgJnNldHRpbmdzKTsKICAgICB2b2lkIHBpcGVsaW5lX2luaXQoY29uc3Qg
R3N0cmVhbWVyRW5jb2RlclNldHRpbmdzICZzZXR0aW5ncyk7CisgICAgRGlzcGxheSAqY29uc3Qg
ZHB5OwogI2lmIFhMSUJfQ0FQVFVSRQogICAgIHZvaWQgeGxpYl9jYXB0dXJlKCk7Ci0gICAgRGlz
cGxheSAqZHB5OwogICAgIFhJbWFnZSAqaW1hZ2UgPSBudWxscHRyOwogI2VuZGlmCiAgICAgR3N0
T2JqZWN0VVB0cjxHc3RFbGVtZW50PiBwaXBlbGluZSwgY2FwdHVyZSwgc2luazsKQEAgLTI1MSwx
MyArMjUxLDYgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBpcGVsaW5lX2luaXQoY29u
c3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzICZzZXR0aW4KICAgICAgICAgdGhyb3cgc3RkOjpy
dW50aW1lX2Vycm9yKCJMaW5raW5nIGdzdHJlYW1lcidzIGVsZW1lbnRzIGZhaWxlZCIpOwogICAg
IH0KIAotI2lmIFhMSUJfQ0FQVFVSRQotICAgIGRweSA9IFhPcGVuRGlzcGxheShudWxscHRyKTsK
LSAgICBpZiAoIWRweSkgewotICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIlVuYWJs
ZSB0byBpbml0aWFsaXplIFgxMSIpOwotICAgIH0KLSNlbmRpZgotCiAgICAgZ3N0X2VsZW1lbnRf
c2V0X3N0YXRlKHBpcGVsaW5lLmdldCgpLCBHU1RfU1RBVEVfUExBWUlORyk7CiAKICNpZiAhWExJ
Ql9DQVBUVVJFCkBAIC0yOTAsOCArMjgzLDExIEBAIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJl
OjpwaXBlbGluZV9pbml0KGNvbnN0IEdzdHJlYW1lckVuY29kZXJTZXR0aW5ncyAmc2V0dGluCiB9
CiAKIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6R3N0cmVhbWVyRnJhbWVDYXB0dXJlKGNvbnN0IEdz
dHJlYW1lckVuY29kZXJTZXR0aW5ncyAmc2V0dGluZ3MpOgotICAgIHNldHRpbmdzKHNldHRpbmdz
KQorICAgIGRweShYT3BlbkRpc3BsYXkobnVsbHB0cikpLHNldHRpbmdzKHNldHRpbmdzKQogewor
ICAgIGlmICghZHB5KSB7CisgICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiVW5hYmxl
IHRvIGluaXRpYWxpemUgWDExIik7CisgICAgfQogICAgIHBpcGVsaW5lX2luaXQoc2V0dGluZ3Mp
OwogfQogCkBAIC0zMTMsOSArMzA5LDcgQEAgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjp+R3N0cmVh
bWVyRnJhbWVDYXB0dXJlKCkKIHsKICAgICBmcmVlX3NhbXBsZSgpOwogICAgIGdzdF9lbGVtZW50
X3NldF9zdGF0ZShwaXBlbGluZS5nZXQoKSwgR1NUX1NUQVRFX05VTEwpOwotI2lmIFhMSUJfQ0FQ
VFVSRQogICAgIFhDbG9zZURpc3BsYXkoZHB5KTsKLSNlbmRpZgogfQogCiB2b2lkIEdzdHJlYW1l
ckZyYW1lQ2FwdHVyZTo6UmVzZXQoKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
