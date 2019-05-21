Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC7024514
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 02:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133A389269;
	Tue, 21 May 2019 00:31:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C1089269
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 00:31:06 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hSsh3-0007Ml-Ib
 for spice-devel@lists.freedesktop.org; Mon, 20 May 2019 19:31:50 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hSsgJ-0001wA-Ec
 for spice-devel@lists.freedesktop.org; Tue, 21 May 2019 02:31:03 +0200
Date: Tue, 21 May 2019 02:31:03 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hSsgJ-0001wA-Ec@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Francois Gouget <fgouget@codeweavers.com> ---
 server/gstreamer-encoder.c | 7 +++++++ 1 file changed, 7 insertions(+) diff
 --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c index
 bccbe0660..110d12981
 100644 --- a/server/gstreamer-encoder.c +++ b/server/gstreamer-encoder.c
 @@ -404,6 +404,13 @@ static uin [...] 
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
 bh=rqhg5/MxkVb3tdhZA1+LfDYJPNV0GquTmnVx5y3/Gn4=; b=vcLtoH8gnR+H27lYWS/GxtDe02
 uLGdHruIgM4yejIMDL7vo76POMi3UoZOtCAa/n0jceNcbIk8Wb97tKaRsdOm35E5GndOENhoMO2x9
 3e5+KrrPgeonzTgkvt71VHFk9fshKzfUkha/02vAm8D7KN/g85GBTHYRM0vT/8+aN5TM=;
Subject: [Spice-devel] [spice] gstreamer-encoder: Document
 get_maximum_frame_size()
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
LS0tCiBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rl
ci5jIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKaW5kZXggYmNjYmUwNjYwLi4xMTBkMTI5
ODEgMTAwNjQ0Ci0tLSBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCisrKyBiL3NlcnZlci9n
c3RyZWFtZXItZW5jb2Rlci5jCkBAIC00MDQsNiArNDA0LDEzIEBAIHN0YXRpYyB1aW50MzJfdCBn
ZXRfYXZlcmFnZV9mcmFtZV9zaXplKFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlcikKICAgICByZXR1
cm4gZW5jb2Rlci0+c3RhdF9zaXplX3N1bSAvIGNvdW50OwogfQogCisvKiBMb29rIGZvciB0aGUg
bGFyZ2VzdCBmcmFtZSBhbmQgc3RvcmUgaXQgaW4gc3RhdF9zaXplX21heCB0byByZWR1Y2UgaG93
CisgKiBvZnRlbiB3ZSBoYXZlIHRvIHNjYW4gdGhlIGhpc3RvcnkgZm9yIHRoZSBsYXJnZXN0IGZy
YW1lLgorICogVGhlbiBhbGwgd2UgbmVlZCB0byBrZWVwIHRoaW5ncyBjb25zaXN0ZW50IGlzIHRv
OgorICogLSBVcGRhdGUgc3RhdF9zaXplX21heCB3aGVuIGFkZGluZyBhIGxhcmdlciBmcmFtZSB0
byB0aGUgaGlzdG9yeS4KKyAqIC0gUmVzZXQgc3RhdF9zaXplX21heCB0byB6ZXJvIHdoZW4gdGhl
IGxhcmdlc3QgZnJhbWUgZmFsbHMgb3V0IG9mCisgKiAgIHRoZSBoaXN0b3J5LgorICovCiBzdGF0
aWMgdWludDMyX3QgZ2V0X21heGltdW1fZnJhbWVfc2l6ZShTcGljZUdzdEVuY29kZXIgKmVuY29k
ZXIpCiB7CiAgICAgaWYgKGVuY29kZXItPnN0YXRfc2l6ZV9tYXggPT0gMCkgewotLSAKMi4yMC4x
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
