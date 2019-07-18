Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 764C86CFB7
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 16:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152416E3D8;
	Thu, 18 Jul 2019 14:32:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E5E66E3D8
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:32:03 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1ho7SM-0007R5-8s
 for spice-devel@lists.freedesktop.org; Thu, 18 Jul 2019 09:32:26 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 09:31:59 -0500
Message-Id: <20190718143200.16380-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.11.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ktka3M66p7eahQjLsPs7b9lBYmvJPckpkiDcrwNJwf4=; b=bZCVqcjtt+t3zdfweU6NM9yOWi
 5qbgrea3G7LdYPhf0zKizZnajsw0qqVdfHOzgL9yQAVi7+KhSFMwbg+WRkbHjzmGzxyrKCRaHKnE4
 ZIYrGGdskb6cdwdSH7FExGGamy3pTuaKdja74+Qhghj9L2n3cgenNaC8dYMhH8hgiSmQ=;
Subject: [Spice-devel] [PATCH x11spice 1/2] Bug fix: --config=<filename> did
 not work.
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

U2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgotLS0K
IHNyYy9vcHRpb25zLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9v
cHRpb25zLmMgYi9zcmMvb3B0aW9ucy5jCmluZGV4IGI3ZjQ4N2M1Li4wZDMxMzhkMCAxMDA2NDQK
LS0tIGEvc3JjL29wdGlvbnMuYworKysgYi9zcmMvb3B0aW9ucy5jCkBAIC0yMTMsMTQgKzIxMywz
NCBAQCB2b2lkIG9wdGlvbnNfaGFuZGxlX3NzbF9maWxlX29wdGlvbnMob3B0aW9uc190ICpvcHRp
b25zLAogICAgIG9wdGlvbnMtPnNzbC5jaXBoZXJzdWl0ZSA9IHN0cmluZ19vcHRpb24odXNlcmtl
eSwgc3lzdGVta2V5LCAic3NsIiwgImNpcGhlcnN1aXRlIik7CiB9CiAKKy8qIEluIGdlbmVyYWws
IHdlIHdhbnQgdG8gcGFyc2UgdGhlIGNvbmZpZyBmaWxlIG9wdGlvbnMgYmVmb3JlIHRoZSBjb21t
YW5kIGxpbmUKKyoqICBhcmd1bWVudHMuICBIb3dldmVyLCB0aGUgY29tbWFuZCBsaW5lIGFyZ3Vt
ZW50IHRvIHNwZWNpZnkgYSBjb25maWcgZmlsZSBpcworKiogIHRoZSBleGNlcHRpb24uICBXZSBt
YW51YWxseSBwYXJzZSB0aGlzIG91dCBub3csIHNvIHdlIGNhbiBzaW1wbGlmeSB0aGUKKyoqICBm
bG93IG9mIGNvbnRyb2wgbGF0ZXIuICovCiB2b2lkIG9wdGlvbnNfaGFuZGxlX3VzZXJfY29uZmln
KGludCBhcmdjLCBjaGFyICphcmd2W10sIG9wdGlvbnNfdCAqb3B0aW9ucykKIHsKICAgICBpbnQg
aTsKLSAgICBmb3IgKGkgPSAxOyBpIDwgYXJnYyAtIDE7IGkrKykKLSAgICAgICAgaWYgKHN0cmNt
cChhcmd2W2ldLCAiLS1jb25maWciKSA9PSAwIHx8IHN0cmNtcChhcmd2W2ldLCAiLWNvbmZpZyIp
ID09IDApIHsKKyAgICBjaGFyICpwLCAqcTsKKworICAgIC8qIGdldG9wdCBsb25nIGlzIGNvbXBs
ZXg7IGl0IHN1cHBvcnRzIFstXS1jb25maWdbPV1maWxlbmFtZSAqLworICAgIGZvciAoaSA9IDE7
IGkgPCBhcmdjOyBpKyspIHsKKyAgICAgICAgcCA9IHN0cnN0cihhcmd2W2ldLCAiLS1jb25maWci
KTsKKyAgICAgICAgaWYgKHAgIT0gYXJndltpXSkgeworICAgICAgICAgICAgcCA9IHN0cnN0cihh
cmd2W2ldLCAiLWNvbmZpZyIpOworICAgICAgICB9CisgICAgICAgIGlmIChwICE9IGFyZ3ZbaV0p
IHsKKyAgICAgICAgICAgIGNvbnRpbnVlOworICAgICAgICB9CisgICAgICAgIHEgPSBzdHJzdHIo
cCwgIj0iKTsKKyAgICAgICAgaWYgKHEpIHsKKyAgICAgICAgICAgIG9wdGlvbnMtPnVzZXJfY29u
ZmlnX2ZpbGUgPSBzdHJkdXAocSArIDEpOworICAgICAgICAgICAgY29udGludWU7CisgICAgICAg
IH0KKyAgICAgICAgaWYgKGkgPCBhcmdjIC0gMSkgewogICAgICAgICAgICAgb3B0aW9ucy0+dXNl
cl9jb25maWdfZmlsZSA9IHN0cmR1cChhcmd2W2kgKyAxXSk7CiAgICAgICAgICAgICBpKys7CiAg
ICAgICAgIH0KKyAgICB9CiB9CiAKIGludCBvcHRpb25zX3BhcnNlX2FyZ3VtZW50cyhpbnQgYXJn
YywgY2hhciAqYXJndltdLCBvcHRpb25zX3QgKm9wdGlvbnMpCi0tIAoyLjExLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
