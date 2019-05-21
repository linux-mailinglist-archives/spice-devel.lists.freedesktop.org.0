Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D8C24530
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 02:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A740E890B3;
	Tue, 21 May 2019 00:43:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87826890B3
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 00:43:21 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hSssu-0007V6-Vk
 for spice-devel@lists.freedesktop.org; Mon, 20 May 2019 19:44:05 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hSssA-0000wT-Rf
 for spice-devel@lists.freedesktop.org; Tue, 21 May 2019 02:43:18 +0200
Date: Tue, 21 May 2019 02:43:18 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <fa469fc745c2d114ea93a1ba58842a6820d94761.1558399323.git.fgouget@free.fr>
Message-ID: <192908139e07ebe728a606fea2a1be7e681b2a90.1558399323.git.fgouget@free.fr>
References: <fa469fc745c2d114ea93a1ba58842a6820d94761.1558399323.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
 --- Content analysis details:   (-103.7 points, 5.0 required)
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
 bh=Jjlwu5SAm5gVd5Xna1tDml+5dVIGA9uKSvMaN+7XXms=; b=Zhe2j1SxgY9eSbPs7QYwB5H8B
 bwVCwOJ5KBIBJ4u7dbVIkAJVQ99gcQC82n5tEPepl5sm/oPkzrytMhIJepiUxNxBshKxccZv5iWx0
 TqdIRbsmfCKwLZYSc0cD1Cq+KCwu36GIIJQQRliRAjnCoF+b00y1iDfBkjG04DbJiIN6E=;
