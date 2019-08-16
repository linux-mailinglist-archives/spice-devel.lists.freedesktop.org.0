Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 314AB90AA2
	for <lists+spice-devel@lfdr.de>; Sat, 17 Aug 2019 00:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2F516E9A8;
	Fri, 16 Aug 2019 22:01:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0B3A6E9A8
 for <spice-devel@lists.freedesktop.org>; Fri, 16 Aug 2019 22:01:54 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hykIC-00055d-PJ; Fri, 16 Aug 2019 17:01:53 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 16 Aug 2019 15:01:27 -0700
Message-Id: <20190816220129.22027-2-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816220129.22027-1-bshanks@codeweavers.com>
References: <20190816220129.22027-1-bshanks@codeweavers.com>
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Brendan Shanks <bshanks@codeweavers.com> ---
 src/display.c | 8 ++++---- src/display.h | 14 +++++++------- 2 files changed, 
 11 insertions(+), 11 deletions(-) diff --git a/src/display.c b/src/display.c
 index 77b4d4e..3294f83 100644 --- a/src/display.c +++ b/src/display.c @@
 -59,7 +59,7 @@ static xcb_screen_t *screen_of_display(xcb_connection_t *c,
 int scree [...] 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hohv2iGxX0SwPp1PAw3VL7PPWhwu0I+gPZ3bVIgZTr4=; b=Kxb4t1nbsiaBcOQVh8G4DPImw
 Dgu/Ip9yUjA3PlO6CzcUt3PWYRquOvWgjHc4jPRXEXnAQ36tBwyXd3MJUZPBmDJrbZHEBggjC8cqu
 8eEwB0KKKe8GHarkGNIbwflRrFURZmY7u/AvEglbCxSYZSBSH9sNl+m6qhPkfdbbAFX1A=;
Subject: [Spice-devel] [PATCH x11spice v3 1/3] Use unsigned int/size_t for
 display width/height/buffer size
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogQnJlbmRhbiBTaGFua3MgPGJzaGFua3NAY29kZXdlYXZlcnMuY29tPgot
LS0KIHNyYy9kaXNwbGF5LmMgfCAgOCArKysrLS0tLQogc3JjL2Rpc3BsYXkuaCB8IDE0ICsrKysr
KystLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3NyYy9kaXNwbGF5LmMgYi9zcmMvZGlzcGxheS5jCmluZGV4IDc3
YjRkNGUuLjMyOTRmODMgMTAwNjQ0Ci0tLSBhL3NyYy9kaXNwbGF5LmMKKysrIGIvc3JjL2Rpc3Bs
YXkuYwpAQCAtNTksNyArNTksNyBAQCBzdGF0aWMgeGNiX3NjcmVlbl90ICpzY3JlZW5fb2ZfZGlz
cGxheSh4Y2JfY29ubmVjdGlvbl90ICpjLCBpbnQgc2NyZWVuKQogICAgIHJldHVybiBOVUxMOwog
fQogCi1zdGF0aWMgaW50IGJpdHNfcGVyX3BpeGVsKGRpc3BsYXlfdCAqZCkKK3N0YXRpYyB1bnNp
Z25lZCBpbnQgYml0c19wZXJfcGl4ZWwoZGlzcGxheV90ICpkKQogewogICAgIHhjYl9mb3JtYXRf
aXRlcmF0b3JfdCBmbXQ7CiAKQEAgLTMzMiwxMCArMzMyLDEwIEBAIGludCBkaXNwbGF5X29wZW4o
ZGlzcGxheV90ICpkLCBzZXNzaW9uX3QgKnNlc3Npb24pCiAgICAgICAgIG92ZXJhbGwuCiAqLwog
Ci1zaG1faW1hZ2VfdCAqY3JlYXRlX3NobV9pbWFnZShkaXNwbGF5X3QgKmQsIGludCB3LCBpbnQg
aCkKK3NobV9pbWFnZV90ICpjcmVhdGVfc2htX2ltYWdlKGRpc3BsYXlfdCAqZCwgdW5zaWduZWQg
aW50IHcsIHVuc2lnbmVkIGludCBoKQogewogICAgIHNobV9pbWFnZV90ICpzaG1pOwotICAgIGlu
dCBpbWdzaXplOworICAgIHNpemVfdCBpbWdzaXplOwogICAgIHhjYl92b2lkX2Nvb2tpZV90IGNv
b2tpZTsKICAgICB4Y2JfZ2VuZXJpY19lcnJvcl90ICplcnJvcjsKIApAQCAtMzUzLDcgKzM1Myw3
IEBAIHNobV9pbWFnZV90ICpjcmVhdGVfc2htX2ltYWdlKGRpc3BsYXlfdCAqZCwgaW50IHcsIGlu
dCBoKQogICAgIGlmIChzaG1pLT5zaG1pZCAhPSAtMSkKICAgICAgICAgc2htaS0+c2htYWRkciA9
IHNobWF0KHNobWktPnNobWlkLCAwLCAwKTsKICAgICBpZiAoc2htaS0+c2htaWQgPT0gLTEgfHwg
c2htaS0+c2htYWRkciA9PSAodm9pZCAqKSAtMSkgewotICAgICAgICBnX3dhcm5pbmcoIkNhbm5v
dCBnZXQgc2hhcmVkIG1lbW9yeSBvZiBzaXplICVkOyBlcnJubyAlZCIsIGltZ3NpemUsIGVycm5v
KTsKKyAgICAgICAgZ193YXJuaW5nKCJDYW5ub3QgZ2V0IHNoYXJlZCBtZW1vcnkgb2Ygc2l6ZSAl
IiBHX0dTSVpFX0ZPUk1BVCAiOyBlcnJubyAlZCIsIGltZ3NpemUsIGVycm5vKTsKICAgICAgICAg
ZnJlZShzaG1pKTsKICAgICAgICAgcmV0dXJuIE5VTEw7CiAgICAgfQpkaWZmIC0tZ2l0IGEvc3Jj
L2Rpc3BsYXkuaCBiL3NyYy9kaXNwbGF5LmgKaW5kZXggMjdiYzgyOS4uMDdhYzNjMCAxMDA2NDQK
LS0tIGEvc3JjL2Rpc3BsYXkuaAorKysgYi9zcmMvZGlzcGxheS5oCkBAIC0zMyw5ICszMyw5IEBA
IHN0cnVjdCBzZXNzaW9uX3N0cnVjdDsKICoqLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0qLwogdHlwZWRlZiBz
dHJ1Y3QgewogICAgIGludCBzaG1pZDsKLSAgICBpbnQgdzsKLSAgICBpbnQgaDsKLSAgICBpbnQg
Ynl0ZXNfcGVyX2xpbmU7CisgICAgdW5zaWduZWQgaW50IHc7CisgICAgdW5zaWduZWQgaW50IGg7
CisgICAgdW5zaWduZWQgaW50IGJ5dGVzX3Blcl9saW5lOwogICAgIHhjYl9zaG1fc2VnX3Qgc2ht
c2VnOwogICAgIHZvaWQgKnNobWFkZHI7CiAgICAgdm9pZCAqZHJhd2FibGVfcHRyOwpAQCAtNDQs
OSArNDQsOSBAQCB0eXBlZGVmIHN0cnVjdCB7CiB0eXBlZGVmIHN0cnVjdCB7CiAgICAgeGNiX2Nv
bm5lY3Rpb25fdCAqYzsKICAgICB4Y2Jfd2luZG93X3Qgcm9vdDsKLSAgICBpbnQgd2lkdGg7Ci0g
ICAgaW50IGhlaWdodDsKLSAgICBpbnQgZGVwdGg7CisgICAgdW5zaWduZWQgaW50IHdpZHRoOwor
ICAgIHVuc2lnbmVkIGludCBoZWlnaHQ7CisgICAgdW5zaWduZWQgaW50IGRlcHRoOwogCiAgICAg
Y29uc3QgeGNiX3F1ZXJ5X2V4dGVuc2lvbl9yZXBseV90ICpkYW1hZ2VfZXh0OwogICAgIHhjYl9k
YW1hZ2VfZGFtYWdlX3QgZGFtYWdlOwpAQCAtNzYsNyArNzYsNyBAQCB2b2lkIGRpc3BsYXlfc3Rv
cF9ldmVudF90aHJlYWQoZGlzcGxheV90ICpkKTsKIGludCBkaXNwbGF5X2ZpbmRfY2hhbmdlZF90
aWxlcyhkaXNwbGF5X3QgKmQsIGludCByb3csIGludCAqdGlsZXMsIGludCB0aWxlc19hY3Jvc3Mp
Owogdm9pZCBkaXNwbGF5X2NvcHlfaW1hZ2VfaW50b19mdWxsc2NyZWVuKGRpc3BsYXlfdCAqZCwg
c2htX2ltYWdlX3QgKnNobWksIGludCB4LCBpbnQgeSk7CiAKLXNobV9pbWFnZV90ICpjcmVhdGVf
c2htX2ltYWdlKGRpc3BsYXlfdCAqZCwgaW50IHcsIGludCBoKTsKK3NobV9pbWFnZV90ICpjcmVh
dGVfc2htX2ltYWdlKGRpc3BsYXlfdCAqZCwgdW5zaWduZWQgaW50IHcsIHVuc2lnbmVkIGludCBo
KTsKIGludCByZWFkX3NobV9pbWFnZShkaXNwbGF5X3QgKmQsIHNobV9pbWFnZV90ICpzaG1pLCBp
bnQgeCwgaW50IHkpOwogdm9pZCBkZXN0cm95X3NobV9pbWFnZShkaXNwbGF5X3QgKmQsIHNobV9p
bWFnZV90ICpzaG1pKTsKIAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
