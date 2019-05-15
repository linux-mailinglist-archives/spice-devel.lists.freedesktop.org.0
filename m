Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E411FCB0
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 01:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A5B8925F;
	Wed, 15 May 2019 23:12:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F12B8925F
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 23:11:59 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hR34m-0001sd-1F
 for spice-devel@lists.freedesktop.org; Wed, 15 May 2019 18:12:45 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hR340-0008Ma-4M
 for spice-devel@lists.freedesktop.org; Thu, 16 May 2019 01:11:56 +0200
Date: Thu, 16 May 2019 01:11:56 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hR340-0008Ma-4M@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This reinstates the reds_enable_mm_time() call in
 do_spice_init()
 that was removed by commit c541d7e29dc0. We send mm_time adjustments to the
 client whenever there is no audio playback. There is no audio playback on
 startup. Therefore mm_time_enabled must be true on startup. QED. 
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
 bh=V2W4U/wKKCrfD+9qJHJ0ayLDRfTrOj1jIW9ATSixGPo=; b=UgUhRR7wyagnIcPbmUhKA5PUQL
 8CejaZvAKbF8vcrGsBMD+cXpEELNsyqH3Yx89m7IrLkltVZf7rNnL2EwQZprvjv9YspQIqoYADRDa
 tNx+wP/rJ306grOJd/p3CAs7s4bj2+5zBJUq+UVrlbLzgp5bkRVoY+sTzM+X9DHC1PFg=;
Subject: [Spice-devel] [spice] reds: Enable mm_time adjustments on startup
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

VGhpcyByZWluc3RhdGVzIHRoZSByZWRzX2VuYWJsZV9tbV90aW1lKCkgY2FsbCBpbiBkb19zcGlj
ZV9pbml0KCkKdGhhdCB3YXMgcmVtb3ZlZCBieSBjb21taXQgYzU0MWQ3ZTI5ZGMwLgoKV2Ugc2Vu
ZCBtbV90aW1lIGFkanVzdG1lbnRzIHRvIHRoZSBjbGllbnQgd2hlbmV2ZXIgdGhlcmUgaXMgbm8g
YXVkaW8KcGxheWJhY2suIFRoZXJlIGlzIG5vIGF1ZGlvIHBsYXliYWNrIG9uIHN0YXJ0dXAuIFRo
ZXJlZm9yZQptbV90aW1lX2VuYWJsZWQgbXVzdCBiZSB0cnVlIG9uIHN0YXJ0dXAuIFFFRC4KClRo
aXMgZml4ZXMgYWRqdXN0aW5nIHRoZSBjbGllbnQgbW1fdGltZSB3aGVuZXZlciBwbGF5aW5nIGEg
c2lsZW50CnZpZGVvIChvciBmdWxsIGRlc2t0b3Agc3RyZWFtKSB3aGVuIG5vIHNvdW5kIGhhcyBi
ZWVuIHBsYXllZCBiZWZvcmUKc3VjaCBhcyB3aGVuIHVzaW5nIFhzcGljZSwgYm9vdGluZyBhbiBP
UyB3aXRoIG5vIHN0YXJ0dXAgb3IgbG9naW4KamluZ2xlLCBvciBwb3NzaWJseSB3aGVuIG1pZ3Jh
dGluZyBhIFZNIChwZXIgY29tbWl0IDFjMTU0ZWE1ZWNjMykuCgpTaWduZWQtb2ZmLWJ5OiBGcmFu
Y29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMuY29tPgotLS0KIHNlcnZlci9yZWRzLmMg
fCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
c2VydmVyL3JlZHMuYyBiL3NlcnZlci9yZWRzLmMKaW5kZXggZDY1ODEwM2U2Li43OTJlOTgzODEg
MTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWRzLmMKKysrIGIvc2VydmVyL3JlZHMuYwpAQCAtMzU3MCw2
ICszNTcwLDExIEBAIHN0YXRpYyBpbnQgZG9fc3BpY2VfaW5pdChSZWRzU3RhdGUgKnJlZHMsIFNw
aWNlQ29yZUludGVyZmFjZSAqY29yZV9pbnRlcmZhY2UpCiAgICAgaWYgKCEocmVkcy0+bWlnX3Rp
bWVyID0gcmVkcy0+Y29yZS50aW1lcl9hZGQoJnJlZHMtPmNvcmUsIG1pZ3JhdGVfdGltZW91dCwg
cmVkcykpKSB7CiAgICAgICAgIHNwaWNlX2Vycm9yKCJtaWdyYXRpb24gdGltZXIgY3JlYXRlIGZh
aWxlZCIpOwogICAgIH0KKyAgICAvKiBOb3RlIHRoYXQgdGhpcyB3aWxsIG5vdCBhY3R1YWxseSBz
ZW5kIHRoZSBtbV90aW1lIHRvIHRoZSBjbGllbnQgYmVjYXVzZQorICAgICAqIHRoZSBtYWluIGNo
YW5uZWwgaXMgbm90IGNvbm5lY3RlZCB5ZXQuIFRoaXMgd291bGQgaGF2ZSBiZWVuIHJlZHVuZGFu
dAorICAgICAqIHdpdGggdGhlIFJFRF9QSVBFX0lURU1fVFlQRV9NQUlOX0lOSVQgbWVzc2FnZSBh
bnl3YXkuCisgICAgICovCisgICAgcmVkc19lbmFibGVfbW1fdGltZShyZWRzKTsKIAogICAgIGlm
IChyZWRzX2luaXRfbmV0KHJlZHMpIDwgMCkgewogICAgICAgICBzcGljZV93YXJuaW5nKCJGYWls
ZWQgdG8gb3BlbiBTUElDRSBzb2NrZXRzIik7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
