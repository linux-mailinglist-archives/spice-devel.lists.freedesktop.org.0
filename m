Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E57082590
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 21:27:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A826E157;
	Mon,  5 Aug 2019 19:27:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1DEA6E14A
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 19:27:12 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1huidl-0006Rw-31
 for spice-devel@lists.freedesktop.org; Mon, 05 Aug 2019 14:27:29 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 14:27:04 -0500
Message-Id: <20190805192707.18261-2-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190805192707.18261-1-jwhite@codeweavers.com>
References: <20190805192707.18261-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6xaV5lC3J0iwP4W2g8eSKF+/vC4ygCocEpj2j65JE/0=; b=UWCRrft+3U0BhSdZQsJFjD2/7n
 +amWGlEpNREI6kVbxwOHRpkJ/NKDwpXKyj7dr/is1w9wWS48bx27XUOPa+Jl7BdRWF9pvvXRDl2Bo
 Az/JAJ72wPoqCRB/e9TaSxz8fPwv1Wx2PSqIvYlscR5WhVfUB2CUC/kQSSlilsodY5MM=;
Subject: [Spice-devel] [PATCH spice-html5 1/4] Use a named constant from
 atKeynames.js for the PrintScreen/SysRq key.
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

Q29ycmVjdCBhIHR5cG8gZnJvbSB0aGUgdXBzdHJlYW0gYXRLZXluYW1lcy5qcyBhdCB0aGUgc2Ft
ZSB0aW1lLgoKU2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMu
Y29tPgotLS0KIHNyYy9hdEtleW5hbWVzLmpzIHwgMiArLQogc3JjL3V0aWxzLmpzICAgICAgfCAy
ICstCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9zcmMvYXRLZXluYW1lcy5qcyBiL3NyYy9hdEtleW5hbWVzLmpzCmluZGV4IDEx
MGU5ZTkuLjc2N2U3OGIgMTAwNjQ0Ci0tLSBhL3NyYy9hdEtleW5hbWVzLmpzCisrKyBiL3NyYy9h
dEtleW5hbWVzLmpzCkBAIC0xNzQsNyArMTc0LDcgQEAgdmFyIEtleU5hbWVzID0gewogICBLRVlf
S1BfMyAgICAgICAgOi8qIDMgICAgICAgICAgIFBnRG93biAgICAweDUxICAqLyAgIDgxLAogICBL
RVlfS1BfMCAgICAgICAgOi8qIDAgICAgICAgICAgIEluc2VydCAgICAweDUyICAqLyAgIDgyLAog
ICBLRVlfS1BfRGVjaW1hbCAgOi8qIC4gKERlY2ltYWwpIERlbGV0ZSAgICAweDUzICAqLyAgIDgz
LAotICBLRVlfU3lzUmVxZXN0ICAgOi8qIFN5c1JlcWVzdCAgICAgICAgICAgICAweDU0ICAqLyAg
IDg0LAorICBLRVlfU3lzUmVxdWVzdCAgOi8qIFN5c1JlcXVlc3QgICAgICAgICAgICAweDU0ICAq
LyAgIDg0LAogICAgICAgICAgICAgICAgICAgIC8qIE5PVFVTRUQgICAgICAgICAgICAgICAweDU1
ICAqLwogICBLRVlfTGVzcyAgICAgICAgOi8qIDwgKExlc3MpICAgPihHcmVhdGVyKSAweDU2ICAq
LyAgIDg2LAogICBLRVlfRjExICAgICAgICAgOi8qIEYxMSAgICAgICAgICAgICAgICAgICAweDU3
ICAqLyAgIDg3LApkaWZmIC0tZ2l0IGEvc3JjL3V0aWxzLmpzIGIvc3JjL3V0aWxzLmpzCmluZGV4
IDE4NzRlOTcuLmYxMmVkZjkgMTAwNjQ0Ci0tLSBhL3NyYy91dGlscy5qcworKysgYi9zcmMvdXRp
bHMuanMKQEAgLTE1Nyw2ICsxNTcsNyBAQCBjb21tb25fc2Nhbm1hcFsxNl0gICAgICAgICAgICAg
ICAgID0gS2V5TmFtZXMuS0VZX1NoaWZ0TDsKIGNvbW1vbl9zY2FubWFwWzE3XSAgICAgICAgICAg
ICAgICAgPSBLZXlOYW1lcy5LRVlfTEN0cmw7CiBjb21tb25fc2Nhbm1hcFsxOF0gICAgICAgICAg
ICAgICAgID0gS2V5TmFtZXMuS0VZX0FsdDsKIGNvbW1vbl9zY2FubWFwWzIwXSAgICAgICAgICAg
ICAgICAgPSBLZXlOYW1lcy5LRVlfQ2Fwc0xvY2s7Citjb21tb25fc2Nhbm1hcFs0NF0gICAgICAg
ICAgICAgICAgID0gS2V5TmFtZXMuS0VZX1N5c1JlcWVzdDsKIGNvbW1vbl9zY2FubWFwWzE0NF0g
ICAgICAgICAgICAgICAgPSBLZXlOYW1lcy5LRVlfTnVtTG9jazsKIGNvbW1vbl9zY2FubWFwWzEx
Ml0gICAgICAgICAgICAgICAgPSBLZXlOYW1lcy5LRVlfRjE7CiBjb21tb25fc2Nhbm1hcFsxMTNd
ICAgICAgICAgICAgICAgID0gS2V5TmFtZXMuS0VZX0YyOwpAQCAtMTg2LDcgKzE4Nyw2IEBAIGNv
bW1vbl9zY2FubWFwWzQwXSAgICAgICAgICAgICAgICAgPSAweEUwNTA7IC8vIERvd24KIGNvbW1v
bl9zY2FubWFwWzM0XSAgICAgICAgICAgICAgICAgPSAweEUwNTE7IC8vIFBnRG93bgogY29tbW9u
X3NjYW5tYXBbNDVdICAgICAgICAgICAgICAgICA9IDB4RTA1MjsgLy8gSW5zZXJ0CiBjb21tb25f
c2Nhbm1hcFs0Nl0gICAgICAgICAgICAgICAgID0gMHhFMDUzOyAvLyBEZWxldGUKLWNvbW1vbl9z
Y2FubWFwWzQ0XSAgICAgICAgICAgICAgICAgPSAweDJBMzc7IC8vIFByaW50CiAKIC8qIFRoZXNl
IGFyZSBub3QgY29tbW9uIGJldHdlZW4gQUxMIGJyb3dzZXJzIGJ1dCBhcmUgYmV0d2VlbiBGaXJl
Zm94IGFuZCBET00zICovCiBjb21tb25fc2Nhbm1hcFsnMScuY2hhckNvZGVBdCgwKV0gID0gS2V5
TmFtZXMuS0VZXzE7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
