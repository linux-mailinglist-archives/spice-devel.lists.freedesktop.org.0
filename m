Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C6A1FCB5
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 01:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C879389261;
	Wed, 15 May 2019 23:13:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4234989261
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 23:13:35 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hR36K-0001uY-G5
 for spice-devel@lists.freedesktop.org; Wed, 15 May 2019 18:14:21 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hR35Y-0008Tg-IE
 for spice-devel@lists.freedesktop.org; Thu, 16 May 2019 01:13:32 +0200
Date: Thu, 16 May 2019 01:13:32 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hR35Y-0008Tg-IE@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This reduces code duplication and passing the MJpegEncoder
 object makes it possible to modify the playback calculation without adding
 more arguments. Signed-off-by: Francois Gouget <fgouget@codeweavers.com>
 --- server/mjpeg-encoder.c | 31 +++++++++++++ 1 file changed, 13 insertions(+),
 18 deletions(-) 
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
 d=codeweavers.com; s=6377696661; h=Message-Id:Content-Type:MIME-Version:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lzeFwAjEBILLsLX7ioVyk604X/9N9DK/au0oFxman8w=; b=suxBfmtidZx7+YW99CNa25RIgs
 2dg5EoeRmME4o0ZP7CkzQ+2lhoUWgdJyTX5bEef6L105FdhdNm9N5qmWSmopdD0z76/e8I+Gnnsqt
 IJFrcmgg+wh4zEjQSSR5OjrrIa4/hykcM2oFGYXJJKHLzX4NfFvPqGjo48tnxOOm2N1Q=;
Subject: [Spice-devel] [spice] mjpeg: Pull more code in
 get_min_required_playback_delay()
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