Subject: [Spice-devel] [spice v2 2/2] mjpeg: Pull more code in
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
b2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+Ci0tLQoKdjI6IFJlZHVjZWQgdGhl
IGRpZmYgYW5kIGNvbnN0aWZpZWQgdGhlIE1KcGVnRW5jb2RlciogcGFyYW1ldGVyLgoKCiBzZXJ2
ZXIvbWpwZWctZW5jb2Rlci5jIHwgMjAgKysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZl
ci9tanBlZy1lbmNvZGVyLmMgYi9zZXJ2ZXIvbWpwZWctZW5jb2Rlci5jCmluZGV4IGIwM2ZmZmUx
NC4uNGEwMmU3YzhiIDEwMDY0NAotLS0gYS9zZXJ2ZXIvbWpwZWctZW5jb2Rlci5jCisrKyBiL3Nl
cnZlci9tanBlZy1lbmNvZGVyLmMKQEAgLTE4MSw5ICsxODEsOCBAQCB0eXBlZGVmIHN0cnVjdCBN
SnBlZ0VuY29kZXIgewogfSBNSnBlZ0VuY29kZXI7CiAKIHN0YXRpYyB2b2lkIG1qcGVnX2VuY29k
ZXJfcHJvY2Vzc19zZXJ2ZXJfZHJvcHMoTUpwZWdFbmNvZGVyICplbmNvZGVyKTsKLXN0YXRpYyB1
aW50MzJfdCBnZXRfbWluX3JlcXVpcmVkX3BsYXliYWNrX2RlbGF5KHVpbnQ2NF90IGZyYW1lX2Vu
Y19zaXplLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dWludDY0X3QgYnl0ZV9yYXRlLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdWludDMyX3QgbGF0ZW5jeSk7CitzdGF0aWMgdWludDMyX3QgZ2V0X21pbl9y
ZXF1aXJlZF9wbGF5YmFja19kZWxheShjb25zdCBNSnBlZ0VuY29kZXIgKmVuY29kZXIsCisgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50NjRfdCBmcmFt
ZV9lbmNfc2l6ZSk7CiAKIHN0YXRpYyB2b2lkIG1qcGVnX3ZpZGVvX2J1ZmZlcl9mcmVlKFZpZGVv
QnVmZmVyICp2aWRlb19idWZmZXIpCiB7CkBAIC01MzQsMTAgKzUzMyw3IEBAIGNvbXBsZXRlX3Nh
bXBsZToKICAgICBzcGljZV9kZWJ1ZygiTUpwZWcgcXVhbGl0eSBzYW1wbGUgZW5kICVwOiBxdWFs
aXR5ICVkIGZwcyAlZCIsCiAgICAgICAgICAgICAgICAgZW5jb2RlciwgbWpwZWdfcXVhbGl0eV9z
YW1wbGVzW3JhdGVfY29udHJvbC0+cXVhbGl0eV9pZF0sIHJhdGVfY29udHJvbC0+ZnBzKTsKICAg
ICBpZiAoZW5jb2Rlci0+Y2JzLnVwZGF0ZV9jbGllbnRfcGxheWJhY2tfZGVsYXkpIHsKLSAgICAg
ICAgdWludDMyX3QgbGF0ZW5jeSA9IG1qcGVnX2VuY29kZXJfZ2V0X2xhdGVuY3koZW5jb2Rlcik7
Ci0gICAgICAgIHVpbnQzMl90IG1pbl9kZWxheSA9IGdldF9taW5fcmVxdWlyZWRfcGxheWJhY2tf
ZGVsYXkoZmluYWxfcXVhbGl0eV9lbmNfc2l6ZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByYXRlX2NvbnRyb2wtPmJ5dGVfcmF0
ZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBsYXRlbmN5KTsKKyAgICAgICAgdWludDMyX3QgbWluX2RlbGF5ID0gZ2V0X21pbl9y
ZXF1aXJlZF9wbGF5YmFja19kZWxheShlbmNvZGVyLCBmaW5hbF9xdWFsaXR5X2VuY19zaXplKTsK
IAogICAgICAgICBlbmNvZGVyLT5jYnMudXBkYXRlX2NsaWVudF9wbGF5YmFja19kZWxheShlbmNv
ZGVyLT5jYnMub3BhcXVlLCBtaW5fZGVsYXkpOwogICAgIH0KQEAgLTExNjYsMTAgKzExNjIsMTEg
QEAgc3RhdGljIHZvaWQgbWpwZWdfZW5jb2Rlcl9oYW5kbGVfcG9zaXRpdmVfY2xpZW50X3N0cmVh
bV9yZXBvcnQoTUpwZWdFbmNvZGVyICplbmMKICAqIHRoZSB2aWRlbyBwbGF5YmFjayBqaXR0ZXIg
YnVmZmVyIHNob3VsZCBiZSBhdCBsZWFzdCAoc2VuZF90aW1lKjIgKyBuZXRfbGF0ZW5jeSkgZm9y
CiAgKiBwcmV2ZW50aW5nIHVuZGVyZmxvdwogICovCi1zdGF0aWMgdWludDMyX3QgZ2V0X21pbl9y
ZXF1aXJlZF9wbGF5YmFja19kZWxheSh1aW50NjRfdCBmcmFtZV9lbmNfc2l6ZSwKLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQ2NF90IGJ5dGVfcmF0
ZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQz
Ml90IGxhdGVuY3kpCitzdGF0aWMgdWludDMyX3QgZ2V0X21pbl9yZXF1aXJlZF9wbGF5YmFja19k
ZWxheShjb25zdCBNSnBlZ0VuY29kZXIgKmVuY29kZXIsCisgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50NjRfdCBmcmFtZV9lbmNfc2l6ZSkKIHsKKyAg
ICB1aW50NjRfdCBieXRlX3JhdGUgPSBlbmNvZGVyLT5yYXRlX2NvbnRyb2wuYnl0ZV9yYXRlOwor
ICAgIHVpbnQzMl90IGxhdGVuY3kgPSBtanBlZ19lbmNvZGVyX2dldF9sYXRlbmN5KGVuY29kZXIp
OwogICAgIHVpbnQzMl90IG9uZV9mcmFtZV90aW1lOwogICAgIHVpbnQzMl90IG1pbl9kZWxheTsK
IApAQCAtMTIxOSw4ICsxMjE2LDcgQEAgc3RhdGljIHZvaWQgbWpwZWdfZW5jb2Rlcl9jbGllbnRf
c3RyZWFtX3JlcG9ydChWaWRlb0VuY29kZXIgKnZpZGVvX2VuY29kZXIsCiAgICAgICAgICAgICAg
ICAgICAgICAgIHJhdGVfY29udHJvbC0+bnVtX3JlY2VudF9lbmNfZnJhbWVzOwogICAgIH0KICAg
ICBzcGljZV9kZWJ1ZygicmVjZW50IHNpemUgYXZnICUuMmYgKEtCKSIsIGF2Z19lbmNfc2l6ZSAv
IDEwMjQuMCk7Ci0gICAgbWluX3BsYXliYWNrX2RlbGF5ID0gZ2V0X21pbl9yZXF1aXJlZF9wbGF5
YmFja19kZWxheShhdmdfZW5jX3NpemUsIHJhdGVfY29udHJvbC0+Ynl0ZV9yYXRlLAotICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWpwZWdf
ZW5jb2Rlcl9nZXRfbGF0ZW5jeShlbmNvZGVyKSk7CisgICAgbWluX3BsYXliYWNrX2RlbGF5ID0g
Z2V0X21pbl9yZXF1aXJlZF9wbGF5YmFja19kZWxheShlbmNvZGVyLCBhdmdfZW5jX3NpemUpOwog
ICAgIHNwaWNlX2RlYnVnKCJtaW4tZGVsYXkgJXUgY2xpZW50LWRlbGF5ICVkIiwgbWluX3BsYXli
YWNrX2RlbGF5LCBlbmRfZnJhbWVfZGVsYXkpOwogCiAgICAgaWYgKG1pbl9wbGF5YmFja19kZWxh
eSA+IGVuZF9mcmFtZV9kZWxheSkgewotLSAKMi4yMC4xCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
