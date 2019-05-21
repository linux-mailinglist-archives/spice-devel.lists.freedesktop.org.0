Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9C824513
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 02:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A4F88FA4;
	Tue, 21 May 2019 00:30:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3571088635
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 00:30:31 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hSsgL-0007MF-QE
 for spice-devel@lists.freedesktop.org; Mon, 20 May 2019 19:31:15 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hSsfb-0001ku-LD
 for spice-devel@lists.freedesktop.org; Tue, 21 May 2019 02:30:19 +0200
Date: Tue, 21 May 2019 02:30:19 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hSsfb-0001ku-LD@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It makes no sense to expect average frame sizes anywhere
 close
 to 2GB. But then make sure to avoid arithmetic overflows. Signed-off-by:
 Francois Gouget <fgouget@codeweavers.com> --- In get_min_playback_delay()
 I opted for the cast approach as this makes what happens clearer. I deemed
 the assignment (uint32_t) unnecessary though. 
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
 bh=FnkGDZuWVMOBP4RgutaE7m4jCm5Dp5dlJUIche/llxk=; b=bhddeNFiLIeIQM6nloDd5lpGPv
 oNx0LuD4h5Lv0zHns0QKA7u9D/++0wEL93ZFXhMglclqotZvxa138Ngl7ujq+JCHl5iq5AE3NtK8I
 hb3FvDeXNGwW5zfouH4R3vxnRpyFB5kGX2yVsqzxbAZXYEpGK74gLdsMlLptxWeRoceA=;
Subject: [Spice-devel] [spice v2] gstreamer-encoder: Return the average
 frame size as a 32 bit int
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

SXQgbWFrZXMgbm8gc2Vuc2UgdG8gZXhwZWN0IGF2ZXJhZ2UgZnJhbWUgc2l6ZXMgYW55d2hlcmUg
Y2xvc2UgdG8gMkdCLgpCdXQgdGhlbiBtYWtlIHN1cmUgdG8gYXZvaWQgYXJpdGhtZXRpYyBvdmVy
Zmxvd3MuCgpTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZl
cnMuY29tPgotLS0KCkluIGdldF9taW5fcGxheWJhY2tfZGVsYXkoKSBJIG9wdGVkIGZvciB0aGUg
Y2FzdCBhcHByb2FjaCBhcyB0aGlzIG1ha2VzIAp3aGF0IGhhcHBlbnMgY2xlYXJlci4gSSBkZWVt
ZWQgdGhlIGFzc2lnbm1lbnQgKHVpbnQzMl90KSB1bm5lY2Vzc2FyeSAKdGhvdWdoLgoKIHNlcnZl
ci9nc3RyZWFtZXItZW5jb2Rlci5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL2dzdHJlYW1lci1l
bmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwppbmRleCAwZmYxMjAxYTkuLjAx
MDFiMzZmYSAxMDA2NDQKLS0tIGEvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKKysrIGIvc2Vy
dmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKQEAgLTM5Niw3ICszOTYsNyBAQCBzdGF0aWMgdWludDY0
X3QgZ2V0X2F2ZXJhZ2VfZW5jb2RpbmdfdGltZShTcGljZUdzdEVuY29kZXIgKmVuY29kZXIpCiAg
ICAgcmV0dXJuIGVuY29kZXItPnN0YXRfZHVyYXRpb25fc3VtIC8gY291bnQ7CiB9CiAKLXN0YXRp
YyB1aW50NjRfdCBnZXRfYXZlcmFnZV9mcmFtZV9zaXplKFNwaWNlR3N0RW5jb2RlciAqZW5jb2Rl
cikKK3N0YXRpYyB1aW50MzJfdCBnZXRfYXZlcmFnZV9mcmFtZV9zaXplKFNwaWNlR3N0RW5jb2Rl
ciAqZW5jb2RlcikKIHsKICAgICB1aW50MzJfdCBjb3VudCA9IGVuY29kZXItPmhpc3RvcnlfbGFz
dCArCiAgICAgICAgIChlbmNvZGVyLT5oaXN0b3J5X2xhc3QgPCBlbmNvZGVyLT5zdGF0X2ZpcnN0
ID8gU1BJQ0VfR1NUX0hJU1RPUllfU0laRSA6IDApIC0KQEAgLTUyMCw4ICs1MjAsOCBAQCBzdGF0
aWMgdWludDMyX3QgZ2V0X21pbl9wbGF5YmFja19kZWxheShTcGljZUdzdEVuY29kZXIgKmVuY29k
ZXIpCiAgICAgICogYW4gSSBmcmFtZSkgYW5kIGFuIGF2ZXJhZ2UgZnJhbWUuIFRoaXMgYWxzbyB0
YWtlcyBpbnRvIGFjY291bnQgdGhlCiAgICAgICogZnJhbWVzIGRyb3BwZWQgYnkgdGhlIGVuY29k
ZXIgYml0IHJhdGUgY29udHJvbC4KICAgICAgKi8KLSAgICB1aW50NjRfdCBzaXplID0gZ2V0X21h
eGltdW1fZnJhbWVfc2l6ZShlbmNvZGVyKSArIGdldF9hdmVyYWdlX2ZyYW1lX3NpemUoZW5jb2Rl
cik7Ci0gICAgdWludDMyX3Qgc2VuZF90aW1lID0gTVNFQ19QRVJfU0VDICogc2l6ZSAqIDggLyBl
bmNvZGVyLT5iaXRfcmF0ZTsKKyAgICB1aW50MzJfdCBzaXplID0gZ2V0X21heGltdW1fZnJhbWVf
c2l6ZShlbmNvZGVyKSArIGdldF9hdmVyYWdlX2ZyYW1lX3NpemUoZW5jb2Rlcik7CisgICAgdWlu
dDMyX3Qgc2VuZF90aW1lID0gKCh1aW50NjRfdClNU0VDX1BFUl9TRUMgKiA4KSAqIHNpemUgLyBl
bmNvZGVyLT5iaXRfcmF0ZTsKIAogICAgIC8qIEFsc28gZmFjdG9yIGluIHRoZSBuZXR3b3JrIGxh
dGVuY3kgd2l0aCBhIG1hcmdpbiBmb3Igaml0dGVyLiAqLwogICAgIHVpbnQzMl90IG5ldF9sYXRl
bmN5ID0gZ2V0X25ldHdvcmtfbGF0ZW5jeShlbmNvZGVyKSAqICgxLjAgKyBTUElDRV9HU1RfTEFU
RU5DWV9NQVJHSU4pOwotLSAKMi4yMC4xCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
