Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA6C55C88
	for <lists+spice-devel@lfdr.de>; Wed, 26 Jun 2019 01:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D596E1C0;
	Tue, 25 Jun 2019 23:45:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D6FC6E1C0
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 23:44:59 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hfv7x-0003Mb-R1
 for spice-devel@lists.freedesktop.org; Tue, 25 Jun 2019 18:45:30 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hfv7Q-00007T-J8
 for spice-devel@lists.freedesktop.org; Wed, 26 Jun 2019 01:44:56 +0200
Date: Wed, 26 Jun 2019 01:44:56 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <9e4beeec69d6cb7be4e5c9d4b292f2761d5158e2.1561506197.git.fgouget@free.fr>
Message-ID: <34fdad6bc6b152e332cc362b8477502e02857466.1561506197.git.fgouget@free.fr>
References: <9e4beeec69d6cb7be4e5c9d4b292f2761d5158e2.1561506197.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  display_handle_stream_data() now has its own mechanism to
 avoid dropping frames which does not depend on the playback latency.
 Signed-off-by:
 Francois Gouget <fgouget@codeweavers.com> --- src/channel-display-priv.h
 | 2 -- src/channel-display.c | 8 -------- src/channel-playback-priv.h | 1
 - src/channel-playback.c | 9 --------- [...] 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wj+ma79/qRS+j85z2b65LdTMOw+yyzu6tA4WyIc7AAY=; b=wMhmSxtzMnb7vWuY1z6HaqebD
 B3lS6/b0AYJlTvx2QrEn7tkPHVVNz5aNkjVHzwZaNsrtMwgAwIR3hDRGi63CV1iqoao6VZ+R/+NpZ
 CmCT9/A3R+T1QojIayTooOhyfihTugfTadJBoURcn1BHjcxXh8ljdkldSszs4GjV9aCkk=;
Subject: [Spice-devel] [client v3 4/6] channel-display: Remove
 playback_sync_drops_seq_len
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

