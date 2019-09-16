Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB286B40E8
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FCA96EA3E;
	Mon, 16 Sep 2019 19:13:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55BC96EA3B
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:48 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRX-0003Nb-K9
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:47 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:32 -0500
Message-Id: <20190916191333.27139-10-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916191333.27139-1-jwhite@codeweavers.com>
References: <20190916191333.27139-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1o0U2VjnaUSgwzcdf2B09yyZ/NiQR2WAWYgf8z1+U9Q=; b=kPjBgRX4sCqxiqyYWc5EILtvcW
 kyy0INkFeAnR8FOYL1eX2kItLjochBx9brRWk6ZzF79SEQnMk5QWCVS2Oe5BmnkxznSRzqCB8QYJy
 dIstHjRel4HNrLbj5YbttuFzuD8pACMxJrQwVqZkRlEEZsMRyGupVWKNtSsfIHBo1dog=;
Subject: [Spice-devel] [PATCH x11spice 09/10] Explicitly call ConfigNotify()
 on the root window in crtc_resize().
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

RnJvbTogSGVucmkgVmVyYmVldCA8aHZlcmJlZXRAY29kZXdlYXZlcnMuY29tPgoKU28gdGhhdCBh
bnkgR0wgY2xpZW50cyBvbiB0aGUgcm9vdCB3aW5kb3cgKGUuZy4gY29tcG9zaXRvcnMpIGtub3cg
dGhleQpuZWVkIHRvIHJlc2l6ZSB0aGVpciBidWZmZXJzLgoKSXMgdGhpcyBhIGhhY2s/IEl0IHNl
ZW1zIGxpa2UgaXQ7IG90aGVyIGRyaXZlcnMgZG9uJ3QgYXBwZWFyIHRvIG5lZWQgdG8KZXhwbGlj
aXRseSBjYWxsIHRoaXMuIFdpdGhvdXQgaXQgdGhvdWdoLCBjb21wb3NpdG9ycyBkb24ndCBoYW5k
bGUgc2NyZWVuCnJlc2l6ZXMgd2VsbC4KClNpZ25lZC1vZmYtYnk6IEplcmVteSBXaGl0ZSA8ando
aXRlQGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzcGljZS12aWRlby1kdW1teS9zcmMvZGlzcGxheS5j
IHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Nw
aWNlLXZpZGVvLWR1bW15L3NyYy9kaXNwbGF5LmMgYi9zcGljZS12aWRlby1kdW1teS9zcmMvZGlz
cGxheS5jCmluZGV4IGI4Mzg2OWJiLi43ODZlNjkxNiAxMDA2NDQKLS0tIGEvc3BpY2UtdmlkZW8t
ZHVtbXkvc3JjL2Rpc3BsYXkuYworKysgYi9zcGljZS12aWRlby1kdW1teS9zcmMvZGlzcGxheS5j
CkBAIC00Myw2ICs0Myw4IEBAIGNydGNfcmVzaXplKFNjcm5JbmZvUmVjICogc2NybiwgaW50IHdp
ZHRoLCBpbnQgaGVpZ2h0KQogICAgIHNjcm4tPnZpcnR1YWxYID0gd2lkdGg7CiAgICAgc2Nybi0+
dmlydHVhbFkgPSBoZWlnaHQ7CiAKKyAgICBzY3JlZW4tPkNvbmZpZ05vdGlmeShzY3JlZW4tPnJv
b3QsIDAsIDAsIHdpZHRoLCBoZWlnaHQsIHNjcmVlbi0+cm9vdC0+Ym9yZGVyV2lkdGgsIE5vbmUp
OworCiAgICAgcmV0dXJuIFRSVUU7CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
