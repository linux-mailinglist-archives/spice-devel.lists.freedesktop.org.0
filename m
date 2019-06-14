Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E97D1463DC
	for <lists+spice-devel@lfdr.de>; Fri, 14 Jun 2019 18:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757D589A5E;
	Fri, 14 Jun 2019 16:19:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A827389A5E
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Jun 2019 16:19:28 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hbovr-0001Q1-96
 for spice-devel@lists.freedesktop.org; Fri, 14 Jun 2019 11:20:04 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hbovF-0004ta-Sq
 for spice-devel@lists.freedesktop.org; Fri, 14 Jun 2019 18:19:25 +0200
Date: Fri, 14 Jun 2019 18:19:25 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
Message-ID: <a7b7b2316040129afd5a6e621735be4f69d3f68f.1560528809.git.fgouget@free.fr>
References: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The number of frames that were sitting in the decoding_queue
 before the current frame was added is crucial to correctly interpret the
 decoding time: * Less than MAX_DECODED_FRAMES means nothing blocke [...] 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mEhOmk84Whkjp409EI1+8Ss+6qvFnKFad7CZ+mUXeyg=; b=o6znf7y9Hx4lxkjbzcnJxGaFV
 3TraUPMC7quh68jIU3cm98cmTfM++y0qVeqO94NrOPB647TLsvNWC0e3mYStgrzstNoetvfw+DEz5
 KIehSCLDm7i2lUhx34rYvy4uh6OtvD1GgnbR6bg1aLqPKwp29/XDFm2ST7d9uS4ul4XUA=;
Subject: [Spice-devel] [client 5/5] gstreamer: Add the encoded frame's rank
 to the statistics
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

VGhlIG51bWJlciBvZiBmcmFtZXMgdGhhdCB3ZXJlIHNpdHRpbmcgaW4gdGhlIGRlY29kaW5nX3F1
ZXVlIGJlZm9yZSB0aGUKY3VycmVudCBmcmFtZSB3YXMgYWRkZWQgaXMgY3J1Y2lhbCB0byBjb3Jy
ZWN0bHkgaW50ZXJwcmV0IHRoZSBkZWNvZGluZwp0aW1lOgoqIExlc3MgdGhhbiBNQVhfREVDT0RF
RF9GUkFNRVMgbWVhbnMgbm90aGluZyBibG9ja2VkIHRoZSBkZWNvZGluZyBvZgogIHRoYXQgZnJh
bWUuCiogTW9yZSB0aGFuIE1BWF9ERUNPREVEX0ZSQU1FUyBtZWFucyBkZWNvZGluZyB3YXMgZGVs
YXllZCBieSBvbmUgb3IgbW9yZQogIGZyYW1lIGludGVydmFscy4KClNpZ25lZC1vZmYtYnk6IEZy
YW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+Ci0tLQogc3JjL2NoYW5uZWwt
ZGlzcGxheS1nc3QuYyB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMg
Yi9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jCmluZGV4IGZjMzM4ZGZmLi5iOGYwYzJlZSAxMDA2
NDQKLS0tIGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYworKysgYi9zcmMvY2hhbm5lbC1kaXNw
bGF5LWdzdC5jCkBAIC05MCw2ICs5MCw3IEBAIHN0cnVjdCBTcGljZUdzdEZyYW1lIHsKICAgICBH
c3RCdWZmZXIgKmVuY29kZWRfYnVmZmVyOwogICAgIFNwaWNlRnJhbWUgKmVuY29kZWRfZnJhbWU7
CiAgICAgR3N0U2FtcGxlICpkZWNvZGVkX3NhbXBsZTsKKyAgICBndWludCByYW5rOwogfTsKIAog
c3RhdGljIFNwaWNlR3N0RnJhbWUgKmNyZWF0ZV9nc3RfZnJhbWUoR3N0QnVmZmVyICpidWZmZXIs
IFNwaWNlRnJhbWUgKmZyYW1lKQpAQCAtNDQyLDkgKzQ0Myw5IEBAIHNpbmtfZXZlbnRfcHJvYmUo
R3N0UGFkICpwYWQsIEdzdFBhZFByb2JlSW5mbyAqaW5mbywgZ3BvaW50ZXIgZGF0YSkKICAgICAg
ICAgICAgIGludDY0X3QgZHVyYXRpb24gPSBnX2dldF9tb25vdG9uaWNfdGltZSgpIC0gZnJhbWUt
PmNyZWF0aW9uX3RpbWU7CiAgICAgICAgICAgICByZWNvcmQoZnJhbWVzX3N0YXRzLAogICAgICAg
ICAgICAgICAgICAgICJmcmFtZSBtbV90aW1lICV1IHNpemUgJXUgY3JlYXRpb24gdGltZSAlIiBQ
UklkNjQKLSAgICAgICAgICAgICAgICAgICAiIGRlY29kZWQgdGltZSAlIiBQUklkNjQgIiBxdWV1
ZSAldSIsCisgICAgICAgICAgICAgICAgICAgIiBkZWNvZGVkIHRpbWUgJSIgUFJJZDY0ICIgcmFu
ayAldSBxdWV1ZSAldSIsCiAgICAgICAgICAgICAgICAgICAgZnJhbWUtPm1tX3RpbWUsIGZyYW1l
LT5zaXplLCBmcmFtZS0+Y3JlYXRpb25fdGltZSwgZHVyYXRpb24sCi0gICAgICAgICAgICAgICAg
ICAgZ19xdWV1ZV9nZXRfbGVuZ3RoKGRlY29kZXItPmRlY29kaW5nX3F1ZXVlKSk7CisgICAgICAg
ICAgICAgICAgICAgZ3N0ZnJhbWUtPnJhbmssIGdfcXVldWVfZ2V0X2xlbmd0aChkZWNvZGVyLT5k
ZWNvZGluZ19xdWV1ZSkpOwogCiAgICAgICAgICAgICBpZiAoIWRlY29kZXItPmFwcHNpbmspIHsK
ICAgICAgICAgICAgICAgICAvKiBUaGUgc2luayB3aWxsIGRpc3BsYXkgdGhlIGZyYW1lIGRpcmVj
dGx5IHNvIHRoaXMKQEAgLTcyOSw2ICs3MzAsNyBAQCBzdGF0aWMgZ2Jvb2xlYW4gc3BpY2VfZ3N0
X2RlY29kZXJfcXVldWVfZnJhbWUoVmlkZW9EZWNvZGVyICp2aWRlb19kZWNvZGVyLAogCiAgICAg
U3BpY2VHc3RGcmFtZSAqZ3N0X2ZyYW1lID0gY3JlYXRlX2dzdF9mcmFtZShidWZmZXIsIGZyYW1l
KTsKICAgICBnX211dGV4X2xvY2soJmRlY29kZXItPnF1ZXVlc19tdXRleCk7CisgICAgZ3N0X2Zy
YW1lLT5yYW5rID0gZ19xdWV1ZV9nZXRfbGVuZ3RoKGRlY29kZXItPmRlY29kaW5nX3F1ZXVlKTsK
ICAgICBnX3F1ZXVlX3B1c2hfdGFpbChkZWNvZGVyLT5kZWNvZGluZ19xdWV1ZSwgZ3N0X2ZyYW1l
KTsKICAgICBnX211dGV4X3VubG9jaygmZGVjb2Rlci0+cXVldWVzX211dGV4KTsKIAotLSAKMi4y
MC4xCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
