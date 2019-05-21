Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CE224518
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 02:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C17AB89022;
	Tue, 21 May 2019 00:33:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1063E89022
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 00:33:43 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hSsja-0007Ob-GQ
 for spice-devel@lists.freedesktop.org; Mon, 20 May 2019 19:34:27 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hSsiq-00020V-DJ
 for spice-devel@lists.freedesktop.org; Tue, 21 May 2019 02:33:40 +0200
Date: Tue, 21 May 2019 02:33:40 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hSsiq-00020V-DJ@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Francois Gouget <fgouget@codeweavers.com> ---
 server/gstreamer-encoder.c | 20 ++++++++++ 1 file changed, 10 insertions(+),
 10 deletions(-) diff --git a/server/gstreamer-encoder.c
 b/server/gstreamer-encoder.c
 index 110d12981..cae22c100 100644 --- a/server/gstreamer-encoder.c +++
 b/server/gstreamer-encoder.c
 @@ -333,13 +333,13 @@ static in [...] 
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
 bh=YRZyh1nL4hzdysNlQj9WphZ0oFtO/N4hpbxfOgJX+48=; b=DnxVgh/AjIdlczDZHg47oxuiaU
 3o23vjqgWJlZgT4mQciCdTkZS1YvNCUk2jQVCz5JJzl+6vSiYPvxZhxIoLkqASKt4+N3KL2TsIEih
 BP3wj3DaxNxHkas+gW9e8Q+ZNFHLbA9DCFq8+s78BR/lGWBHs28GlP5QqqbZTyHyglGc=;
