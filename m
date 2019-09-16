Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EE2B40E9
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D246EA40;
	Mon, 16 Sep 2019 19:13:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A866EA3E
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:46 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRU-0003Nb-Pb
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:44 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:23 -0500
Message-Id: <20190916191333.27139-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9PR9RKGyBKpgtHXHa28vUeaioTTdRwtSeqdFJyIKWzM=; b=x8Y7ZihKALYVwoxivaS3TnGRBm
 TT1T6tacYG74NBSAtRw0cqzzI+9dAAAl6ANOT6Q4rS0AnvEmkjra/jBBGMnzFprX/tRAjXo+WjJ2v
 M/uRspXkZijwCLVX/WgS+rHJD5VXxotAWJZGIShdGnB+e898LICwsBr5Xjl+WLG4d/nE=;
Subject: [Spice-devel] [PATCH x11spice 00/10] Provide a simulated set of
 outputs and crtcs
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

VGhlIHNwaWNlLXZpZGVvLWR1bW15IGRyaXZlciBoYXMgdHdvIGZsYXdzLiAgRmlyc3QsIGJ5IG5v
dCBwcm92aWRpbmcKYSBjcnRjLCB3ZSB0YWtlIHRoZSBQcmVzZW50IGV4dGVuc2lvbiBpbnRvIGEg
Y29kZSBwYXRoIHdoZXJlIGl0CnNpbXVsYXRlcyBhIHJlZnJlc2ggcmF0ZSwgYW5kIHRoZSBzaW11
bGF0ZWQgcmF0ZSBpcyAxSHouCgpBcHBsaWNhdGlvbnMgdGhhdCBxdWVyeSBhbmQgdXNlIHRoYXQg
cmF0ZSB0aGVuIHBlcmZvcm0gYmFkbHkuCllvdSBjYW4gc2VlIHRoYXQgbW9zdCBlYXNpbHkgd2l0
aCBnbHhnZWFycy4KClNlY29uZCwgeW91IGNhbm5vdCBkeW5hbWljYWxseSByZXNpemUgb3VyIGR1
bW15IGRyaXZlci4KCkJ5IGFkZGluZyBhIHNpbXVsYXRlZCBzZXQgb2Ygb3V0cHV0cyBhbmQgY3J0
Y3MsIHdlIGdpdmUgdGhlIGR1bW15CmRyaXZlciB0aGUgYWJpbGl0eSB0byBjb250cm9sIHRoZSBy
ZWZyZXNoIHJhdGUgYW5kIHRvIGFsbG93CmR5bmFtaWMgcmVzaXppbmcuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