ZGlzcGxheV9oYW5kbGVfc3RyZWFtX2RhdGEoKSBub3cgaGFzIGl0cyBvd24gbWVjaGFuaXNtIHRv
IGF2b2lkCmRyb3BwaW5nIGZyYW1lcyB3aGljaCBkb2VzIG5vdCBkZXBlbmQgb24gdGhlIHBsYXli
YWNrIGxhdGVuY3kuCgpTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29k
ZXdlYXZlcnMuY29tPgotLS0KIHNyYy9jaGFubmVsLWRpc3BsYXktcHJpdi5oICB8ICAyIC0tCiBz
cmMvY2hhbm5lbC1kaXNwbGF5LmMgICAgICAgfCAgOCAtLS0tLS0tLQogc3JjL2NoYW5uZWwtcGxh
eWJhY2stcHJpdi5oIHwgIDEgLQogc3JjL2NoYW5uZWwtcGxheWJhY2suYyAgICAgIHwgIDkgLS0t
LS0tLS0tCiBzcmMvc3BpY2Utc2Vzc2lvbi1wcml2LmggICAgfCAgMSAtCiBzcmMvc3BpY2Utc2Vz
c2lvbi5jICAgICAgICAgfCAxNSAtLS0tLS0tLS0tLS0tLS0KIDYgZmlsZXMgY2hhbmdlZCwgMzYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2LmggYi9z
cmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaAppbmRleCA2NjI4OTUxZC4uYTA1NWIyMDMgMTAwNjQ0
Ci0tLSBhL3NyYy9jaGFubmVsLWRpc3BsYXktcHJpdi5oCisrKyBiL3NyYy9jaGFubmVsLWRpc3Bs
YXktcHJpdi5oCkBAIC0xNTEsOCArMTUxLDYgQEAgc3RydWN0IGRpc3BsYXlfc3RyZWFtIHsKICAg
ICBHQXJyYXkgICAgICAgICAgICAgICAqZHJvcHNfc2Vxc19zdGF0c19hcnI7CiAgICAgdWludDMy
X3QgICAgICAgICAgICAgbnVtX2Ryb3BzX3NlcXM7CiAKLSAgICB1aW50MzJfdCAgICAgICAgICAg
ICBwbGF5YmFja19zeW5jX2Ryb3BzX3NlcV9sZW47Ci0KICAgICAvKiBwbGF5YmFjayBxdWFsaXR5
IHJlcG9ydCB0byBzZXJ2ZXIgKi8KICAgICBnYm9vbGVhbiByZXBvcnRfaXNfYWN0aXZlOwogICAg
IHVpbnQzMl90IHJlcG9ydF9pZDsKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYyBi
L3NyYy9jaGFubmVsLWRpc3BsYXkuYwppbmRleCA5ZWYyMDU0ZS4uMDAxZmJjNWMgMTAwNjQ0Ci0t
LSBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYworKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LmMKQEAg
LTE0ODQsOCArMTQ4NCw2IEBAIHN0YXRpYyB2b2lkIGRpc3BsYXlfdXBkYXRlX3N0cmVhbV9yZXBv
cnQoU3BpY2VEaXNwbGF5Q2hhbm5lbCAqY2hhbm5lbCwgdWludDMyX3QKICAgICB9CiB9CiAKLSNk
ZWZpbmUgU1RSRUFNX1BMQVlCQUNLX1NZTkNfRFJPUF9TRVFfTEVOX0xJTUlUIDUKLQogc3RhdGlj
IHZvaWQgZGlzcGxheV9zdHJlYW1fc3RhdHNfZGVidWcoZGlzcGxheV9zdHJlYW0gKnN0KQogewog
ICAgIGd1aW50NjQgZHJvcHNfZHVyYXRpb25fdG90YWwgPSAwOwpAQCAtMTU2Nyw3ICsxNTY1LDYg
QEAgc3RhdGljIHZvaWQgZGlzcGxheV9zdHJlYW1fc3RhdHNfc2F2ZShkaXNwbGF5X3N0cmVhbSAq
c3QsCiAgICAgICAgICAgICBzdC0+Y3VyX2Ryb3BzX3NlcV9zdGF0cy5zdGFydF9tbV90aW1lID0g
ZnJhbWVfbW10aW1lOwogICAgICAgICB9CiAgICAgICAgIHN0LT5jdXJfZHJvcHNfc2VxX3N0YXRz
LmxlbisrOwotICAgICAgICBzdC0+cGxheWJhY2tfc3luY19kcm9wc19zZXFfbGVuKys7CiAgICAg
ICAgIHJldHVybjsKICAgICB9CiAKQEAgLTE1NzksNyArMTU3Niw2IEBAIHN0YXRpYyB2b2lkIGRp
c3BsYXlfc3RyZWFtX3N0YXRzX3NhdmUoZGlzcGxheV9zdHJlYW0gKnN0LAogICAgICAgICBtZW1z
ZXQoJnN0LT5jdXJfZHJvcHNfc2VxX3N0YXRzLCAwLCBzaXplb2Yoc3QtPmN1cl9kcm9wc19zZXFf
c3RhdHMpKTsKICAgICAgICAgc3QtPm51bV9kcm9wc19zZXFzKys7CiAgICAgfQotICAgIHN0LT5w
bGF5YmFja19zeW5jX2Ryb3BzX3NlcV9sZW4gPSAwOwogfQogCiBzdGF0aWMgU3BpY2VGcmFtZSAq
c3BpY2VfZnJhbWVfbmV3KGRpc3BsYXlfc3RyZWFtICpzdCwKQEAgLTE4MDIsMTAgKzE3OTgsNiBA
QCBzdGF0aWMgdm9pZCBkaXNwbGF5X2hhbmRsZV9zdHJlYW1fZGF0YShTcGljZUNoYW5uZWwgKmNo
YW5uZWwsIFNwaWNlTXNnSW4gKmluKQogICAgIGlmIChjLT5lbmFibGVfYWRhcHRpdmVfc3RyZWFt
aW5nKSB7CiAgICAgICAgIGRpc3BsYXlfdXBkYXRlX3N0cmVhbV9yZXBvcnQoU1BJQ0VfRElTUExB
WV9DSEFOTkVMKGNoYW5uZWwpLCBvcC0+aWQsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgb3AtPm11bHRpX21lZGlhX3RpbWUsIG1tdGltZV9tYXJnaW4pOwotICAgICAgICBp
ZiAoc3QtPnBsYXliYWNrX3N5bmNfZHJvcHNfc2VxX2xlbiA+PSBTVFJFQU1fUExBWUJBQ0tfU1lO
Q19EUk9QX1NFUV9MRU5fTElNSVQpIHsKLSAgICAgICAgICAgIHNwaWNlX3Nlc3Npb25fc3luY19w
bGF5YmFja19sYXRlbmN5KHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Npb24oY2hhbm5lbCkpOwotICAg
ICAgICAgICAgc3QtPnBsYXliYWNrX3N5bmNfZHJvcHNfc2VxX2xlbiA9IDA7Ci0gICAgICAgIH0K
ICAgICB9CiB9CiAKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXBsYXliYWNrLXByaXYuaCBiL3Ny
Yy9jaGFubmVsLXBsYXliYWNrLXByaXYuaAppbmRleCBhYTMzZDJjNC4uZGM4OWUyZDggMTAwNjQ0
Ci0tLSBhL3NyYy9jaGFubmVsLXBsYXliYWNrLXByaXYuaAorKysgYi9zcmMvY2hhbm5lbC1wbGF5
YmFjay1wcml2LmgKQEAgLTIwLDUgKzIwLDQgQEAKIAogZ2Jvb2xlYW4gc3BpY2VfcGxheWJhY2tf
Y2hhbm5lbF9pc19hY3RpdmUoU3BpY2VQbGF5YmFja0NoYW5uZWwgKmNoYW5uZWwpOwogZ3VpbnQz
MiBzcGljZV9wbGF5YmFja19jaGFubmVsX2dldF9sYXRlbmN5KFNwaWNlUGxheWJhY2tDaGFubmVs
ICpjaGFubmVsKTsKLXZvaWQgc3BpY2VfcGxheWJhY2tfY2hhbm5lbF9zeW5jX2xhdGVuY3koU3Bp
Y2VQbGF5YmFja0NoYW5uZWwgKmNoYW5uZWwpOwogI2VuZGlmCmRpZmYgLS1naXQgYS9zcmMvY2hh
bm5lbC1wbGF5YmFjay5jIGIvc3JjL2NoYW5uZWwtcGxheWJhY2suYwppbmRleCA2NTZhNDAzNy4u
MGU0MzllZmYgMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLXBsYXliYWNrLmMKKysrIGIvc3JjL2No
YW5uZWwtcGxheWJhY2suYwpAQCAtNDk1LDEyICs0OTUsMyBAQCBndWludDMyIHNwaWNlX3BsYXli
YWNrX2NoYW5uZWxfZ2V0X2xhdGVuY3koU3BpY2VQbGF5YmFja0NoYW5uZWwgKmNoYW5uZWwpCiAg
ICAgfQogICAgIHJldHVybiBjaGFubmVsLT5wcml2LT5sYXRlbmN5OwogfQotCi1HX0dOVUNfSU5U
RVJOQUwKLXZvaWQgc3BpY2VfcGxheWJhY2tfY2hhbm5lbF9zeW5jX2xhdGVuY3koU3BpY2VQbGF5
YmFja0NoYW5uZWwgKmNoYW5uZWwpCi17Ci0gICAgZ19yZXR1cm5faWZfZmFpbChTUElDRV9JU19Q
TEFZQkFDS19DSEFOTkVMKGNoYW5uZWwpKTsKLSAgICBnX3JldHVybl9pZl9mYWlsKGNoYW5uZWwt
PnByaXYtPmlzX2FjdGl2ZSk7Ci0gICAgU1BJQ0VfREVCVUcoIiVzOiBub3RpZnkgbGF0ZW5jeSB1
cGRhdGUgJXUiLCBfX0ZVTkNUSU9OX18sIGNoYW5uZWwtPnByaXYtPm1pbl9sYXRlbmN5KTsKLSAg
ICBnX2Nvcm91dGluZV9vYmplY3Rfbm90aWZ5KEdfT0JKRUNUKFNQSUNFX0NIQU5ORUwoY2hhbm5l
bCkpLCAibWluLWxhdGVuY3kiKTsKLX0KZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1zZXNzaW9uLXBy
aXYuaCBiL3NyYy9zcGljZS1zZXNzaW9uLXByaXYuaAppbmRleCBkODgyNzZmMS4uZDBkN2JlOGUg
MTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS1zZXNzaW9uLXByaXYuaAorKysgYi9zcmMvc3BpY2Utc2Vz
c2lvbi1wcml2LmgKQEAgLTg2LDcgKzg2LDYgQEAgdm9pZCBzcGljZV9zZXNzaW9uX3NldF91dWlk
KFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbiwgZ3VpbnQ4IHV1aWRbMTZdKTsKIHZvaWQgc3BpY2Vfc2Vz
c2lvbl9zZXRfbmFtZShTcGljZVNlc3Npb24gKnNlc3Npb24sIGNvbnN0IGdjaGFyICpuYW1lKTsK
IGdib29sZWFuIHNwaWNlX3Nlc3Npb25faXNfcGxheWJhY2tfYWN0aXZlKFNwaWNlU2Vzc2lvbiAq
c2Vzc2lvbik7CiBndWludDMyIHNwaWNlX3Nlc3Npb25fZ2V0X3BsYXliYWNrX2xhdGVuY3koU3Bp
Y2VTZXNzaW9uICpzZXNzaW9uKTsKLXZvaWQgc3BpY2Vfc2Vzc2lvbl9zeW5jX3BsYXliYWNrX2xh
dGVuY3koU3BpY2VTZXNzaW9uICpzZXNzaW9uKTsKIGdib29sZWFuIHNwaWNlX3Nlc3Npb25fZ2V0
X2F1ZGlvX2VuYWJsZWQoU3BpY2VTZXNzaW9uICpzZXNzaW9uKTsKIGdib29sZWFuIHNwaWNlX3Nl
c3Npb25fZ2V0X3NtYXJ0Y2FyZF9lbmFibGVkKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbik7CiBnYm9v
bGVhbiBzcGljZV9zZXNzaW9uX2dldF91c2JyZWRpcl9lbmFibGVkKFNwaWNlU2Vzc2lvbiAqc2Vz
c2lvbik7CmRpZmYgLS1naXQgYS9zcmMvc3BpY2Utc2Vzc2lvbi5jIGIvc3JjL3NwaWNlLXNlc3Np
b24uYwppbmRleCBlNmE5NjEzMy4uMDRhMmRhOTYgMTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS1zZXNz
aW9uLmMKKysrIGIvc3JjL3NwaWNlLXNlc3Npb24uYwpAQCAtMjY2MCwyMSArMjY2MCw2IEBAIHZv
aWQgc3BpY2Vfc2Vzc2lvbl9zZXRfbmFtZShTcGljZVNlc3Npb24gKnNlc3Npb24sIGNvbnN0IGdj
aGFyICpuYW1lKQogICAgIGdfY29yb3V0aW5lX29iamVjdF9ub3RpZnkoR19PQkpFQ1Qoc2Vzc2lv
biksICJuYW1lIik7CiB9CiAKLUdfR05VQ19JTlRFUk5BTAotdm9pZCBzcGljZV9zZXNzaW9uX3N5
bmNfcGxheWJhY2tfbGF0ZW5jeShTcGljZVNlc3Npb24gKnNlc3Npb24pCi17Ci0gICAgZ19yZXR1
cm5faWZfZmFpbChTUElDRV9JU19TRVNTSU9OKHNlc3Npb24pKTsKLQotICAgIFNwaWNlU2Vzc2lv
blByaXZhdGUgKnMgPSBzZXNzaW9uLT5wcml2OwotCi0gICAgaWYgKHMtPnBsYXliYWNrX2NoYW5u
ZWwgJiYKLSAgICAgICAgc3BpY2VfcGxheWJhY2tfY2hhbm5lbF9pc19hY3RpdmUocy0+cGxheWJh
Y2tfY2hhbm5lbCkpIHsKLSAgICAgICAgc3BpY2VfcGxheWJhY2tfY2hhbm5lbF9zeW5jX2xhdGVu
Y3kocy0+cGxheWJhY2tfY2hhbm5lbCk7Ci0gICAgfSBlbHNlIHsKLSAgICAgICAgU1BJQ0VfREVC
VUcoIiVzOiBub3QgaW1wbGVtZW50ZWQgd2hlbiB0aGVyZSBpc24ndCBhdWRpbyBwbGF5YmFjayIs
IF9fRlVOQ1RJT05fXyk7Ci0gICAgfQotfQotCiBHX0dOVUNfSU5URVJOQUwKIGdib29sZWFuIHNw
aWNlX3Nlc3Npb25faXNfcGxheWJhY2tfYWN0aXZlKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbikKIHsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