Subject: [Spice-devel] [spice] gstreamer-encoder: Constify some
 SpiceGstEncoder* parameters
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
LS0tCiBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDIwICsrKysrKysrKystLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVu
Y29kZXIuYwppbmRleCAxMTBkMTI5ODEuLmNhZTIyYzEwMCAxMDA2NDQKLS0tIGEvc2VydmVyL2dz
dHJlYW1lci1lbmNvZGVyLmMKKysrIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKQEAgLTMz
MywxMyArMzMzLDEzIEBAIHN0YXRpYyBpbmxpbmUgZG91YmxlIGdldF9tYnBzKHVpbnQ2NF90IGJp
dF9yYXRlKQogLyogUmV0dXJucyB0aGUgc291cmNlIGZyYW1lIHJhdGUgd2hpY2ggbWF5IGNoYW5n
ZSBhdCBhbnkgdGltZSBzbyBkb24ndCBzdG9yZQogICogdGhlIHJlc3VsdC4KICAqLwotc3RhdGlj
IHVpbnQzMl90IGdldF9zb3VyY2VfZnBzKFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlcikKK3N0YXRp
YyB1aW50MzJfdCBnZXRfc291cmNlX2Zwcyhjb25zdCBTcGljZUdzdEVuY29kZXIgKmVuY29kZXIp
CiB7CiAgICAgcmV0dXJuIGVuY29kZXItPmNicy5nZXRfc291cmNlX2ZwcyA/CiAgICAgICAgIGVu
Y29kZXItPmNicy5nZXRfc291cmNlX2ZwcyhlbmNvZGVyLT5jYnMub3BhcXVlKSA6IFNQSUNFX0dT
VF9ERUZBVUxUX0ZQUzsKIH0KIAotc3RhdGljIHVpbnQzMl90IGdldF9uZXR3b3JrX2xhdGVuY3ko
U3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQorc3RhdGljIHVpbnQzMl90IGdldF9uZXR3b3JrX2xh
dGVuY3koY29uc3QgU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQogewogICAgIC8qIEFzc3VtZSB0
aGF0IHRoZSBuZXR3b3JrIGxhdGVuY3kgaXMgc3ltbWV0cmljICovCiAgICAgcmV0dXJuIGVuY29k
ZXItPmNicy5nZXRfcm91bmR0cmlwX21zID8KQEAgLTM3MCw3ICszNzAsNyBAQCBzdGF0aWMgdm9p
ZCBmcmVlX3BpcGVsaW5lKFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlcikKIAogLyogLS0tLS0tLS0t
LSBFbmNvZGVkIGZyYW1lIHN0YXRpc3RpY3MgLS0tLS0tLS0tLSAqLwogCi1zdGF0aWMgaW5saW5l
IHVpbnQzMl90IGdldF9sYXN0X2ZyYW1lX21tX3RpbWUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVy
KQorc3RhdGljIGlubGluZSB1aW50MzJfdCBnZXRfbGFzdF9mcmFtZV9tbV90aW1lKGNvbnN0IFNw
aWNlR3N0RW5jb2RlciAqZW5jb2RlcikKIHsKICAgICByZXR1cm4gZW5jb2Rlci0+aGlzdG9yeVtl
bmNvZGVyLT5oaXN0b3J5X2xhc3RdLm1tX3RpbWU7CiB9CkBAIC0zNzgsNyArMzc4LDcgQEAgc3Rh
dGljIGlubGluZSB1aW50MzJfdCBnZXRfbGFzdF9mcmFtZV9tbV90aW1lKFNwaWNlR3N0RW5jb2Rl
ciAqZW5jb2RlcikKIC8qIFJldHVybnMgdGhlIGN1cnJlbnQgYml0IHJhdGUgYmFzZWQgb24gdGhl
IGxhc3QKICAqIFNQSUNFX0dTVF9GUkFNRV9TVEFUSVNUSUNTX0NPVU5UIGZyYW1lcy4KICAqLwot
c3RhdGljIHVpbnQ2NF90IGdldF9lZmZlY3RpdmVfYml0X3JhdGUoU3BpY2VHc3RFbmNvZGVyICpl
bmNvZGVyKQorc3RhdGljIHVpbnQ2NF90IGdldF9lZmZlY3RpdmVfYml0X3JhdGUoY29uc3QgU3Bp
Y2VHc3RFbmNvZGVyICplbmNvZGVyKQogewogICAgIHVpbnQzMl90IG5leHRfbW1fdGltZSA9IGVu
Y29kZXItPm5leHRfZnJhbWVfbW1fdGltZSA/CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ZW5jb2Rlci0+bmV4dF9mcmFtZV9tbV90aW1lIDoKQEAgLTM4OCw3ICszODgsNyBAQCBzdGF0aWMg
dWludDY0X3QgZ2V0X2VmZmVjdGl2ZV9iaXRfcmF0ZShTcGljZUdzdEVuY29kZXIgKmVuY29kZXIp
CiAgICAgcmV0dXJuIGVsYXBzZWQgPyBlbmNvZGVyLT5zdGF0X3NpemVfc3VtICogOCAqIE1TRUNf
UEVSX1NFQyAvIGVsYXBzZWQgOiAwOwogfQogCi1zdGF0aWMgdWludDY0X3QgZ2V0X2F2ZXJhZ2Vf
ZW5jb2RpbmdfdGltZShTcGljZUdzdEVuY29kZXIgKmVuY29kZXIpCitzdGF0aWMgdWludDY0X3Qg
Z2V0X2F2ZXJhZ2VfZW5jb2RpbmdfdGltZShjb25zdCBTcGljZUdzdEVuY29kZXIgKmVuY29kZXIp
CiB7CiAgICAgdWludDMyX3QgY291bnQgPSBlbmNvZGVyLT5oaXN0b3J5X2xhc3QgKwogICAgICAg
ICAoZW5jb2Rlci0+aGlzdG9yeV9sYXN0IDwgZW5jb2Rlci0+c3RhdF9maXJzdCA/IFNQSUNFX0dT
VF9ISVNUT1JZX1NJWkUgOiAwKSAtCkBAIC0zOTYsNyArMzk2LDcgQEAgc3RhdGljIHVpbnQ2NF90
IGdldF9hdmVyYWdlX2VuY29kaW5nX3RpbWUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQogICAg
IHJldHVybiBlbmNvZGVyLT5zdGF0X2R1cmF0aW9uX3N1bSAvIGNvdW50OwogfQogCi1zdGF0aWMg
dWludDMyX3QgZ2V0X2F2ZXJhZ2VfZnJhbWVfc2l6ZShTcGljZUdzdEVuY29kZXIgKmVuY29kZXIp
CitzdGF0aWMgdWludDMyX3QgZ2V0X2F2ZXJhZ2VfZnJhbWVfc2l6ZShjb25zdCBTcGljZUdzdEVu
Y29kZXIgKmVuY29kZXIpCiB7CiAgICAgdWludDMyX3QgY291bnQgPSBlbmNvZGVyLT5oaXN0b3J5
X2xhc3QgKwogICAgICAgICAoZW5jb2Rlci0+aGlzdG9yeV9sYXN0IDwgZW5jb2Rlci0+c3RhdF9m
aXJzdCA/IFNQSUNFX0dTVF9ISVNUT1JZX1NJWkUgOiAwKSAtCkBAIC00MzAsOCArNDMwLDggQEAg
c3RhdGljIHVpbnQzMl90IGdldF9tYXhpbXVtX2ZyYW1lX3NpemUoU3BpY2VHc3RFbmNvZGVyICpl
bmNvZGVyKQogLyogUmV0dXJucyB0aGUgYml0IHJhdGUgb2YgdGhlIHNwZWNpZmllZCBwZXJpb2Qu
IGZyb20gYW5kIHRvIG11c3QgYmUgdGhlCiAgKiBtbSB0aW1lIG9mIHRoZSBmaXJzdCBhbmQgbGFz
dCBmcmFtZSB0byBjb25zaWRlci4KICAqLwotc3RhdGljIHVpbnQ2NF90IGdldF9wZXJpb2RfYml0
X3JhdGUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyLCB1aW50MzJfdCBmcm9tLAotICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QgdG8pCitzdGF0aWMgdWludDY0X3Qg
Z2V0X3BlcmlvZF9iaXRfcmF0ZShjb25zdCBTcGljZUdzdEVuY29kZXIgKmVuY29kZXIsCisgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCBmcm9tLCB1aW50MzJfdCB0
bykKIHsKICAgICB1aW50MzJfdCBzdW0gPSAwOwogICAgIHVpbnQzMl90IGxhc3RfbW1fdGltZSA9
IDA7CkBAIC01OTQsNyArNTk0LDcgQEAgc3RhdGljIHZvaWQgdXBkYXRlX25leHRfZnJhbWVfbW1f
dGltZShTcGljZUdzdEVuY29kZXIgKmVuY29kZXIpCiAgKiBUaGlzIGlzIGJhc2VkIG9uIGEgMTB4
IGNvbXByZXNzaW9uIHJhdGlvIHdoaWNoIHNob3VsZCBiZSBtb3JlIHRoYW4gZW5vdWdoCiAgKiBm
b3IgZXZlbiBNSlBFRyB0byBwcm92aWRlIGdvb2QgcXVhbGl0eS4KICAqLwotc3RhdGljIHVpbnQ2
NF90IGdldF9iaXRfcmF0ZV9jYXAoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQorc3RhdGljIHVp
bnQ2NF90IGdldF9iaXRfcmF0ZV9jYXAoY29uc3QgU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQog
ewogICAgIHVpbnQzMl90IHJhd19mcmFtZV9iaXRzID0gZW5jb2Rlci0+d2lkdGggKiBlbmNvZGVy
LT5oZWlnaHQgKiBlbmNvZGVyLT5mb3JtYXQtPmJwcDsKICAgICByZXR1cm4gcmF3X2ZyYW1lX2Jp
dHMgKiBnZXRfc291cmNlX2ZwcyhlbmNvZGVyKSAvIDEwOwpAQCAtODgyLDcgKzg4Miw3IEBAIHN0
YXRpYyBHc3RGbG93UmV0dXJuIG5ld19zYW1wbGUoR3N0QXBwU2luayAqZ3N0YXBwc2luaywgZ3Bv
aW50ZXIgdmlkZW9fZW5jb2RlcikKICAgICByZXR1cm4gR1NUX0ZMT1dfT0s7CiB9CiAKLXN0YXRp
YyBjb25zdCBnY2hhciogZ2V0X2dzdF9jb2RlY19uYW1lKFNwaWNlR3N0RW5jb2RlciAqZW5jb2Rl
cikKK3N0YXRpYyBjb25zdCBnY2hhciogZ2V0X2dzdF9jb2RlY19uYW1lKGNvbnN0IFNwaWNlR3N0
RW5jb2RlciAqZW5jb2RlcikKIHsKICAgICBzd2l0Y2ggKGVuY29kZXItPmJhc2UuY29kZWNfdHlw
ZSkKICAgICB7Ci0tIAoyLjIwLjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