VGhpcyByZWR1Y2VzIGNvZGUgZHVwbGljYXRpb24gYW5kIHBhc3NpbmcgdGhlIE1KcGVnRW5jb2Rl
ciBvYmplY3QKbWFrZXMgaXQgcG9zc2libGUgdG8gbW9kaWZ5IHRoZSBwbGF5YmFjayBjYWxjdWxh
dGlvbiB3aXRob3V0IGFkZGluZwptb3JlIGFyZ3VtZW50cy4KClNpZ25lZC1vZmYtYnk6IEZyYW5j
b2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+Ci0tLQogc2VydmVyL21qcGVnLWVu
Y29kZXIuYyB8IDMxICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2
ZXIvbWpwZWctZW5jb2Rlci5jIGIvc2VydmVyL21qcGVnLWVuY29kZXIuYwppbmRleCAxNDAwNTE5
YmIuLjE1ZGIzODc1MiAxMDA2NDQKLS0tIGEvc2VydmVyL21qcGVnLWVuY29kZXIuYworKysgYi9z
ZXJ2ZXIvbWpwZWctZW5jb2Rlci5jCkBAIC0xODEsOSArMTgxLDggQEAgdHlwZWRlZiBzdHJ1Y3Qg
TUpwZWdFbmNvZGVyIHsKIH0gTUpwZWdFbmNvZGVyOwogCiBzdGF0aWMgdm9pZCBtanBlZ19lbmNv
ZGVyX3Byb2Nlc3Nfc2VydmVyX2Ryb3BzKE1KcGVnRW5jb2RlciAqZW5jb2Rlcik7Ci1zdGF0aWMg
dWludDMyX3QgZ2V0X21pbl9yZXF1aXJlZF9wbGF5YmFja19kZWxheSh1aW50NjRfdCBmcmFtZV9l
bmNfc2l6ZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHVpbnQ2NF90IGJ5dGVfcmF0ZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHVpbnQzMl90IGxhdGVuY3kpOworc3RhdGljIHVpbnQzMl90IGdldF9taW5f
cmVxdWlyZWRfcGxheWJhY2tfZGVsYXkoTUpwZWdFbmNvZGVyICplbmNvZGVyLAorICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDY0X3QgZnJhbWVfZW5j
X3NpemUpOwogCiBzdGF0aWMgdm9pZCBtanBlZ192aWRlb19idWZmZXJfZnJlZShWaWRlb0J1ZmZl
ciAqdmlkZW9fYnVmZmVyKQogewpAQCAtNTM0LDEwICs1MzMsNyBAQCBjb21wbGV0ZV9zYW1wbGU6
CiAgICAgc3BpY2VfZGVidWcoIk1KcGVnIHF1YWxpdHkgc2FtcGxlIGVuZCAlcDogcXVhbGl0eSAl
ZCBmcHMgJWQiLAogICAgICAgICAgICAgICAgIGVuY29kZXIsIG1qcGVnX3F1YWxpdHlfc2FtcGxl
c1tyYXRlX2NvbnRyb2wtPnF1YWxpdHlfaWRdLCByYXRlX2NvbnRyb2wtPmZwcyk7CiAgICAgaWYg
KGVuY29kZXItPmNicy51cGRhdGVfY2xpZW50X3BsYXliYWNrX2RlbGF5KSB7Ci0gICAgICAgIHVp
bnQzMl90IGxhdGVuY3kgPSBtanBlZ19lbmNvZGVyX2dldF9sYXRlbmN5KGVuY29kZXIpOwotICAg
ICAgICB1aW50MzJfdCBtaW5fZGVsYXkgPSBnZXRfbWluX3JlcXVpcmVkX3BsYXliYWNrX2RlbGF5
KGZpbmFsX3F1YWxpdHlfZW5jX3NpemUsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmF0ZV9jb250cm9sLT5ieXRlX3JhdGUsCi0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgbGF0ZW5jeSk7CisgICAgICAgIHVpbnQzMl90IG1pbl9kZWxheSA9IGdldF9taW5fcmVxdWly
ZWRfcGxheWJhY2tfZGVsYXkoZW5jb2RlciwgZmluYWxfcXVhbGl0eV9lbmNfc2l6ZSk7CiAKICAg
ICAgICAgZW5jb2Rlci0+Y2JzLnVwZGF0ZV9jbGllbnRfcGxheWJhY2tfZGVsYXkoZW5jb2Rlci0+
Y2JzLm9wYXF1ZSwgbWluX2RlbGF5KTsKICAgICB9CkBAIC0xMTY2LDIwICsxMTYyLDIwIEBAIHN0
YXRpYyB2b2lkIG1qcGVnX2VuY29kZXJfaGFuZGxlX3Bvc2l0aXZlX2NsaWVudF9zdHJlYW1fcmVw
b3J0KE1KcGVnRW5jb2RlciAqZW5jCiAgKiB0aGUgdmlkZW8gcGxheWJhY2sgaml0dGVyIGJ1ZmZl
ciBzaG91bGQgYmUgYXQgbGVhc3QgKHNlbmRfdGltZSoyICsgbmV0X2xhdGVuY3kpIGZvcgogICog
cHJldmVudGluZyB1bmRlcmZsb3cKICAqLwotc3RhdGljIHVpbnQzMl90IGdldF9taW5fcmVxdWly
ZWRfcGxheWJhY2tfZGVsYXkodWludDY0X3QgZnJhbWVfZW5jX3NpemUsCi0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50NjRfdCBieXRlX3JhdGUsCi0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCBs
YXRlbmN5KQorc3RhdGljIHVpbnQzMl90IGdldF9taW5fcmVxdWlyZWRfcGxheWJhY2tfZGVsYXko
TUpwZWdFbmNvZGVyICplbmNvZGVyLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdWludDY0X3QgZnJhbWVfZW5jX3NpemUpCiB7Ci0gICAgdWludDMyX3Qg
b25lX2ZyYW1lX3RpbWU7Ci0gICAgdWludDMyX3QgbWluX2RlbGF5OworICAgIE1KcGVnRW5jb2Rl
clJhdGVDb250cm9sICpyYXRlX2NvbnRyb2wgPSAmZW5jb2Rlci0+cmF0ZV9jb250cm9sOworICAg
IHVpbnQzMl90IGxhdGVuY3ksIG9uZV9mcmFtZV90aW1lLCBtaW5fZGVsYXk7CiAKLSAgICBpZiAo
IWZyYW1lX2VuY19zaXplIHx8ICFieXRlX3JhdGUpIHsKKyAgICBsYXRlbmN5ID0gbWpwZWdfZW5j
b2Rlcl9nZXRfbGF0ZW5jeShlbmNvZGVyKTsKKyAgICBpZiAoIWZyYW1lX2VuY19zaXplIHx8ICFy
YXRlX2NvbnRyb2wtPmJ5dGVfcmF0ZSkgewogICAgICAgICByZXR1cm4gbGF0ZW5jeTsKICAgICB9
Ci0gICAgb25lX2ZyYW1lX3RpbWUgPSAoZnJhbWVfZW5jX3NpemUgKiBNU0VDX1BFUl9TRUMpIC8g
Ynl0ZV9yYXRlOwogCi0gICAgbWluX2RlbGF5ID0gTUlOKG9uZV9mcmFtZV90aW1lKjIgKyBsYXRl
bmN5LCBNSlBFR19NQVhfQ0xJRU5UX1BMQVlCQUNLX0RFTEFZKTsKLSAgICByZXR1cm4gbWluX2Rl
bGF5OworICAgIG9uZV9mcmFtZV90aW1lID0gKGZyYW1lX2VuY19zaXplICogTVNFQ19QRVJfU0VD
KSAvIHJhdGVfY29udHJvbC0+Ynl0ZV9yYXRlOworICAgIG1pbl9kZWxheSA9IGxhdGVuY3kgKyAy
ICogb25lX2ZyYW1lX3RpbWU7CisgICAgcmV0dXJuIE1JTihtaW5fZGVsYXksIE1KUEVHX01BWF9D
TElFTlRfUExBWUJBQ0tfREVMQVkpOwogfQogCiAjZGVmaW5lIE1KUEVHX1BMQVlCQUNLX0xBVEVO
Q1lfREVDUkVBU0VfRkFDVE9SIDAuNQpAQCAtMTIxOSw4ICsxMjE1LDcgQEAgc3RhdGljIHZvaWQg
bWpwZWdfZW5jb2Rlcl9jbGllbnRfc3RyZWFtX3JlcG9ydChWaWRlb0VuY29kZXIgKnZpZGVvX2Vu
Y29kZXIsCiAgICAgICAgICAgICAgICAgICAgICAgIHJhdGVfY29udHJvbC0+bnVtX3JlY2VudF9l
bmNfZnJhbWVzOwogICAgIH0KICAgICBzcGljZV9kZWJ1ZygicmVjZW50IHNpemUgYXZnICUuMmYg
KEtCKSIsIGF2Z19lbmNfc2l6ZSAvIDEwMjQuMCk7Ci0gICAgbWluX3BsYXliYWNrX2RlbGF5ID0g
Z2V0X21pbl9yZXF1aXJlZF9wbGF5YmFja19kZWxheShhdmdfZW5jX3NpemUsIHJhdGVfY29udHJv
bC0+Ynl0ZV9yYXRlLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgbWpwZWdfZW5jb2Rlcl9nZXRfbGF0ZW5jeShlbmNvZGVyKSk7CisgICAg
bWluX3BsYXliYWNrX2RlbGF5ID0gZ2V0X21pbl9yZXF1aXJlZF9wbGF5YmFja19kZWxheShlbmNv
ZGVyLCBhdmdfZW5jX3NpemUpOwogICAgIHNwaWNlX2RlYnVnKCJtaW4tZGVsYXkgJXUgY2xpZW50
LWRlbGF5ICVkIiwgbWluX3BsYXliYWNrX2RlbGF5LCBlbmRfZnJhbWVfZGVsYXkpOwogCiAgICAg
aWYgKG1pbl9wbGF5YmFja19kZWxheSA+IGVuZF9mcmFtZV9kZWxheSkgewotLSAKMi4yMC4xCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
