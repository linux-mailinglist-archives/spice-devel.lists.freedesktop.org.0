Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFBD2452F
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 02:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7F72890AF;
	Tue, 21 May 2019 00:43:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FCAE890AF
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 00:43:12 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hSssl-0007Un-Ii
 for spice-devel@lists.freedesktop.org; Mon, 20 May 2019 19:43:56 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hSsrz-0000wD-J8
 for spice-devel@lists.freedesktop.org; Tue, 21 May 2019 02:43:09 +0200
Date: Tue, 21 May 2019 02:43:07 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Message-ID: <fa469fc745c2d114ea93a1ba58842a6820d94761.1558399323.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Francois Gouget <fgouget@codeweavers.com> ---
 server/mjpeg-encoder.c | 4 ++-- 1 file changed, 2 insertions(+), 2 deletions(-)
 diff --git a/server/mjpeg-encoder.c b/server/mjpeg-encoder.c index
 1400519bb..b03fffe14
 100644 --- a/server/mjpeg-encoder.c +++ b/server/mjpeg-encoder.c @@ -335,13
 +335,13 @@ spice_jpeg_mem_dest(j_com [...] 
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
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Zks0Omi4KpyWzqLGfpyThfZurkcK3tosVLqfoBBrew=; b=J5VOzuACLTWsa5xoM9ldvh4Pjv
 MQmaF/ErE7slbJU4CDQJyroq3zngS4jk8ueszvkhiV5awOX9mfQ5dds/3dS9sEE9xUjbAjezVdMCj
 RrbF0Gq0/mvqKG0UHsk2vbZ/PvPUQzjM8XRKiBdsrr8ezo1mqAmdW9kjyKkAFj+0bmQg=;
Subject: [Spice-devel] [spice v2 1/2] mjpeg: Constify some MJpegEncoder*
 parameters
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

U2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4K
LS0tCiBzZXJ2ZXIvbWpwZWctZW5jb2Rlci5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9tanBlZy1l
bmNvZGVyLmMgYi9zZXJ2ZXIvbWpwZWctZW5jb2Rlci5jCmluZGV4IDE0MDA1MTliYi4uYjAzZmZm
ZTE0IDEwMDY0NAotLS0gYS9zZXJ2ZXIvbWpwZWctZW5jb2Rlci5jCisrKyBiL3NlcnZlci9tanBl
Zy1lbmNvZGVyLmMKQEAgLTMzNSwxMyArMzM1LDEzIEBAIHNwaWNlX2pwZWdfbWVtX2Rlc3Qoal9j
b21wcmVzc19wdHIgY2luZm8sCiB9CiAvKiBlbmQgb2YgY29kZSBmcm9tIGxpYmpwZWcgKi8KIAot
c3RhdGljIGlubGluZSB1aW50MzJfdCBtanBlZ19lbmNvZGVyX2dldF9zb3VyY2VfZnBzKE1KcGVn
RW5jb2RlciAqZW5jb2RlcikKK3N0YXRpYyBpbmxpbmUgdWludDMyX3QgbWpwZWdfZW5jb2Rlcl9n
ZXRfc291cmNlX2Zwcyhjb25zdCBNSnBlZ0VuY29kZXIgKmVuY29kZXIpCiB7CiAgICAgcmV0dXJu
IGVuY29kZXItPmNicy5nZXRfc291cmNlX2ZwcyA/CiAgICAgICAgIGVuY29kZXItPmNicy5nZXRf
c291cmNlX2ZwcyhlbmNvZGVyLT5jYnMub3BhcXVlKSA6IE1KUEVHX01BWF9GUFM7CiB9CiAKLXN0
YXRpYyBpbmxpbmUgdWludDMyX3QgbWpwZWdfZW5jb2Rlcl9nZXRfbGF0ZW5jeShNSnBlZ0VuY29k
ZXIgKmVuY29kZXIpCitzdGF0aWMgaW5saW5lIHVpbnQzMl90IG1qcGVnX2VuY29kZXJfZ2V0X2xh
dGVuY3koY29uc3QgTUpwZWdFbmNvZGVyICplbmNvZGVyKQogewogICAgIHJldHVybiBlbmNvZGVy
LT5jYnMuZ2V0X3JvdW5kdHJpcF9tcyA/CiAgICAgICAgIGVuY29kZXItPmNicy5nZXRfcm91bmR0
cmlwX21zKGVuY29kZXItPmNicy5vcGFxdWUpIC8gMiA6IDA7Ci0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
